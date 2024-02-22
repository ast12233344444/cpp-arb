########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(asio_COMPONENT_NAMES "")
set(asio_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(asio_PACKAGE_FOLDER_DEBUG "C:/Users/ast12/.conan2/p/asioe46abfff5a44a/p")
set(asio_BUILD_MODULES_PATHS_DEBUG )


set(asio_INCLUDE_DIRS_DEBUG "${asio_PACKAGE_FOLDER_DEBUG}/include")
set(asio_RES_DIRS_DEBUG )
set(asio_DEFINITIONS_DEBUG "-DASIO_STANDALONE")
set(asio_SHARED_LINK_FLAGS_DEBUG )
set(asio_EXE_LINK_FLAGS_DEBUG )
set(asio_OBJECTS_DEBUG )
set(asio_COMPILE_DEFINITIONS_DEBUG "ASIO_STANDALONE")
set(asio_COMPILE_OPTIONS_C_DEBUG )
set(asio_COMPILE_OPTIONS_CXX_DEBUG )
set(asio_LIB_DIRS_DEBUG )
set(asio_BIN_DIRS_DEBUG )
set(asio_LIBRARY_TYPE_DEBUG UNKNOWN)
set(asio_IS_HOST_WINDOWS_DEBUG 1)
set(asio_LIBS_DEBUG )
set(asio_SYSTEM_LIBS_DEBUG )
set(asio_FRAMEWORK_DIRS_DEBUG )
set(asio_FRAMEWORKS_DEBUG )
set(asio_BUILD_DIRS_DEBUG )
set(asio_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(asio_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${asio_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${asio_COMPILE_OPTIONS_C_DEBUG}>")
set(asio_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${asio_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${asio_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${asio_EXE_LINK_FLAGS_DEBUG}>")


set(asio_COMPONENTS_DEBUG )