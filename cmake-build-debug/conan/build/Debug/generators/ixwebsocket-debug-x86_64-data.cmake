########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(ixwebsocket_COMPONENT_NAMES "")
list(APPEND ixwebsocket_FIND_DEPENDENCY_NAMES MbedTLS ZLIB)
list(REMOVE_DUPLICATES ixwebsocket_FIND_DEPENDENCY_NAMES)
set(MbedTLS_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(ixwebsocket_PACKAGE_FOLDER_DEBUG "C:/Users/ast12/.conan2/p/b/ixweb62d9b301af9c2/p")
set(ixwebsocket_BUILD_MODULES_PATHS_DEBUG )


set(ixwebsocket_INCLUDE_DIRS_DEBUG "${ixwebsocket_PACKAGE_FOLDER_DEBUG}/include")
set(ixwebsocket_RES_DIRS_DEBUG )
set(ixwebsocket_DEFINITIONS_DEBUG "-DIXWEBSOCKET_USE_ZLIB"
			"-DIXWEBSOCKET_USE_MBED_TLS")
set(ixwebsocket_SHARED_LINK_FLAGS_DEBUG )
set(ixwebsocket_EXE_LINK_FLAGS_DEBUG )
set(ixwebsocket_OBJECTS_DEBUG )
set(ixwebsocket_COMPILE_DEFINITIONS_DEBUG "IXWEBSOCKET_USE_ZLIB"
			"IXWEBSOCKET_USE_MBED_TLS")
set(ixwebsocket_COMPILE_OPTIONS_C_DEBUG )
set(ixwebsocket_COMPILE_OPTIONS_CXX_DEBUG )
set(ixwebsocket_LIB_DIRS_DEBUG "${ixwebsocket_PACKAGE_FOLDER_DEBUG}/lib")
set(ixwebsocket_BIN_DIRS_DEBUG )
set(ixwebsocket_LIBRARY_TYPE_DEBUG STATIC)
set(ixwebsocket_IS_HOST_WINDOWS_DEBUG 1)
set(ixwebsocket_LIBS_DEBUG ixwebsocket)
set(ixwebsocket_SYSTEM_LIBS_DEBUG wsock32 ws2_32 shlwapi crypt32)
set(ixwebsocket_FRAMEWORK_DIRS_DEBUG )
set(ixwebsocket_FRAMEWORKS_DEBUG )
set(ixwebsocket_BUILD_DIRS_DEBUG )
set(ixwebsocket_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(ixwebsocket_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${ixwebsocket_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${ixwebsocket_COMPILE_OPTIONS_C_DEBUG}>")
set(ixwebsocket_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ixwebsocket_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ixwebsocket_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ixwebsocket_EXE_LINK_FLAGS_DEBUG}>")


set(ixwebsocket_COMPONENTS_DEBUG )