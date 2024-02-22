########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND openssl_COMPONENT_NAMES OpenSSL::Crypto OpenSSL::SSL)
list(REMOVE_DUPLICATES openssl_COMPONENT_NAMES)
list(APPEND openssl_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES openssl_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(openssl_PACKAGE_FOLDER_RELWITHDEBINFO "C:/Users/ast12/.conan2/p/b/opensba3c0e70195fe/p")
set(openssl_BUILD_MODULES_PATHS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/lib/cmake/conan-official-openssl-variables.cmake")


set(openssl_INCLUDE_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(openssl_RES_DIRS_RELWITHDEBINFO )
set(openssl_DEFINITIONS_RELWITHDEBINFO )
set(openssl_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(openssl_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(openssl_OBJECTS_RELWITHDEBINFO )
set(openssl_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(openssl_COMPILE_OPTIONS_C_RELWITHDEBINFO )
set(openssl_COMPILE_OPTIONS_CXX_RELWITHDEBINFO )
set(openssl_LIB_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(openssl_BIN_DIRS_RELWITHDEBINFO )
set(openssl_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(openssl_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(openssl_LIBS_RELWITHDEBINFO libssl libcrypto)
set(openssl_SYSTEM_LIBS_RELWITHDEBINFO crypt32 ws2_32 advapi32 user32 bcrypt)
set(openssl_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(openssl_FRAMEWORKS_RELWITHDEBINFO )
set(openssl_BUILD_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/lib/cmake")
set(openssl_NO_SONAME_MODE_RELWITHDEBINFO FALSE)


# COMPOUND VARIABLES
set(openssl_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${openssl_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${openssl_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
set(openssl_LINKER_FLAGS_RELWITHDEBINFO
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${openssl_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${openssl_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${openssl_EXE_LINK_FLAGS_RELWITHDEBINFO}>")


set(openssl_COMPONENTS_RELWITHDEBINFO OpenSSL::Crypto OpenSSL::SSL)
########### COMPONENT OpenSSL::SSL VARIABLES ############################################

set(openssl_OpenSSL_SSL_INCLUDE_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(openssl_OpenSSL_SSL_LIB_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(openssl_OpenSSL_SSL_BIN_DIRS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(openssl_OpenSSL_SSL_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(openssl_OpenSSL_SSL_RES_DIRS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_DEFINITIONS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_OBJECTS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(openssl_OpenSSL_SSL_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(openssl_OpenSSL_SSL_LIBS_RELWITHDEBINFO libssl)
set(openssl_OpenSSL_SSL_SYSTEM_LIBS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_FRAMEWORKS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_DEPENDENCIES_RELWITHDEBINFO OpenSSL::Crypto)
set(openssl_OpenSSL_SSL_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(openssl_OpenSSL_SSL_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(openssl_OpenSSL_SSL_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${openssl_OpenSSL_SSL_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${openssl_OpenSSL_SSL_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${openssl_OpenSSL_SSL_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(openssl_OpenSSL_SSL_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${openssl_OpenSSL_SSL_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${openssl_OpenSSL_SSL_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT OpenSSL::Crypto VARIABLES ############################################

set(openssl_OpenSSL_Crypto_INCLUDE_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(openssl_OpenSSL_Crypto_LIB_DIRS_RELWITHDEBINFO "${openssl_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(openssl_OpenSSL_Crypto_BIN_DIRS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(openssl_OpenSSL_Crypto_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(openssl_OpenSSL_Crypto_RES_DIRS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_DEFINITIONS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_OBJECTS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(openssl_OpenSSL_Crypto_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(openssl_OpenSSL_Crypto_LIBS_RELWITHDEBINFO libcrypto)
set(openssl_OpenSSL_Crypto_SYSTEM_LIBS_RELWITHDEBINFO crypt32 ws2_32 advapi32 user32 bcrypt)
set(openssl_OpenSSL_Crypto_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_FRAMEWORKS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_DEPENDENCIES_RELWITHDEBINFO ZLIB::ZLIB)
set(openssl_OpenSSL_Crypto_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(openssl_OpenSSL_Crypto_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(openssl_OpenSSL_Crypto_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${openssl_OpenSSL_Crypto_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${openssl_OpenSSL_Crypto_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${openssl_OpenSSL_Crypto_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(openssl_OpenSSL_Crypto_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${openssl_OpenSSL_Crypto_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${openssl_OpenSSL_Crypto_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")