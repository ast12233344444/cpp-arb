# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(uwebsockets_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(uwebsockets_FRAMEWORKS_FOUND_DEBUG "${uwebsockets_FRAMEWORKS_DEBUG}" "${uwebsockets_FRAMEWORK_DIRS_DEBUG}")

set(uwebsockets_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET uwebsockets_DEPS_TARGET)
    add_library(uwebsockets_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET uwebsockets_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${uwebsockets_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${uwebsockets_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:ZLIB::ZLIB;usockets::usockets>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### uwebsockets_DEPS_TARGET to all of them
conan_package_library_targets("${uwebsockets_LIBS_DEBUG}"    # libraries
                              "${uwebsockets_LIB_DIRS_DEBUG}" # package_libdir
                              "${uwebsockets_BIN_DIRS_DEBUG}" # package_bindir
                              "${uwebsockets_LIBRARY_TYPE_DEBUG}"
                              "${uwebsockets_IS_HOST_WINDOWS_DEBUG}"
                              uwebsockets_DEPS_TARGET
                              uwebsockets_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "uwebsockets"    # package_name
                              "${uwebsockets_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${uwebsockets_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET uwebsockets::uwebsockets
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${uwebsockets_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${uwebsockets_LIBRARIES_TARGETS}>
                 APPEND)

    if("${uwebsockets_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET uwebsockets::uwebsockets
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     uwebsockets_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET uwebsockets::uwebsockets
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${uwebsockets_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET uwebsockets::uwebsockets
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${uwebsockets_INCLUDE_DIRS_DEBUG}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET uwebsockets::uwebsockets
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${uwebsockets_LIB_DIRS_DEBUG}> APPEND)
    set_property(TARGET uwebsockets::uwebsockets
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${uwebsockets_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET uwebsockets::uwebsockets
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${uwebsockets_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(uwebsockets_LIBRARIES_DEBUG uwebsockets::uwebsockets)
