########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(uwebsockets_COMPONENT_NAMES "")
list(APPEND uwebsockets_FIND_DEPENDENCY_NAMES ZLIB usockets)
list(REMOVE_DUPLICATES uwebsockets_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")
set(usockets_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(uwebsockets_PACKAGE_FOLDER_DEBUG "C:/Users/ast12/.conan2/p/uwebs5be0432d138fd/p")
set(uwebsockets_BUILD_MODULES_PATHS_DEBUG )


set(uwebsockets_INCLUDE_DIRS_DEBUG "${uwebsockets_PACKAGE_FOLDER_DEBUG}/include"
			"${uwebsockets_PACKAGE_FOLDER_DEBUG}/include/uWebSockets")
set(uwebsockets_RES_DIRS_DEBUG )
set(uwebsockets_DEFINITIONS_DEBUG )
set(uwebsockets_SHARED_LINK_FLAGS_DEBUG )
set(uwebsockets_EXE_LINK_FLAGS_DEBUG )
set(uwebsockets_OBJECTS_DEBUG )
set(uwebsockets_COMPILE_DEFINITIONS_DEBUG )
set(uwebsockets_COMPILE_OPTIONS_C_DEBUG )
set(uwebsockets_COMPILE_OPTIONS_CXX_DEBUG )
set(uwebsockets_LIB_DIRS_DEBUG )
set(uwebsockets_BIN_DIRS_DEBUG )
set(uwebsockets_LIBRARY_TYPE_DEBUG UNKNOWN)
set(uwebsockets_IS_HOST_WINDOWS_DEBUG 1)
set(uwebsockets_LIBS_DEBUG )
set(uwebsockets_SYSTEM_LIBS_DEBUG )
set(uwebsockets_FRAMEWORK_DIRS_DEBUG )
set(uwebsockets_FRAMEWORKS_DEBUG )
set(uwebsockets_BUILD_DIRS_DEBUG )
set(uwebsockets_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(uwebsockets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${uwebsockets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${uwebsockets_COMPILE_OPTIONS_C_DEBUG}>")
set(uwebsockets_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${uwebsockets_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${uwebsockets_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${uwebsockets_EXE_LINK_FLAGS_DEBUG}>")


set(uwebsockets_COMPONENTS_DEBUG )