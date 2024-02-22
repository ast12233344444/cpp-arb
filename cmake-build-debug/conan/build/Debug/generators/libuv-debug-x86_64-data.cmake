########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libuv_COMPONENT_NAMES "")
set(libuv_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libuv_PACKAGE_FOLDER_DEBUG "C:/Users/ast12/.conan2/p/b/libuva1fad9f2d7ce7/p")
set(libuv_BUILD_MODULES_PATHS_DEBUG )


set(libuv_INCLUDE_DIRS_DEBUG )
set(libuv_RES_DIRS_DEBUG )
set(libuv_DEFINITIONS_DEBUG )
set(libuv_SHARED_LINK_FLAGS_DEBUG )
set(libuv_EXE_LINK_FLAGS_DEBUG )
set(libuv_OBJECTS_DEBUG )
set(libuv_COMPILE_DEFINITIONS_DEBUG )
set(libuv_COMPILE_OPTIONS_C_DEBUG )
set(libuv_COMPILE_OPTIONS_CXX_DEBUG )
set(libuv_LIB_DIRS_DEBUG "${libuv_PACKAGE_FOLDER_DEBUG}/lib")
set(libuv_BIN_DIRS_DEBUG )
set(libuv_LIBRARY_TYPE_DEBUG STATIC)
set(libuv_IS_HOST_WINDOWS_DEBUG 1)
set(libuv_LIBS_DEBUG libuv)
set(libuv_SYSTEM_LIBS_DEBUG iphlpapi psapi userenv ws2_32 dbghelp)
set(libuv_FRAMEWORK_DIRS_DEBUG )
set(libuv_FRAMEWORKS_DEBUG )
set(libuv_BUILD_DIRS_DEBUG )
set(libuv_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(libuv_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libuv_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libuv_COMPILE_OPTIONS_C_DEBUG}>")
set(libuv_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libuv_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libuv_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libuv_EXE_LINK_FLAGS_DEBUG}>")


set(libuv_COMPONENTS_DEBUG )