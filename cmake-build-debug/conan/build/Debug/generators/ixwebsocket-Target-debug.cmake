# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(ixwebsocket_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(ixwebsocket_FRAMEWORKS_FOUND_DEBUG "${ixwebsocket_FRAMEWORKS_DEBUG}" "${ixwebsocket_FRAMEWORK_DIRS_DEBUG}")

set(ixwebsocket_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET ixwebsocket_DEPS_TARGET)
    add_library(ixwebsocket_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET ixwebsocket_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${ixwebsocket_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${ixwebsocket_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:MbedTLS::mbedtls;ZLIB::ZLIB>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### ixwebsocket_DEPS_TARGET to all of them
conan_package_library_targets("${ixwebsocket_LIBS_DEBUG}"    # libraries
                              "${ixwebsocket_LIB_DIRS_DEBUG}" # package_libdir
                              "${ixwebsocket_BIN_DIRS_DEBUG}" # package_bindir
                              "${ixwebsocket_LIBRARY_TYPE_DEBUG}"
                              "${ixwebsocket_IS_HOST_WINDOWS_DEBUG}"
                              ixwebsocket_DEPS_TARGET
                              ixwebsocket_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "ixwebsocket"    # package_name
                              "${ixwebsocket_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${ixwebsocket_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${ixwebsocket_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${ixwebsocket_LIBRARIES_TARGETS}>
                 APPEND)

    if("${ixwebsocket_LIBS_DEBUG}" STREQUAL "")
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
                 $<$<CONFIG:Debug>:${ixwebsocket_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${ixwebsocket_INCLUDE_DIRS_DEBUG}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${ixwebsocket_LIB_DIRS_DEBUG}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${ixwebsocket_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${ixwebsocket_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(ixwebsocket_LIBRARIES_DEBUG ixwebsocket::ixwebsocket)
