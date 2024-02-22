# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libuv_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(libuv_FRAMEWORKS_FOUND_DEBUG "${libuv_FRAMEWORKS_DEBUG}" "${libuv_FRAMEWORK_DIRS_DEBUG}")

set(libuv_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libuv_DEPS_TARGET)
    add_library(libuv_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libuv_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${libuv_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${libuv_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libuv_DEPS_TARGET to all of them
conan_package_library_targets("${libuv_LIBS_DEBUG}"    # libraries
                              "${libuv_LIB_DIRS_DEBUG}" # package_libdir
                              "${libuv_BIN_DIRS_DEBUG}" # package_bindir
                              "${libuv_LIBRARY_TYPE_DEBUG}"
                              "${libuv_IS_HOST_WINDOWS_DEBUG}"
                              libuv_DEPS_TARGET
                              libuv_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "libuv"    # package_name
                              "${libuv_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libuv_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET uv
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${libuv_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${libuv_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libuv_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET uv
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     libuv_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET uv
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${libuv_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET uv
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${libuv_INCLUDE_DIRS_DEBUG}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET uv
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${libuv_LIB_DIRS_DEBUG}> APPEND)
    set_property(TARGET uv
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${libuv_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET uv
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${libuv_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(libuv_LIBRARIES_DEBUG uv)
