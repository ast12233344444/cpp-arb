# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(ixwebsocket_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(ixwebsocket_FRAMEWORKS_FOUND_RELWITHDEBINFO "${ixwebsocket_FRAMEWORKS_RELWITHDEBINFO}" "${ixwebsocket_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(ixwebsocket_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET ixwebsocket_DEPS_TARGET)
    add_library(ixwebsocket_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET ixwebsocket_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:MbedTLS::mbedtls;ZLIB::ZLIB>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### ixwebsocket_DEPS_TARGET to all of them
conan_package_library_targets("${ixwebsocket_LIBS_RELWITHDEBINFO}"    # libraries
                              "${ixwebsocket_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              "${ixwebsocket_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${ixwebsocket_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${ixwebsocket_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              ixwebsocket_DEPS_TARGET
                              ixwebsocket_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "ixwebsocket"    # package_name
                              "${ixwebsocket_NO_SONAME_MODE_RELWITHDEBINFO}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${ixwebsocket_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES RelWithDebInfo ########################################
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_OBJECTS_RELWITHDEBINFO}>
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_LIBRARIES_TARGETS}>
                 APPEND)

    if("${ixwebsocket_LIBS_RELWITHDEBINFO}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET ixwebsocket::ixwebsocket
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     ixwebsocket_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_LIB_DIRS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:RelWithDebInfo>:${ixwebsocket_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

########## For the modules (FindXXX)
set(ixwebsocket_LIBRARIES_RELWITHDEBINFO ixwebsocket::ixwebsocket)
