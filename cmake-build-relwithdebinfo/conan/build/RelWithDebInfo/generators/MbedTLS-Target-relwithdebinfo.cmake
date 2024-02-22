# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(mbedtls_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(mbedtls_FRAMEWORKS_FOUND_RELWITHDEBINFO "${mbedtls_FRAMEWORKS_RELWITHDEBINFO}" "${mbedtls_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(mbedtls_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET mbedtls_DEPS_TARGET)
    add_library(mbedtls_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET mbedtls_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${mbedtls_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${mbedtls_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:ZLIB::ZLIB;MbedTLS::mbedcrypto;MbedTLS::mbedx509>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### mbedtls_DEPS_TARGET to all of them
conan_package_library_targets("${mbedtls_LIBS_RELWITHDEBINFO}"    # libraries
                              "${mbedtls_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              "${mbedtls_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${mbedtls_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${mbedtls_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              mbedtls_DEPS_TARGET
                              mbedtls_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "mbedtls"    # package_name
                              "${mbedtls_NO_SONAME_MODE_RELWITHDEBINFO}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${mbedtls_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES RelWithDebInfo ########################################

    ########## COMPONENT MbedTLS::mbedtls #############

        set(mbedtls_MbedTLS_mbedtls_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(mbedtls_MbedTLS_mbedtls_FRAMEWORKS_FOUND_RELWITHDEBINFO "${mbedtls_MbedTLS_mbedtls_FRAMEWORKS_RELWITHDEBINFO}" "${mbedtls_MbedTLS_mbedtls_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(mbedtls_MbedTLS_mbedtls_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mbedtls_MbedTLS_mbedtls_DEPS_TARGET)
            add_library(mbedtls_MbedTLS_mbedtls_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mbedtls_MbedTLS_mbedtls_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mbedtls_MbedTLS_mbedtls_DEPS_TARGET' to all of them
        conan_package_library_targets("${mbedtls_MbedTLS_mbedtls_LIBS_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedtls_LIB_DIRS_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedtls_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${mbedtls_MbedTLS_mbedtls_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedtls_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              mbedtls_MbedTLS_mbedtls_DEPS_TARGET
                              mbedtls_MbedTLS_mbedtls_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "mbedtls_MbedTLS_mbedtls"
                              "${mbedtls_MbedTLS_mbedtls_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MbedTLS::mbedtls
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_LIBRARIES_TARGETS}>
                     APPEND)

        if("${mbedtls_MbedTLS_mbedtls_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MbedTLS::mbedtls
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         mbedtls_MbedTLS_mbedtls_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedtls_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT MbedTLS::mbedx509 #############

        set(mbedtls_MbedTLS_mbedx509_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(mbedtls_MbedTLS_mbedx509_FRAMEWORKS_FOUND_RELWITHDEBINFO "${mbedtls_MbedTLS_mbedx509_FRAMEWORKS_RELWITHDEBINFO}" "${mbedtls_MbedTLS_mbedx509_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(mbedtls_MbedTLS_mbedx509_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mbedtls_MbedTLS_mbedx509_DEPS_TARGET)
            add_library(mbedtls_MbedTLS_mbedx509_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mbedtls_MbedTLS_mbedx509_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mbedtls_MbedTLS_mbedx509_DEPS_TARGET' to all of them
        conan_package_library_targets("${mbedtls_MbedTLS_mbedx509_LIBS_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedx509_LIB_DIRS_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedx509_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${mbedtls_MbedTLS_mbedx509_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedx509_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              mbedtls_MbedTLS_mbedx509_DEPS_TARGET
                              mbedtls_MbedTLS_mbedx509_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "mbedtls_MbedTLS_mbedx509"
                              "${mbedtls_MbedTLS_mbedx509_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MbedTLS::mbedx509
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_LIBRARIES_TARGETS}>
                     APPEND)

        if("${mbedtls_MbedTLS_mbedx509_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MbedTLS::mbedx509
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         mbedtls_MbedTLS_mbedx509_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET MbedTLS::mbedx509 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedx509 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedx509 PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedx509 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedx509 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedx509_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT MbedTLS::mbedcrypto #############

        set(mbedtls_MbedTLS_mbedcrypto_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(mbedtls_MbedTLS_mbedcrypto_FRAMEWORKS_FOUND_RELWITHDEBINFO "${mbedtls_MbedTLS_mbedcrypto_FRAMEWORKS_RELWITHDEBINFO}" "${mbedtls_MbedTLS_mbedcrypto_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(mbedtls_MbedTLS_mbedcrypto_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mbedtls_MbedTLS_mbedcrypto_DEPS_TARGET)
            add_library(mbedtls_MbedTLS_mbedcrypto_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mbedtls_MbedTLS_mbedcrypto_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mbedtls_MbedTLS_mbedcrypto_DEPS_TARGET' to all of them
        conan_package_library_targets("${mbedtls_MbedTLS_mbedcrypto_LIBS_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedcrypto_LIB_DIRS_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedcrypto_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${mbedtls_MbedTLS_mbedcrypto_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${mbedtls_MbedTLS_mbedcrypto_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              mbedtls_MbedTLS_mbedcrypto_DEPS_TARGET
                              mbedtls_MbedTLS_mbedcrypto_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "mbedtls_MbedTLS_mbedcrypto"
                              "${mbedtls_MbedTLS_mbedcrypto_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MbedTLS::mbedcrypto
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_LIBRARIES_TARGETS}>
                     APPEND)

        if("${mbedtls_MbedTLS_mbedcrypto_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MbedTLS::mbedcrypto
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         mbedtls_MbedTLS_mbedcrypto_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET MbedTLS::mbedcrypto PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedcrypto PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedcrypto PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedcrypto PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET MbedTLS::mbedcrypto PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${mbedtls_MbedTLS_mbedcrypto_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_LINK_LIBRARIES MbedTLS::mbedtls APPEND)
    set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_LINK_LIBRARIES MbedTLS::mbedx509 APPEND)
    set_property(TARGET MbedTLS::mbedtls PROPERTY INTERFACE_LINK_LIBRARIES MbedTLS::mbedcrypto APPEND)

########## For the modules (FindXXX)
set(mbedtls_LIBRARIES_RELWITHDEBINFO MbedTLS::mbedtls)