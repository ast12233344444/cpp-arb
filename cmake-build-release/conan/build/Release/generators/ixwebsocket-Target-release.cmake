# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(ixwebsocket_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(ixwebsocket_FRAMEWORKS_FOUND_RELEASE "${ixwebsocket_FRAMEWORKS_RELEASE}" "${ixwebsocket_FRAMEWORK_DIRS_RELEASE}")

set(ixwebsocket_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET ixwebsocket_DEPS_TARGET)
    add_library(ixwebsocket_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET ixwebsocket_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${ixwebsocket_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${ixwebsocket_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:MbedTLS::mbedtls;ZLIB::ZLIB>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### ixwebsocket_DEPS_TARGET to all of them
conan_package_library_targets("${ixwebsocket_LIBS_RELEASE}"    # libraries
                              "${ixwebsocket_LIB_DIRS_RELEASE}" # package_libdir
                              "${ixwebsocket_BIN_DIRS_RELEASE}" # package_bindir
                              "${ixwebsocket_LIBRARY_TYPE_RELEASE}"
                              "${ixwebsocket_IS_HOST_WINDOWS_RELEASE}"
                              ixwebsocket_DEPS_TARGET
                              ixwebsocket_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "ixwebsocket"    # package_name
                              "${ixwebsocket_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${ixwebsocket_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${ixwebsocket_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${ixwebsocket_LIBRARIES_TARGETS}>
                 APPEND)

    if("${ixwebsocket_LIBS_RELEASE}" STREQUAL "")
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
                 $<$<CONFIG:Release>:${ixwebsocket_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${ixwebsocket_INCLUDE_DIRS_RELEASE}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${ixwebsocket_LIB_DIRS_RELEASE}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${ixwebsocket_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET ixwebsocket::ixwebsocket
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${ixwebsocket_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(ixwebsocket_LIBRARIES_RELEASE ixwebsocket::ixwebsocket)
