# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(boost_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(boost_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_FRAMEWORKS_RELWITHDEBINFO}" "${boost_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(boost_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET boost_DEPS_TARGET)
    add_library(boost_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET boost_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${boost_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${boost_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:Boost::diagnostic_definitions;Boost::disable_autolinking;Boost::dynamic_linking;Boost::headers;boost::_libboost;Boost::system;Boost::exception;Boost::thread;Boost::context;Boost::atomic;Boost::math;Boost::random;Boost::regex;Boost::serialization;BZip2::BZip2;ZLIB::ZLIB;Boost::container;Boost::date_time;Boost::filesystem;Boost::log;Boost::test;Boost::stacktrace;Boost::chrono;Boost::prg_exec_monitor;Boost::test_exec_monitor>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### boost_DEPS_TARGET to all of them
conan_package_library_targets("${boost_LIBS_RELWITHDEBINFO}"    # libraries
                              "${boost_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              "${boost_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_DEPS_TARGET
                              boost_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "boost"    # package_name
                              "${boost_NO_SONAME_MODE_RELWITHDEBINFO}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${boost_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES RelWithDebInfo ########################################

    ########## COMPONENT Boost::log_setup #############

        set(boost_Boost_log_setup_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_log_setup_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_log_setup_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_log_setup_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_log_setup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_log_setup_DEPS_TARGET)
            add_library(boost_Boost_log_setup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_log_setup_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_log_setup_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_log_setup_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_log_setup_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_log_setup_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_log_setup_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_log_setup_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_log_setup_DEPS_TARGET
                              boost_Boost_log_setup_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_log_setup"
                              "${boost_Boost_log_setup_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::log_setup
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_log_setup_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::log_setup
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_log_setup_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::log_setup PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log_setup PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log_setup PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log_setup PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log_setup PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_setup_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::log #############

        set(boost_Boost_log_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_log_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_log_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_log_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_log_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_log_DEPS_TARGET)
            add_library(boost_Boost_log_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_log_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_log_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_log_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_log_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_log_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_log_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_log_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_log_DEPS_TARGET
                              boost_Boost_log_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_log"
                              "${boost_Boost_log_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::log
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_log_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::log
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_log_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::log PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::log PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_log_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::locale #############

        set(boost_Boost_locale_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_locale_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_locale_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_locale_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_locale_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_locale_DEPS_TARGET)
            add_library(boost_Boost_locale_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_locale_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_locale_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_locale_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_locale_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_locale_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_locale_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_locale_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_locale_DEPS_TARGET
                              boost_Boost_locale_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_locale"
                              "${boost_Boost_locale_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::locale
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_locale_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::locale
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_locale_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::locale PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::locale PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::locale PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::locale PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::locale PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_locale_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::iostreams #############

        set(boost_Boost_iostreams_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_iostreams_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_iostreams_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_iostreams_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_iostreams_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_iostreams_DEPS_TARGET)
            add_library(boost_Boost_iostreams_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_iostreams_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_iostreams_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_iostreams_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_iostreams_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_iostreams_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_iostreams_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_iostreams_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_iostreams_DEPS_TARGET
                              boost_Boost_iostreams_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_iostreams"
                              "${boost_Boost_iostreams_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::iostreams
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_iostreams_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::iostreams
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_iostreams_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::iostreams PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::iostreams PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::iostreams PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::iostreams PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::iostreams PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_iostreams_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::graph #############

        set(boost_Boost_graph_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_graph_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_graph_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_graph_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_graph_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_graph_DEPS_TARGET)
            add_library(boost_Boost_graph_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_graph_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_graph_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_graph_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_graph_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_graph_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_graph_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_graph_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_graph_DEPS_TARGET
                              boost_Boost_graph_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_graph"
                              "${boost_Boost_graph_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::graph
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_graph_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::graph
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_graph_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::graph PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::graph PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::graph PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::graph PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::graph PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_graph_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::contract #############

        set(boost_Boost_contract_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_contract_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_contract_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_contract_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_contract_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_contract_DEPS_TARGET)
            add_library(boost_Boost_contract_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_contract_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_contract_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_contract_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_contract_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_contract_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_contract_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_contract_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_contract_DEPS_TARGET
                              boost_Boost_contract_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_contract"
                              "${boost_Boost_contract_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::contract
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_contract_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::contract
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_contract_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::contract PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::contract PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::contract PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::contract PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::contract PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_contract_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::wave #############

        set(boost_Boost_wave_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_wave_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_wave_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_wave_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_wave_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_wave_DEPS_TARGET)
            add_library(boost_Boost_wave_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_wave_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_wave_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_wave_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_wave_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_wave_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_wave_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_wave_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_wave_DEPS_TARGET
                              boost_Boost_wave_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_wave"
                              "${boost_Boost_wave_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::wave
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_wave_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::wave
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_wave_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::wave PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wave PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wave PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wave PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wave PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wave_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::unit_test_framework #############

        set(boost_Boost_unit_test_framework_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_unit_test_framework_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_unit_test_framework_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_unit_test_framework_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_unit_test_framework_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_unit_test_framework_DEPS_TARGET)
            add_library(boost_Boost_unit_test_framework_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_unit_test_framework_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_unit_test_framework_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_unit_test_framework_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_unit_test_framework_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_unit_test_framework_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_unit_test_framework_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_unit_test_framework_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_unit_test_framework_DEPS_TARGET
                              boost_Boost_unit_test_framework_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_unit_test_framework"
                              "${boost_Boost_unit_test_framework_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::unit_test_framework
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_unit_test_framework_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::unit_test_framework
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_unit_test_framework_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::unit_test_framework PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::unit_test_framework PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::unit_test_framework PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::unit_test_framework PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::unit_test_framework PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_unit_test_framework_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::type_erasure #############

        set(boost_Boost_type_erasure_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_type_erasure_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_type_erasure_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_type_erasure_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_type_erasure_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_type_erasure_DEPS_TARGET)
            add_library(boost_Boost_type_erasure_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_type_erasure_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_type_erasure_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_type_erasure_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_type_erasure_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_type_erasure_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_type_erasure_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_type_erasure_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_type_erasure_DEPS_TARGET
                              boost_Boost_type_erasure_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_type_erasure"
                              "${boost_Boost_type_erasure_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::type_erasure
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_type_erasure_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::type_erasure
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_type_erasure_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::type_erasure PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::type_erasure PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::type_erasure PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::type_erasure PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::type_erasure PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_type_erasure_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::thread #############

        set(boost_Boost_thread_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_thread_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_thread_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_thread_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_thread_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_thread_DEPS_TARGET)
            add_library(boost_Boost_thread_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_thread_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_thread_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_thread_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_thread_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_thread_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_thread_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_thread_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_thread_DEPS_TARGET
                              boost_Boost_thread_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_thread"
                              "${boost_Boost_thread_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::thread
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_thread_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::thread
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_thread_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::thread PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::thread PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::thread PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::thread PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::thread PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_thread_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::random #############

        set(boost_Boost_random_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_random_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_random_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_random_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_random_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_random_DEPS_TARGET)
            add_library(boost_Boost_random_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_random_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_random_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_random_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_random_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_random_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_random_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_random_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_random_DEPS_TARGET
                              boost_Boost_random_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_random"
                              "${boost_Boost_random_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::random
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_random_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::random
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_random_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::random PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::random PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::random PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::random PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::random PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_random_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::prg_exec_monitor #############

        set(boost_Boost_prg_exec_monitor_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_prg_exec_monitor_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_prg_exec_monitor_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_prg_exec_monitor_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_prg_exec_monitor_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_prg_exec_monitor_DEPS_TARGET)
            add_library(boost_Boost_prg_exec_monitor_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_prg_exec_monitor_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_prg_exec_monitor_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_prg_exec_monitor_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_prg_exec_monitor_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_prg_exec_monitor_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_prg_exec_monitor_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_prg_exec_monitor_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_prg_exec_monitor_DEPS_TARGET
                              boost_Boost_prg_exec_monitor_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_prg_exec_monitor"
                              "${boost_Boost_prg_exec_monitor_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::prg_exec_monitor
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_prg_exec_monitor_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::prg_exec_monitor
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_prg_exec_monitor_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::prg_exec_monitor PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::prg_exec_monitor PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::prg_exec_monitor PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::prg_exec_monitor PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::prg_exec_monitor PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_prg_exec_monitor_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::nowide #############

        set(boost_Boost_nowide_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_nowide_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_nowide_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_nowide_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_nowide_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_nowide_DEPS_TARGET)
            add_library(boost_Boost_nowide_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_nowide_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_nowide_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_nowide_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_nowide_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_nowide_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_nowide_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_nowide_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_nowide_DEPS_TARGET
                              boost_Boost_nowide_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_nowide"
                              "${boost_Boost_nowide_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::nowide
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_nowide_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::nowide
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_nowide_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::nowide PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::nowide PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::nowide PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::nowide PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::nowide PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_nowide_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::json #############

        set(boost_Boost_json_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_json_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_json_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_json_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_json_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_json_DEPS_TARGET)
            add_library(boost_Boost_json_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_json_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_json_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_json_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_json_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_json_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_json_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_json_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_json_DEPS_TARGET
                              boost_Boost_json_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_json"
                              "${boost_Boost_json_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::json
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_json_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::json
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_json_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::json PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::json PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::json PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::json PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::json PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_json_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::filesystem #############

        set(boost_Boost_filesystem_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_filesystem_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_filesystem_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_filesystem_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_filesystem_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_filesystem_DEPS_TARGET)
            add_library(boost_Boost_filesystem_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_filesystem_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_filesystem_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_filesystem_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_filesystem_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_filesystem_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_filesystem_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_filesystem_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_filesystem_DEPS_TARGET
                              boost_Boost_filesystem_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_filesystem"
                              "${boost_Boost_filesystem_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::filesystem
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_filesystem_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::filesystem
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_filesystem_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::filesystem PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::filesystem PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::filesystem PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::filesystem PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::filesystem PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_filesystem_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::coroutine #############

        set(boost_Boost_coroutine_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_coroutine_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_coroutine_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_coroutine_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_coroutine_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_coroutine_DEPS_TARGET)
            add_library(boost_Boost_coroutine_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_coroutine_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_coroutine_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_coroutine_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_coroutine_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_coroutine_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_coroutine_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_coroutine_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_coroutine_DEPS_TARGET
                              boost_Boost_coroutine_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_coroutine"
                              "${boost_Boost_coroutine_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::coroutine
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_coroutine_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::coroutine
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_coroutine_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::coroutine PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::coroutine PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::coroutine PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::coroutine PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::coroutine PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_coroutine_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::chrono #############

        set(boost_Boost_chrono_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_chrono_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_chrono_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_chrono_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_chrono_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_chrono_DEPS_TARGET)
            add_library(boost_Boost_chrono_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_chrono_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_chrono_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_chrono_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_chrono_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_chrono_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_chrono_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_chrono_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_chrono_DEPS_TARGET
                              boost_Boost_chrono_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_chrono"
                              "${boost_Boost_chrono_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::chrono
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_chrono_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::chrono
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_chrono_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::chrono PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::chrono PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::chrono PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::chrono PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::chrono PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_chrono_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::wserialization #############

        set(boost_Boost_wserialization_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_wserialization_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_wserialization_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_wserialization_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_wserialization_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_wserialization_DEPS_TARGET)
            add_library(boost_Boost_wserialization_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_wserialization_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_wserialization_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_wserialization_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_wserialization_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_wserialization_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_wserialization_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_wserialization_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_wserialization_DEPS_TARGET
                              boost_Boost_wserialization_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_wserialization"
                              "${boost_Boost_wserialization_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::wserialization
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_wserialization_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::wserialization
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_wserialization_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::wserialization PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wserialization PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wserialization PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wserialization PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::wserialization PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_wserialization_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::url #############

        set(boost_Boost_url_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_url_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_url_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_url_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_url_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_url_DEPS_TARGET)
            add_library(boost_Boost_url_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_url_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_url_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_url_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_url_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_url_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_url_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_url_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_url_DEPS_TARGET
                              boost_Boost_url_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_url"
                              "${boost_Boost_url_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::url
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_url_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::url
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_url_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::url PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::url PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::url PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::url PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::url PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_url_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::timer #############

        set(boost_Boost_timer_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_timer_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_timer_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_timer_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_timer_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_timer_DEPS_TARGET)
            add_library(boost_Boost_timer_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_timer_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_timer_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_timer_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_timer_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_timer_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_timer_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_timer_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_timer_DEPS_TARGET
                              boost_Boost_timer_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_timer"
                              "${boost_Boost_timer_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::timer
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_timer_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::timer
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_timer_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::timer PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::timer PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::timer PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::timer PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::timer PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_timer_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::test_exec_monitor #############

        set(boost_Boost_test_exec_monitor_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_test_exec_monitor_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_test_exec_monitor_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_test_exec_monitor_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_test_exec_monitor_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_test_exec_monitor_DEPS_TARGET)
            add_library(boost_Boost_test_exec_monitor_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_test_exec_monitor_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_test_exec_monitor_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_test_exec_monitor_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_test_exec_monitor_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_test_exec_monitor_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_test_exec_monitor_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_test_exec_monitor_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_test_exec_monitor_DEPS_TARGET
                              boost_Boost_test_exec_monitor_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_test_exec_monitor"
                              "${boost_Boost_test_exec_monitor_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::test_exec_monitor
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_test_exec_monitor_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::test_exec_monitor
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_test_exec_monitor_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::test_exec_monitor PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test_exec_monitor PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test_exec_monitor PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test_exec_monitor PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test_exec_monitor PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_exec_monitor_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::test #############

        set(boost_Boost_test_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_test_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_test_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_test_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_test_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_test_DEPS_TARGET)
            add_library(boost_Boost_test_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_test_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_test_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_test_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_test_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_test_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_test_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_test_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_test_DEPS_TARGET
                              boost_Boost_test_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_test"
                              "${boost_Boost_test_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::test
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_test_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::test
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_test_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::test PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::test PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_test_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::system #############

        set(boost_Boost_system_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_system_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_system_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_system_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_system_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_system_DEPS_TARGET)
            add_library(boost_Boost_system_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_system_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_system_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_system_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_system_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_system_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_system_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_system_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_system_DEPS_TARGET
                              boost_Boost_system_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_system"
                              "${boost_Boost_system_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::system
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_system_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::system
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_system_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::system PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::system PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::system PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::system PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::system PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_system_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::stacktrace_windbg_cached #############

        set(boost_Boost_stacktrace_windbg_cached_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_stacktrace_windbg_cached_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_stacktrace_windbg_cached_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_stacktrace_windbg_cached_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_stacktrace_windbg_cached_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_stacktrace_windbg_cached_DEPS_TARGET)
            add_library(boost_Boost_stacktrace_windbg_cached_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_stacktrace_windbg_cached_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_stacktrace_windbg_cached_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_stacktrace_windbg_cached_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_windbg_cached_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_windbg_cached_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_stacktrace_windbg_cached_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_windbg_cached_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_stacktrace_windbg_cached_DEPS_TARGET
                              boost_Boost_stacktrace_windbg_cached_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_stacktrace_windbg_cached"
                              "${boost_Boost_stacktrace_windbg_cached_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::stacktrace_windbg_cached
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_stacktrace_windbg_cached_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::stacktrace_windbg_cached
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_stacktrace_windbg_cached_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::stacktrace_windbg_cached PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg_cached PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg_cached PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg_cached PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg_cached PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_cached_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::stacktrace_windbg #############

        set(boost_Boost_stacktrace_windbg_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_stacktrace_windbg_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_stacktrace_windbg_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_stacktrace_windbg_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_stacktrace_windbg_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_stacktrace_windbg_DEPS_TARGET)
            add_library(boost_Boost_stacktrace_windbg_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_stacktrace_windbg_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_stacktrace_windbg_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_stacktrace_windbg_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_windbg_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_windbg_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_stacktrace_windbg_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_windbg_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_stacktrace_windbg_DEPS_TARGET
                              boost_Boost_stacktrace_windbg_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_stacktrace_windbg"
                              "${boost_Boost_stacktrace_windbg_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::stacktrace_windbg
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_stacktrace_windbg_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::stacktrace_windbg
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_stacktrace_windbg_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::stacktrace_windbg PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_windbg PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_windbg_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::stacktrace_noop #############

        set(boost_Boost_stacktrace_noop_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_stacktrace_noop_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_stacktrace_noop_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_stacktrace_noop_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_stacktrace_noop_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_stacktrace_noop_DEPS_TARGET)
            add_library(boost_Boost_stacktrace_noop_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_stacktrace_noop_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_stacktrace_noop_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_stacktrace_noop_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_noop_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_noop_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_stacktrace_noop_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_noop_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_stacktrace_noop_DEPS_TARGET
                              boost_Boost_stacktrace_noop_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_stacktrace_noop"
                              "${boost_Boost_stacktrace_noop_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::stacktrace_noop
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_stacktrace_noop_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::stacktrace_noop
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_stacktrace_noop_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::stacktrace_noop PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_noop PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_noop PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_noop PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace_noop PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_noop_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::stacktrace #############

        set(boost_Boost_stacktrace_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_stacktrace_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_stacktrace_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_stacktrace_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_stacktrace_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_stacktrace_DEPS_TARGET)
            add_library(boost_Boost_stacktrace_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_stacktrace_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_stacktrace_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_stacktrace_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_stacktrace_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_stacktrace_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_stacktrace_DEPS_TARGET
                              boost_Boost_stacktrace_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_stacktrace"
                              "${boost_Boost_stacktrace_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::stacktrace
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_stacktrace_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::stacktrace
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_stacktrace_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::stacktrace PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::stacktrace PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_stacktrace_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::serialization #############

        set(boost_Boost_serialization_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_serialization_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_serialization_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_serialization_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_serialization_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_serialization_DEPS_TARGET)
            add_library(boost_Boost_serialization_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_serialization_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_serialization_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_serialization_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_serialization_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_serialization_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_serialization_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_serialization_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_serialization_DEPS_TARGET
                              boost_Boost_serialization_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_serialization"
                              "${boost_Boost_serialization_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::serialization
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_serialization_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::serialization
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_serialization_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::serialization PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::serialization PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::serialization PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::serialization PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::serialization PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_serialization_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::regex #############

        set(boost_Boost_regex_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_regex_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_regex_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_regex_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_regex_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_regex_DEPS_TARGET)
            add_library(boost_Boost_regex_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_regex_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_regex_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_regex_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_regex_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_regex_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_regex_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_regex_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_regex_DEPS_TARGET
                              boost_Boost_regex_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_regex"
                              "${boost_Boost_regex_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::regex
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_regex_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::regex
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_regex_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::regex PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::regex PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::regex PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::regex PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::regex PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_regex_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::program_options #############

        set(boost_Boost_program_options_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_program_options_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_program_options_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_program_options_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_program_options_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_program_options_DEPS_TARGET)
            add_library(boost_Boost_program_options_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_program_options_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_program_options_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_program_options_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_program_options_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_program_options_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_program_options_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_program_options_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_program_options_DEPS_TARGET
                              boost_Boost_program_options_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_program_options"
                              "${boost_Boost_program_options_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::program_options
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_program_options_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::program_options
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_program_options_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::program_options PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::program_options PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::program_options PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::program_options PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::program_options PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_program_options_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math_tr1l #############

        set(boost_Boost_math_tr1l_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_tr1l_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_tr1l_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_tr1l_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_tr1l_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_tr1l_DEPS_TARGET)
            add_library(boost_Boost_math_tr1l_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_tr1l_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_tr1l_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_tr1l_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1l_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1l_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_tr1l_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1l_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_tr1l_DEPS_TARGET
                              boost_Boost_math_tr1l_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math_tr1l"
                              "${boost_Boost_math_tr1l_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math_tr1l
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_tr1l_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math_tr1l
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_tr1l_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math_tr1l PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1l PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1l PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1l PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1l PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1l_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math_tr1f #############

        set(boost_Boost_math_tr1f_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_tr1f_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_tr1f_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_tr1f_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_tr1f_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_tr1f_DEPS_TARGET)
            add_library(boost_Boost_math_tr1f_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_tr1f_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_tr1f_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_tr1f_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1f_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1f_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_tr1f_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1f_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_tr1f_DEPS_TARGET
                              boost_Boost_math_tr1f_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math_tr1f"
                              "${boost_Boost_math_tr1f_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math_tr1f
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_tr1f_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math_tr1f
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_tr1f_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math_tr1f PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1f PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1f PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1f PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1f PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1f_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math_tr1 #############

        set(boost_Boost_math_tr1_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_tr1_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_tr1_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_tr1_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_tr1_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_tr1_DEPS_TARGET)
            add_library(boost_Boost_math_tr1_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_tr1_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_tr1_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_tr1_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_tr1_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_tr1_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_tr1_DEPS_TARGET
                              boost_Boost_math_tr1_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math_tr1"
                              "${boost_Boost_math_tr1_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math_tr1
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_tr1_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math_tr1
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_tr1_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math_tr1 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1 PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_tr1 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_tr1_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math_c99l #############

        set(boost_Boost_math_c99l_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_c99l_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_c99l_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_c99l_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_c99l_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_c99l_DEPS_TARGET)
            add_library(boost_Boost_math_c99l_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_c99l_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_c99l_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_c99l_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99l_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99l_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_c99l_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99l_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_c99l_DEPS_TARGET
                              boost_Boost_math_c99l_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math_c99l"
                              "${boost_Boost_math_c99l_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math_c99l
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_c99l_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math_c99l
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_c99l_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math_c99l PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99l PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99l PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99l PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99l PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99l_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math_c99f #############

        set(boost_Boost_math_c99f_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_c99f_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_c99f_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_c99f_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_c99f_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_c99f_DEPS_TARGET)
            add_library(boost_Boost_math_c99f_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_c99f_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_c99f_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_c99f_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99f_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99f_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_c99f_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99f_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_c99f_DEPS_TARGET
                              boost_Boost_math_c99f_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math_c99f"
                              "${boost_Boost_math_c99f_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math_c99f
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_c99f_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math_c99f
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_c99f_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math_c99f PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99f PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99f PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99f PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99f PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99f_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math_c99 #############

        set(boost_Boost_math_c99_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_c99_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_c99_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_c99_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_c99_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_c99_DEPS_TARGET)
            add_library(boost_Boost_math_c99_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_c99_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_c99_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_c99_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_c99_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_c99_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_c99_DEPS_TARGET
                              boost_Boost_math_c99_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math_c99"
                              "${boost_Boost_math_c99_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math_c99
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_c99_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math_c99
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_c99_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math_c99 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99 PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math_c99 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_c99_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::math #############

        set(boost_Boost_math_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_math_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_math_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_math_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_math_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_math_DEPS_TARGET)
            add_library(boost_Boost_math_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_math_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_math_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_math_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_math_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_math_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_math_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_math_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_math_DEPS_TARGET
                              boost_Boost_math_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_math"
                              "${boost_Boost_math_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::math
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_math_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::math
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_math_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::math PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::math PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_math_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::exception #############

        set(boost_Boost_exception_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_exception_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_exception_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_exception_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_exception_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_exception_DEPS_TARGET)
            add_library(boost_Boost_exception_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_exception_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_exception_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_exception_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_exception_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_exception_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_exception_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_exception_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_exception_DEPS_TARGET
                              boost_Boost_exception_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_exception"
                              "${boost_Boost_exception_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::exception
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_exception_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::exception
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_exception_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::exception PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::exception PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::exception PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::exception PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::exception PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_exception_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::date_time #############

        set(boost_Boost_date_time_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_date_time_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_date_time_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_date_time_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_date_time_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_date_time_DEPS_TARGET)
            add_library(boost_Boost_date_time_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_date_time_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_date_time_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_date_time_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_date_time_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_date_time_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_date_time_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_date_time_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_date_time_DEPS_TARGET
                              boost_Boost_date_time_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_date_time"
                              "${boost_Boost_date_time_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::date_time
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_date_time_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::date_time
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_date_time_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::date_time PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::date_time PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::date_time PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::date_time PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::date_time PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_date_time_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::context #############

        set(boost_Boost_context_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_context_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_context_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_context_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_context_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_context_DEPS_TARGET)
            add_library(boost_Boost_context_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_context_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_context_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_context_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_context_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_context_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_context_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_context_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_context_DEPS_TARGET
                              boost_Boost_context_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_context"
                              "${boost_Boost_context_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::context
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_context_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::context
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_context_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::context PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::context PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::context PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::context PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::context PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_context_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::container #############

        set(boost_Boost_container_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_container_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_container_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_container_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_container_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_container_DEPS_TARGET)
            add_library(boost_Boost_container_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_container_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_container_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_container_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_container_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_container_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_container_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_container_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_container_DEPS_TARGET
                              boost_Boost_container_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_container"
                              "${boost_Boost_container_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::container
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_container_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::container
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_container_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::container PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::container PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::container PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::container PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::container PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_container_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::atomic #############

        set(boost_Boost_atomic_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_atomic_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_atomic_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_atomic_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_atomic_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_atomic_DEPS_TARGET)
            add_library(boost_Boost_atomic_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_atomic_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_atomic_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_atomic_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_atomic_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_atomic_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_atomic_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_atomic_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_atomic_DEPS_TARGET
                              boost_Boost_atomic_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_atomic"
                              "${boost_Boost_atomic_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::atomic
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_atomic_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::atomic
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_atomic_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::atomic PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::atomic PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::atomic PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::atomic PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::atomic PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_atomic_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT boost::_libboost #############

        set(boost_boost__libboost_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_boost__libboost_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_boost__libboost_FRAMEWORKS_RELWITHDEBINFO}" "${boost_boost__libboost_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_boost__libboost_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_boost__libboost_DEPS_TARGET)
            add_library(boost_boost__libboost_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_boost__libboost_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_boost__libboost_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_boost__libboost_LIBS_RELWITHDEBINFO}"
                              "${boost_boost__libboost_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_boost__libboost_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_boost__libboost_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_boost__libboost_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_boost__libboost_DEPS_TARGET
                              boost_boost__libboost_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_boost__libboost"
                              "${boost_boost__libboost_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET boost::_libboost
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_boost__libboost_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET boost::_libboost
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_boost__libboost_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET boost::_libboost PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET boost::_libboost PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET boost::_libboost PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET boost::_libboost PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET boost::_libboost PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_boost__libboost_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::boost #############

        set(boost_Boost_boost_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_boost_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_boost_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_boost_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_boost_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_boost_DEPS_TARGET)
            add_library(boost_Boost_boost_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_boost_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_boost_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_boost_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_boost_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_boost_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_boost_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_boost_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_boost_DEPS_TARGET
                              boost_Boost_boost_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_boost"
                              "${boost_Boost_boost_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::boost
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_boost_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::boost
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_boost_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::boost PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::boost PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::boost PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::boost PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::boost PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_boost_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::headers #############

        set(boost_Boost_headers_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_headers_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_headers_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_headers_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_headers_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_headers_DEPS_TARGET)
            add_library(boost_Boost_headers_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_headers_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_headers_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_headers_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_headers_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_headers_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_headers_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_headers_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_headers_DEPS_TARGET
                              boost_Boost_headers_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_headers"
                              "${boost_Boost_headers_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::headers
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_headers_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::headers
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_headers_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::headers PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::headers PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::headers PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::headers PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::headers PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_headers_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::dynamic_linking #############

        set(boost_Boost_dynamic_linking_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_dynamic_linking_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_dynamic_linking_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_dynamic_linking_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_dynamic_linking_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_dynamic_linking_DEPS_TARGET)
            add_library(boost_Boost_dynamic_linking_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_dynamic_linking_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_dynamic_linking_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_dynamic_linking_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_dynamic_linking_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_dynamic_linking_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_dynamic_linking_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_dynamic_linking_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_dynamic_linking_DEPS_TARGET
                              boost_Boost_dynamic_linking_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_dynamic_linking"
                              "${boost_Boost_dynamic_linking_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::dynamic_linking
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_dynamic_linking_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::dynamic_linking
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_dynamic_linking_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::dynamic_linking PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::dynamic_linking PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::dynamic_linking PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::dynamic_linking PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::dynamic_linking PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_dynamic_linking_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::disable_autolinking #############

        set(boost_Boost_disable_autolinking_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_disable_autolinking_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_disable_autolinking_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_disable_autolinking_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_disable_autolinking_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_disable_autolinking_DEPS_TARGET)
            add_library(boost_Boost_disable_autolinking_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_disable_autolinking_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_disable_autolinking_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_disable_autolinking_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_disable_autolinking_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_disable_autolinking_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_disable_autolinking_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_disable_autolinking_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_disable_autolinking_DEPS_TARGET
                              boost_Boost_disable_autolinking_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_disable_autolinking"
                              "${boost_Boost_disable_autolinking_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::disable_autolinking
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_disable_autolinking_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::disable_autolinking
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_disable_autolinking_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::disable_autolinking PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::disable_autolinking PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::disable_autolinking PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::disable_autolinking PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::disable_autolinking PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_disable_autolinking_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT Boost::diagnostic_definitions #############

        set(boost_Boost_diagnostic_definitions_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(boost_Boost_diagnostic_definitions_FRAMEWORKS_FOUND_RELWITHDEBINFO "${boost_Boost_diagnostic_definitions_FRAMEWORKS_RELWITHDEBINFO}" "${boost_Boost_diagnostic_definitions_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(boost_Boost_diagnostic_definitions_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET boost_Boost_diagnostic_definitions_DEPS_TARGET)
            add_library(boost_Boost_diagnostic_definitions_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET boost_Boost_diagnostic_definitions_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'boost_Boost_diagnostic_definitions_DEPS_TARGET' to all of them
        conan_package_library_targets("${boost_Boost_diagnostic_definitions_LIBS_RELWITHDEBINFO}"
                              "${boost_Boost_diagnostic_definitions_LIB_DIRS_RELWITHDEBINFO}"
                              "${boost_Boost_diagnostic_definitions_BIN_DIRS_RELWITHDEBINFO}" # package_bindir
                              "${boost_Boost_diagnostic_definitions_LIBRARY_TYPE_RELWITHDEBINFO}"
                              "${boost_Boost_diagnostic_definitions_IS_HOST_WINDOWS_RELWITHDEBINFO}"
                              boost_Boost_diagnostic_definitions_DEPS_TARGET
                              boost_Boost_diagnostic_definitions_LIBRARIES_TARGETS
                              "_RELWITHDEBINFO"
                              "boost_Boost_diagnostic_definitions"
                              "${boost_Boost_diagnostic_definitions_NO_SONAME_MODE_RELWITHDEBINFO}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Boost::diagnostic_definitions
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_LIBRARIES_TARGETS}>
                     APPEND)

        if("${boost_Boost_diagnostic_definitions_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Boost::diagnostic_definitions
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         boost_Boost_diagnostic_definitions_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Boost::diagnostic_definitions PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::diagnostic_definitions PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::diagnostic_definitions PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_LIB_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::diagnostic_definitions PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Boost::diagnostic_definitions PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::log_setup APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::log APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::locale APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::iostreams APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::graph APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::contract APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::wave APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::unit_test_framework APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::type_erasure APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::thread APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::random APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::prg_exec_monitor APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::nowide APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::json APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::filesystem APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::coroutine APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::chrono APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::wserialization APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::url APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::timer APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::test_exec_monitor APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::test APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::system APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::stacktrace_windbg_cached APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::stacktrace_windbg APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::stacktrace_noop APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::stacktrace APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::serialization APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::regex APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::program_options APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math_tr1l APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math_tr1f APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math_tr1 APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math_c99l APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math_c99f APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math_c99 APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::math APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::exception APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::date_time APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::context APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::container APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::atomic APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES boost::_libboost APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::boost APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::headers APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::dynamic_linking APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::disable_autolinking APPEND)
    set_property(TARGET boost::boost PROPERTY INTERFACE_LINK_LIBRARIES Boost::diagnostic_definitions APPEND)

########## For the modules (FindXXX)
set(boost_LIBRARIES_RELWITHDEBINFO boost::boost)
