########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(usockets_COMPONENT_NAMES "")
list(APPEND usockets_FIND_DEPENDENCY_NAMES libuv)
list(REMOVE_DUPLICATES usockets_FIND_DEPENDENCY_NAMES)
set(libuv_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(usockets_PACKAGE_FOLDER_DEBUG "C:/Users/ast12/.conan2/p/b/usock12712fd3a63b9/p")
set(usockets_BUILD_MODULES_PATHS_DEBUG )


set(usockets_INCLUDE_DIRS_DEBUG "${usockets_PACKAGE_FOLDER_DEBUG}/include")
set(usockets_RES_DIRS_DEBUG )
set(usockets_DEFINITIONS_DEBUG "-DLIBUS_NO_SSL"
			"-DLIBUS_USE_LIBUV")
set(usockets_SHARED_LINK_FLAGS_DEBUG )
set(usockets_EXE_LINK_FLAGS_DEBUG )
set(usockets_OBJECTS_DEBUG )
set(usockets_COMPILE_DEFINITIONS_DEBUG "LIBUS_NO_SSL"
			"LIBUS_USE_LIBUV")
set(usockets_COMPILE_OPTIONS_C_DEBUG )
set(usockets_COMPILE_OPTIONS_CXX_DEBUG )
set(usockets_LIB_DIRS_DEBUG "${usockets_PACKAGE_FOLDER_DEBUG}/lib")
set(usockets_BIN_DIRS_DEBUG )
set(usockets_LIBRARY_TYPE_DEBUG STATIC)
set(usockets_IS_HOST_WINDOWS_DEBUG 1)
set(usockets_LIBS_DEBUG uSockets)
set(usockets_SYSTEM_LIBS_DEBUG )
set(usockets_FRAMEWORK_DIRS_DEBUG )
set(usockets_FRAMEWORKS_DEBUG )
set(usockets_BUILD_DIRS_DEBUG )
set(usockets_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(usockets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${usockets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${usockets_COMPILE_OPTIONS_C_DEBUG}>")
set(usockets_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${usockets_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${usockets_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${usockets_EXE_LINK_FLAGS_DEBUG}>")


set(usockets_COMPONENTS_DEBUG )