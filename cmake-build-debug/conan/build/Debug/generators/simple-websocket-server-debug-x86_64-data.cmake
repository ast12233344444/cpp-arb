########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(simple-websocket-server_COMPONENT_NAMES "")
list(APPEND simple-websocket-server_FIND_DEPENDENCY_NAMES OpenSSL asio)
list(REMOVE_DUPLICATES simple-websocket-server_FIND_DEPENDENCY_NAMES)
set(OpenSSL_FIND_MODE "NO_MODULE")
set(asio_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(simple-websocket-server_PACKAGE_FOLDER_DEBUG "C:/Users/ast12/.conan2/p/simpl9d847b0593817/p")
set(simple-websocket-server_BUILD_MODULES_PATHS_DEBUG )


set(simple-websocket-server_INCLUDE_DIRS_DEBUG "${simple-websocket-server_PACKAGE_FOLDER_DEBUG}/include")
set(simple-websocket-server_RES_DIRS_DEBUG )
set(simple-websocket-server_DEFINITIONS_DEBUG "-DUSE_STANDALONE_ASIO")
set(simple-websocket-server_SHARED_LINK_FLAGS_DEBUG )
set(simple-websocket-server_EXE_LINK_FLAGS_DEBUG )
set(simple-websocket-server_OBJECTS_DEBUG )
set(simple-websocket-server_COMPILE_DEFINITIONS_DEBUG "USE_STANDALONE_ASIO")
set(simple-websocket-server_COMPILE_OPTIONS_C_DEBUG )
set(simple-websocket-server_COMPILE_OPTIONS_CXX_DEBUG )
set(simple-websocket-server_LIB_DIRS_DEBUG )
set(simple-websocket-server_BIN_DIRS_DEBUG )
set(simple-websocket-server_LIBRARY_TYPE_DEBUG UNKNOWN)
set(simple-websocket-server_IS_HOST_WINDOWS_DEBUG 1)
set(simple-websocket-server_LIBS_DEBUG )
set(simple-websocket-server_SYSTEM_LIBS_DEBUG )
set(simple-websocket-server_FRAMEWORK_DIRS_DEBUG )
set(simple-websocket-server_FRAMEWORKS_DEBUG )
set(simple-websocket-server_BUILD_DIRS_DEBUG )
set(simple-websocket-server_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(simple-websocket-server_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${simple-websocket-server_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${simple-websocket-server_COMPILE_OPTIONS_C_DEBUG}>")
set(simple-websocket-server_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${simple-websocket-server_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${simple-websocket-server_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${simple-websocket-server_EXE_LINK_FLAGS_DEBUG}>")


set(simple-websocket-server_COMPONENTS_DEBUG )