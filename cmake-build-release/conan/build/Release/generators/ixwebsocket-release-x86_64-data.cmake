########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(ixwebsocket_COMPONENT_NAMES "")
list(APPEND ixwebsocket_FIND_DEPENDENCY_NAMES MbedTLS ZLIB)
list(REMOVE_DUPLICATES ixwebsocket_FIND_DEPENDENCY_NAMES)
set(MbedTLS_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(ixwebsocket_PACKAGE_FOLDER_RELEASE "C:/Users/ast12/.conan2/p/ixweb73832feb2e86e/p")
set(ixwebsocket_BUILD_MODULES_PATHS_RELEASE )


set(ixwebsocket_INCLUDE_DIRS_RELEASE "${ixwebsocket_PACKAGE_FOLDER_RELEASE}/include")
set(ixwebsocket_RES_DIRS_RELEASE )
set(ixwebsocket_DEFINITIONS_RELEASE "-DIXWEBSOCKET_USE_ZLIB"
			"-DIXWEBSOCKET_USE_MBED_TLS")
set(ixwebsocket_SHARED_LINK_FLAGS_RELEASE )
set(ixwebsocket_EXE_LINK_FLAGS_RELEASE )
set(ixwebsocket_OBJECTS_RELEASE )
set(ixwebsocket_COMPILE_DEFINITIONS_RELEASE "IXWEBSOCKET_USE_ZLIB"
			"IXWEBSOCKET_USE_MBED_TLS")
set(ixwebsocket_COMPILE_OPTIONS_C_RELEASE )
set(ixwebsocket_COMPILE_OPTIONS_CXX_RELEASE )
set(ixwebsocket_LIB_DIRS_RELEASE "${ixwebsocket_PACKAGE_FOLDER_RELEASE}/lib")
set(ixwebsocket_BIN_DIRS_RELEASE )
set(ixwebsocket_LIBRARY_TYPE_RELEASE STATIC)
set(ixwebsocket_IS_HOST_WINDOWS_RELEASE 1)
set(ixwebsocket_LIBS_RELEASE ixwebsocket)
set(ixwebsocket_SYSTEM_LIBS_RELEASE wsock32 ws2_32 shlwapi crypt32)
set(ixwebsocket_FRAMEWORK_DIRS_RELEASE )
set(ixwebsocket_FRAMEWORKS_RELEASE )
set(ixwebsocket_BUILD_DIRS_RELEASE )
set(ixwebsocket_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(ixwebsocket_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ixwebsocket_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ixwebsocket_COMPILE_OPTIONS_C_RELEASE}>")
set(ixwebsocket_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ixwebsocket_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ixwebsocket_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ixwebsocket_EXE_LINK_FLAGS_RELEASE}>")


set(ixwebsocket_COMPONENTS_RELEASE )