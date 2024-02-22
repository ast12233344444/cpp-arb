# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(simple-websocket-server_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(simple-websocket-server_FRAMEWORKS_FOUND_DEBUG "${simple-websocket-server_FRAMEWORKS_DEBUG}" "${simple-websocket-server_FRAMEWORK_DIRS_DEBUG}")

set(simple-websocket-server_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET simple-websocket-server_DEPS_TARGET)
    add_library(simple-websocket-server_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET simple-websocket-server_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${simple-websocket-server_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${simple-websocket-server_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:openssl::openssl;asio::asio>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### simple-websocket-server_DEPS_TARGET to all of them
conan_package_library_targets("${simple-websocket-server_LIBS_DEBUG}"    # libraries
                              "${simple-websocket-server_LIB_DIRS_DEBUG}" # package_libdir
                              "${simple-websocket-server_BIN_DIRS_DEBUG}" # package_bindir
                              "${simple-websocket-server_LIBRARY_TYPE_DEBUG}"
                              "${simple-websocket-server_IS_HOST_WINDOWS_DEBUG}"
                              simple-websocket-server_DEPS_TARGET
                              simple-websocket-server_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "simple-websocket-server"    # package_name
                              "${simple-websocket-server_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${simple-websocket-server_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET simple-websocket-server::simple-websocket-server
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${simple-websocket-server_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${simple-websocket-server_LIBRARIES_TARGETS}>
                 APPEND)

    if("${simple-websocket-server_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET simple-websocket-server::simple-websocket-server
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     simple-websocket-server_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET simple-websocket-server::simple-websocket-server
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${simple-websocket-server_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET simple-websocket-server::simple-websocket-server
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${simple-websocket-server_INCLUDE_DIRS_DEBUG}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET simple-websocket-server::simple-websocket-server
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${simple-websocket-server_LIB_DIRS_DEBUG}> APPEND)
    set_property(TARGET simple-websocket-server::simple-websocket-server
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${simple-websocket-server_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET simple-websocket-server::simple-websocket-server
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${simple-websocket-server_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(simple-websocket-server_LIBRARIES_DEBUG simple-websocket-server::simple-websocket-server)
