# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(usockets_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(usockets_FRAMEWORKS_FOUND_DEBUG "${usockets_FRAMEWORKS_DEBUG}" "${usockets_FRAMEWORK_DIRS_DEBUG}")

set(usockets_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET usockets_DEPS_TARGET)
    add_library(usockets_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET usockets_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${usockets_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${usockets_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:uv>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### usockets_DEPS_TARGET to all of them
conan_package_library_targets("${usockets_LIBS_DEBUG}"    # libraries
                              "${usockets_LIB_DIRS_DEBUG}" # package_libdir
                              "${usockets_BIN_DIRS_DEBUG}" # package_bindir
                              "${usockets_LIBRARY_TYPE_DEBUG}"
                              "${usockets_IS_HOST_WINDOWS_DEBUG}"
                              usockets_DEPS_TARGET
                              usockets_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "usockets"    # package_name
                              "${usockets_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${usockets_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET usockets::usockets
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${usockets_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${usockets_LIBRARIES_TARGETS}>
                 APPEND)

    if("${usockets_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET usockets::usockets
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     usockets_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET usockets::usockets
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${usockets_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET usockets::usockets
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${usockets_INCLUDE_DIRS_DEBUG}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET usockets::usockets
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${usockets_LIB_DIRS_DEBUG}> APPEND)
    set_property(TARGET usockets::usockets
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${usockets_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET usockets::usockets
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${usockets_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(usockets_LIBRARIES_DEBUG usockets::usockets)
