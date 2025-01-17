# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(websocketpp_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(websocketpp_FRAMEWORKS_FOUND_DEBUG "${websocketpp_FRAMEWORKS_DEBUG}" "${websocketpp_FRAMEWORK_DIRS_DEBUG}")

set(websocketpp_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET websocketpp_DEPS_TARGET)
    add_library(websocketpp_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET websocketpp_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${websocketpp_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${websocketpp_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:openssl::openssl;ZLIB::ZLIB;Boost::headers>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### websocketpp_DEPS_TARGET to all of them
conan_package_library_targets("${websocketpp_LIBS_DEBUG}"    # libraries
                              "${websocketpp_LIB_DIRS_DEBUG}" # package_libdir
                              "${websocketpp_BIN_DIRS_DEBUG}" # package_bindir
                              "${websocketpp_LIBRARY_TYPE_DEBUG}"
                              "${websocketpp_IS_HOST_WINDOWS_DEBUG}"
                              websocketpp_DEPS_TARGET
                              websocketpp_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "websocketpp"    # package_name
                              "${websocketpp_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${websocketpp_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET websocketpp::websocketpp
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${websocketpp_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${websocketpp_LIBRARIES_TARGETS}>
                 APPEND)

    if("${websocketpp_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET websocketpp::websocketpp
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     websocketpp_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET websocketpp::websocketpp
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${websocketpp_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET websocketpp::websocketpp
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${websocketpp_INCLUDE_DIRS_DEBUG}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET websocketpp::websocketpp
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${websocketpp_LIB_DIRS_DEBUG}> APPEND)
    set_property(TARGET websocketpp::websocketpp
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${websocketpp_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET websocketpp::websocketpp
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${websocketpp_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(websocketpp_LIBRARIES_DEBUG websocketpp::websocketpp)
