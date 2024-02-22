########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND boost_COMPONENT_NAMES Boost::diagnostic_definitions Boost::disable_autolinking Boost::dynamic_linking Boost::headers Boost::boost boost::_libboost Boost::atomic Boost::container Boost::context Boost::date_time Boost::exception Boost::math Boost::math_c99 Boost::math_c99f Boost::math_c99l Boost::math_tr1 Boost::math_tr1f Boost::math_tr1l Boost::program_options Boost::regex Boost::serialization Boost::stacktrace Boost::stacktrace_noop Boost::stacktrace_windbg Boost::stacktrace_windbg_cached Boost::system Boost::test Boost::test_exec_monitor Boost::timer Boost::url Boost::wserialization Boost::chrono Boost::coroutine Boost::filesystem Boost::json Boost::nowide Boost::prg_exec_monitor Boost::random Boost::thread Boost::type_erasure Boost::unit_test_framework Boost::wave Boost::contract Boost::graph Boost::iostreams Boost::locale Boost::log Boost::log_setup)
list(REMOVE_DUPLICATES boost_COMPONENT_NAMES)
list(APPEND boost_FIND_DEPENDENCY_NAMES ZLIB BZip2)
list(REMOVE_DUPLICATES boost_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")
set(BZip2_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(boost_PACKAGE_FOLDER_RELWITHDEBINFO "C:/Users/ast12/.conan2/p/b/boost9948afde399b3/p")
set(boost_BUILD_MODULES_PATHS_RELWITHDEBINFO )


set(boost_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_RES_DIRS_RELWITHDEBINFO )
set(boost_DEFINITIONS_RELWITHDEBINFO "-DBOOST_STACKTRACE_USE_WINDBG_CACHED"
			"-DBOOST_STACKTRACE_USE_WINDBG"
			"-DBOOST_STACKTRACE_USE_NOOP"
			"-DBOOST_ALL_NO_LIB")
set(boost_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_OBJECTS_RELWITHDEBINFO )
set(boost_COMPILE_DEFINITIONS_RELWITHDEBINFO "BOOST_STACKTRACE_USE_WINDBG_CACHED"
			"BOOST_STACKTRACE_USE_WINDBG"
			"BOOST_STACKTRACE_USE_NOOP"
			"BOOST_ALL_NO_LIB")
set(boost_COMPILE_OPTIONS_C_RELWITHDEBINFO )
set(boost_COMPILE_OPTIONS_CXX_RELWITHDEBINFO )
set(boost_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_BIN_DIRS_RELWITHDEBINFO )
set(boost_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_LIBS_RELWITHDEBINFO libboost_log_setup libboost_log libboost_locale libboost_iostreams libboost_graph libboost_contract libboost_wave libboost_unit_test_framework libboost_type_erasure libboost_thread libboost_random libboost_prg_exec_monitor libboost_nowide libboost_json libboost_filesystem libboost_coroutine libboost_chrono libboost_wserialization libboost_url libboost_timer libboost_test_exec_monitor libboost_stacktrace_windbg_cached libboost_stacktrace_windbg libboost_stacktrace_noop libboost_serialization libboost_regex libboost_program_options libboost_math_tr1l libboost_math_tr1f libboost_math_tr1 libboost_math_c99l libboost_math_c99f libboost_math_c99 libboost_exception libboost_date_time libboost_context libboost_container libboost_atomic)
set(boost_SYSTEM_LIBS_RELWITHDEBINFO ole32 dbgeng bcrypt)
set(boost_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_FRAMEWORKS_RELWITHDEBINFO )
set(boost_BUILD_DIRS_RELWITHDEBINFO )
set(boost_NO_SONAME_MODE_RELWITHDEBINFO FALSE)


# COMPOUND VARIABLES
set(boost_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
set(boost_LINKER_FLAGS_RELWITHDEBINFO
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_EXE_LINK_FLAGS_RELWITHDEBINFO}>")


set(boost_COMPONENTS_RELWITHDEBINFO Boost::diagnostic_definitions Boost::disable_autolinking Boost::dynamic_linking Boost::headers Boost::boost boost::_libboost Boost::atomic Boost::container Boost::context Boost::date_time Boost::exception Boost::math Boost::math_c99 Boost::math_c99f Boost::math_c99l Boost::math_tr1 Boost::math_tr1f Boost::math_tr1l Boost::program_options Boost::regex Boost::serialization Boost::stacktrace Boost::stacktrace_noop Boost::stacktrace_windbg Boost::stacktrace_windbg_cached Boost::system Boost::test Boost::test_exec_monitor Boost::timer Boost::url Boost::wserialization Boost::chrono Boost::coroutine Boost::filesystem Boost::json Boost::nowide Boost::prg_exec_monitor Boost::random Boost::thread Boost::type_erasure Boost::unit_test_framework Boost::wave Boost::contract Boost::graph Boost::iostreams Boost::locale Boost::log Boost::log_setup)
########### COMPONENT Boost::log_setup VARIABLES ############################################

set(boost_Boost_log_setup_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_log_setup_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_log_setup_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_log_setup_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_log_setup_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_log_setup_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_log_setup_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_log_setup_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_log_setup_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_log_setup_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_log_setup_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_log_setup_LIBS_RELWITHDEBINFO libboost_log_setup)
set(boost_Boost_log_setup_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_log_setup_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_log_setup_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_log_setup_DEPENDENCIES_RELWITHDEBINFO Boost::log boost::_libboost)
set(boost_Boost_log_setup_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_log_setup_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_log_setup_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_log_setup_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_log_setup_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_log_setup_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_log_setup_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_log_setup_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_log_setup_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_log_setup_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::log VARIABLES ############################################

set(boost_Boost_log_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_log_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_log_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_log_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_log_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_log_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_log_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_log_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_log_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_log_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_log_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_log_LIBS_RELWITHDEBINFO libboost_log)
set(boost_Boost_log_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_log_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_log_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_log_DEPENDENCIES_RELWITHDEBINFO Boost::atomic Boost::date_time Boost::exception Boost::filesystem Boost::random Boost::regex Boost::system Boost::thread boost::_libboost)
set(boost_Boost_log_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_log_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_log_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_log_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_log_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_log_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_log_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_log_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_log_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_log_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::locale VARIABLES ############################################

set(boost_Boost_locale_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_locale_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_locale_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_locale_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_locale_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_locale_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_locale_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_locale_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_locale_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_locale_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_locale_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_locale_LIBS_RELWITHDEBINFO libboost_locale)
set(boost_Boost_locale_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_locale_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_locale_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_locale_DEPENDENCIES_RELWITHDEBINFO Boost::thread boost::_libboost)
set(boost_Boost_locale_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_locale_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_locale_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_locale_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_locale_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_locale_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_locale_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_locale_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_locale_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_locale_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::iostreams VARIABLES ############################################

set(boost_Boost_iostreams_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_iostreams_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_iostreams_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_iostreams_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_iostreams_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_iostreams_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_iostreams_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_iostreams_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_iostreams_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_iostreams_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_iostreams_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_iostreams_LIBS_RELWITHDEBINFO libboost_iostreams)
set(boost_Boost_iostreams_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_iostreams_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_iostreams_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_iostreams_DEPENDENCIES_RELWITHDEBINFO Boost::random Boost::regex boost::_libboost BZip2::BZip2 ZLIB::ZLIB)
set(boost_Boost_iostreams_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_iostreams_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_iostreams_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_iostreams_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_iostreams_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_iostreams_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_iostreams_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_iostreams_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_iostreams_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_iostreams_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::graph VARIABLES ############################################

set(boost_Boost_graph_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_graph_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_graph_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_graph_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_graph_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_graph_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_graph_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_graph_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_graph_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_graph_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_graph_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_graph_LIBS_RELWITHDEBINFO libboost_graph)
set(boost_Boost_graph_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_graph_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_graph_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_graph_DEPENDENCIES_RELWITHDEBINFO Boost::math Boost::random Boost::regex Boost::serialization boost::_libboost)
set(boost_Boost_graph_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_graph_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_graph_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_graph_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_graph_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_graph_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_graph_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_graph_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_graph_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_graph_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::contract VARIABLES ############################################

set(boost_Boost_contract_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_contract_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_contract_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_contract_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_contract_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_contract_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_contract_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_contract_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_contract_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_contract_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_contract_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_contract_LIBS_RELWITHDEBINFO libboost_contract)
set(boost_Boost_contract_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_contract_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_contract_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_contract_DEPENDENCIES_RELWITHDEBINFO Boost::exception Boost::thread boost::_libboost)
set(boost_Boost_contract_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_contract_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_contract_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_contract_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_contract_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_contract_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_contract_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_contract_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_contract_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_contract_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::wave VARIABLES ############################################

set(boost_Boost_wave_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_wave_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_wave_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_wave_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_wave_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_wave_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_wave_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_wave_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_wave_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_wave_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_wave_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_wave_LIBS_RELWITHDEBINFO libboost_wave)
set(boost_Boost_wave_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_wave_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_wave_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_wave_DEPENDENCIES_RELWITHDEBINFO Boost::filesystem Boost::serialization boost::_libboost)
set(boost_Boost_wave_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_wave_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_wave_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_wave_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_wave_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_wave_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_wave_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_wave_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_wave_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_wave_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::unit_test_framework VARIABLES ############################################

set(boost_Boost_unit_test_framework_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_unit_test_framework_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_unit_test_framework_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_unit_test_framework_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_unit_test_framework_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_unit_test_framework_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_unit_test_framework_LIBS_RELWITHDEBINFO libboost_unit_test_framework)
set(boost_Boost_unit_test_framework_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_DEPENDENCIES_RELWITHDEBINFO Boost::prg_exec_monitor Boost::test Boost::test_exec_monitor boost::_libboost)
set(boost_Boost_unit_test_framework_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_unit_test_framework_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_unit_test_framework_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_unit_test_framework_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_unit_test_framework_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_unit_test_framework_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_unit_test_framework_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_unit_test_framework_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_unit_test_framework_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::type_erasure VARIABLES ############################################

set(boost_Boost_type_erasure_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_type_erasure_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_type_erasure_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_type_erasure_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_type_erasure_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_type_erasure_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_type_erasure_LIBS_RELWITHDEBINFO libboost_type_erasure)
set(boost_Boost_type_erasure_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_DEPENDENCIES_RELWITHDEBINFO Boost::thread boost::_libboost)
set(boost_Boost_type_erasure_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_type_erasure_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_type_erasure_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_type_erasure_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_type_erasure_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_type_erasure_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_type_erasure_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_type_erasure_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_type_erasure_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::thread VARIABLES ############################################

set(boost_Boost_thread_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_thread_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_thread_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_thread_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_thread_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_thread_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_thread_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_thread_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_thread_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_thread_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_thread_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_thread_LIBS_RELWITHDEBINFO libboost_thread)
set(boost_Boost_thread_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_thread_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_thread_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_thread_DEPENDENCIES_RELWITHDEBINFO Boost::atomic Boost::chrono Boost::container Boost::date_time Boost::exception Boost::system boost::_libboost)
set(boost_Boost_thread_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_thread_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_thread_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_thread_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_thread_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_thread_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_thread_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_thread_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_thread_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_thread_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::random VARIABLES ############################################

set(boost_Boost_random_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_random_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_random_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_random_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_random_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_random_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_random_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_random_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_random_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_random_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_random_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_random_LIBS_RELWITHDEBINFO libboost_random)
set(boost_Boost_random_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_random_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_random_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_random_DEPENDENCIES_RELWITHDEBINFO Boost::system boost::_libboost)
set(boost_Boost_random_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_random_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_random_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_random_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_random_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_random_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_random_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_random_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_random_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_random_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::prg_exec_monitor VARIABLES ############################################

set(boost_Boost_prg_exec_monitor_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_prg_exec_monitor_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_prg_exec_monitor_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_prg_exec_monitor_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_prg_exec_monitor_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_prg_exec_monitor_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_prg_exec_monitor_LIBS_RELWITHDEBINFO libboost_prg_exec_monitor)
set(boost_Boost_prg_exec_monitor_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_DEPENDENCIES_RELWITHDEBINFO Boost::test boost::_libboost)
set(boost_Boost_prg_exec_monitor_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_prg_exec_monitor_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_prg_exec_monitor_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_prg_exec_monitor_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_prg_exec_monitor_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_prg_exec_monitor_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_prg_exec_monitor_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_prg_exec_monitor_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_prg_exec_monitor_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::nowide VARIABLES ############################################

set(boost_Boost_nowide_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_nowide_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_nowide_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_nowide_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_nowide_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_nowide_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_nowide_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_nowide_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_nowide_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_nowide_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_nowide_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_nowide_LIBS_RELWITHDEBINFO libboost_nowide)
set(boost_Boost_nowide_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_nowide_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_nowide_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_nowide_DEPENDENCIES_RELWITHDEBINFO Boost::filesystem boost::_libboost)
set(boost_Boost_nowide_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_nowide_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_nowide_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_nowide_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_nowide_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_nowide_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_nowide_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_nowide_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_nowide_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_nowide_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::json VARIABLES ############################################

set(boost_Boost_json_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_json_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_json_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_json_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_json_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_json_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_json_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_json_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_json_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_json_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_json_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_json_LIBS_RELWITHDEBINFO libboost_json)
set(boost_Boost_json_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_json_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_json_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_json_DEPENDENCIES_RELWITHDEBINFO Boost::container Boost::system boost::_libboost)
set(boost_Boost_json_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_json_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_json_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_json_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_json_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_json_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_json_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_json_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_json_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_json_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::filesystem VARIABLES ############################################

set(boost_Boost_filesystem_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_filesystem_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_filesystem_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_filesystem_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_filesystem_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_filesystem_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_filesystem_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_filesystem_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_filesystem_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_filesystem_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_filesystem_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_filesystem_LIBS_RELWITHDEBINFO libboost_filesystem)
set(boost_Boost_filesystem_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_filesystem_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_filesystem_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_filesystem_DEPENDENCIES_RELWITHDEBINFO Boost::atomic Boost::system boost::_libboost)
set(boost_Boost_filesystem_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_filesystem_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_filesystem_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_filesystem_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_filesystem_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_filesystem_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_filesystem_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_filesystem_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_filesystem_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_filesystem_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::coroutine VARIABLES ############################################

set(boost_Boost_coroutine_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_coroutine_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_coroutine_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_coroutine_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_coroutine_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_coroutine_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_coroutine_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_coroutine_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_coroutine_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_coroutine_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_coroutine_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_coroutine_LIBS_RELWITHDEBINFO libboost_coroutine)
set(boost_Boost_coroutine_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_coroutine_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_coroutine_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_coroutine_DEPENDENCIES_RELWITHDEBINFO Boost::context Boost::exception Boost::system boost::_libboost)
set(boost_Boost_coroutine_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_coroutine_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_coroutine_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_coroutine_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_coroutine_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_coroutine_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_coroutine_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_coroutine_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_coroutine_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_coroutine_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::chrono VARIABLES ############################################

set(boost_Boost_chrono_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_chrono_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_chrono_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_chrono_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_chrono_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_chrono_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_chrono_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_chrono_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_chrono_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_chrono_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_chrono_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_chrono_LIBS_RELWITHDEBINFO libboost_chrono)
set(boost_Boost_chrono_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_chrono_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_chrono_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_chrono_DEPENDENCIES_RELWITHDEBINFO Boost::system boost::_libboost)
set(boost_Boost_chrono_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_chrono_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_chrono_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_chrono_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_chrono_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_chrono_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_chrono_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_chrono_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_chrono_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_chrono_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::wserialization VARIABLES ############################################

set(boost_Boost_wserialization_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_wserialization_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_wserialization_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_wserialization_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_wserialization_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_wserialization_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_wserialization_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_wserialization_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_wserialization_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_wserialization_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_wserialization_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_wserialization_LIBS_RELWITHDEBINFO libboost_wserialization)
set(boost_Boost_wserialization_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_wserialization_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_wserialization_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_wserialization_DEPENDENCIES_RELWITHDEBINFO Boost::serialization boost::_libboost)
set(boost_Boost_wserialization_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_wserialization_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_wserialization_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_wserialization_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_wserialization_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_wserialization_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_wserialization_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_wserialization_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_wserialization_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_wserialization_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::url VARIABLES ############################################

set(boost_Boost_url_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_url_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_url_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_url_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_url_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_url_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_url_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_url_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_url_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_url_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_url_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_url_LIBS_RELWITHDEBINFO libboost_url)
set(boost_Boost_url_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_url_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_url_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_url_DEPENDENCIES_RELWITHDEBINFO Boost::system boost::_libboost)
set(boost_Boost_url_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_url_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_url_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_url_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_url_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_url_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_url_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_url_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_url_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_url_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::timer VARIABLES ############################################

set(boost_Boost_timer_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_timer_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_timer_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_timer_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_timer_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_timer_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_timer_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_timer_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_timer_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_timer_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_timer_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_timer_LIBS_RELWITHDEBINFO libboost_timer)
set(boost_Boost_timer_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_timer_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_timer_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_timer_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_timer_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_timer_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_timer_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_timer_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_timer_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_timer_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_timer_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_timer_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_timer_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_timer_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::test_exec_monitor VARIABLES ############################################

set(boost_Boost_test_exec_monitor_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_test_exec_monitor_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_test_exec_monitor_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_test_exec_monitor_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_test_exec_monitor_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_test_exec_monitor_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_test_exec_monitor_LIBS_RELWITHDEBINFO libboost_test_exec_monitor)
set(boost_Boost_test_exec_monitor_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_DEPENDENCIES_RELWITHDEBINFO Boost::test boost::_libboost)
set(boost_Boost_test_exec_monitor_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_test_exec_monitor_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_test_exec_monitor_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_test_exec_monitor_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_test_exec_monitor_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_test_exec_monitor_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_test_exec_monitor_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_test_exec_monitor_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_test_exec_monitor_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::test VARIABLES ############################################

set(boost_Boost_test_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_test_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_test_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_test_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_test_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_test_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_test_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_test_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_test_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_test_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_test_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_test_LIBS_RELWITHDEBINFO )
set(boost_Boost_test_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_test_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_test_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_test_DEPENDENCIES_RELWITHDEBINFO Boost::exception boost::_libboost)
set(boost_Boost_test_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_test_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_test_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_test_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_test_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_test_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_test_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_test_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_test_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_test_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::system VARIABLES ############################################

set(boost_Boost_system_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_system_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_system_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_system_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_system_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_system_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_system_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_system_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_system_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_system_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_system_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_system_LIBS_RELWITHDEBINFO )
set(boost_Boost_system_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_system_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_system_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_system_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_system_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_system_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_system_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_system_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_system_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_system_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_system_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_system_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_system_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_system_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::stacktrace_windbg_cached VARIABLES ############################################

set(boost_Boost_stacktrace_windbg_cached_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_stacktrace_windbg_cached_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_stacktrace_windbg_cached_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_stacktrace_windbg_cached_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_stacktrace_windbg_cached_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_DEFINITIONS_RELWITHDEBINFO "-DBOOST_STACKTRACE_USE_WINDBG_CACHED")
set(boost_Boost_stacktrace_windbg_cached_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_COMPILE_DEFINITIONS_RELWITHDEBINFO "BOOST_STACKTRACE_USE_WINDBG_CACHED")
set(boost_Boost_stacktrace_windbg_cached_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_windbg_cached_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_windbg_cached_LIBS_RELWITHDEBINFO libboost_stacktrace_windbg_cached)
set(boost_Boost_stacktrace_windbg_cached_SYSTEM_LIBS_RELWITHDEBINFO ole32 dbgeng)
set(boost_Boost_stacktrace_windbg_cached_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_DEPENDENCIES_RELWITHDEBINFO Boost::stacktrace boost::_libboost)
set(boost_Boost_stacktrace_windbg_cached_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_cached_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_stacktrace_windbg_cached_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_stacktrace_windbg_cached_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_stacktrace_windbg_cached_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_stacktrace_windbg_cached_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_stacktrace_windbg_cached_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_stacktrace_windbg_cached_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_stacktrace_windbg_cached_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::stacktrace_windbg VARIABLES ############################################

set(boost_Boost_stacktrace_windbg_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_stacktrace_windbg_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_stacktrace_windbg_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_stacktrace_windbg_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_stacktrace_windbg_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_DEFINITIONS_RELWITHDEBINFO "-DBOOST_STACKTRACE_USE_WINDBG")
set(boost_Boost_stacktrace_windbg_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_COMPILE_DEFINITIONS_RELWITHDEBINFO "BOOST_STACKTRACE_USE_WINDBG")
set(boost_Boost_stacktrace_windbg_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_windbg_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_windbg_LIBS_RELWITHDEBINFO libboost_stacktrace_windbg)
set(boost_Boost_stacktrace_windbg_SYSTEM_LIBS_RELWITHDEBINFO ole32 dbgeng)
set(boost_Boost_stacktrace_windbg_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_DEPENDENCIES_RELWITHDEBINFO Boost::stacktrace boost::_libboost)
set(boost_Boost_stacktrace_windbg_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_windbg_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_stacktrace_windbg_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_stacktrace_windbg_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_stacktrace_windbg_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_stacktrace_windbg_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_stacktrace_windbg_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_stacktrace_windbg_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_stacktrace_windbg_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::stacktrace_noop VARIABLES ############################################

set(boost_Boost_stacktrace_noop_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_stacktrace_noop_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_stacktrace_noop_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_stacktrace_noop_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_stacktrace_noop_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_DEFINITIONS_RELWITHDEBINFO "-DBOOST_STACKTRACE_USE_NOOP")
set(boost_Boost_stacktrace_noop_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_COMPILE_DEFINITIONS_RELWITHDEBINFO "BOOST_STACKTRACE_USE_NOOP")
set(boost_Boost_stacktrace_noop_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_noop_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_noop_LIBS_RELWITHDEBINFO libboost_stacktrace_noop)
set(boost_Boost_stacktrace_noop_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_DEPENDENCIES_RELWITHDEBINFO Boost::stacktrace boost::_libboost)
set(boost_Boost_stacktrace_noop_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_noop_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_stacktrace_noop_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_stacktrace_noop_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_stacktrace_noop_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_stacktrace_noop_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_stacktrace_noop_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_stacktrace_noop_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_stacktrace_noop_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::stacktrace VARIABLES ############################################

set(boost_Boost_stacktrace_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_stacktrace_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_stacktrace_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_stacktrace_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_stacktrace_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_stacktrace_LIBS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_stacktrace_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_stacktrace_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_stacktrace_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_stacktrace_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_stacktrace_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_stacktrace_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_stacktrace_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_stacktrace_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_stacktrace_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::serialization VARIABLES ############################################

set(boost_Boost_serialization_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_serialization_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_serialization_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_serialization_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_serialization_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_serialization_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_serialization_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_serialization_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_serialization_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_serialization_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_serialization_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_serialization_LIBS_RELWITHDEBINFO libboost_serialization)
set(boost_Boost_serialization_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_serialization_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_serialization_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_serialization_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_serialization_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_serialization_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_serialization_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_serialization_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_serialization_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_serialization_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_serialization_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_serialization_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_serialization_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_serialization_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::regex VARIABLES ############################################

set(boost_Boost_regex_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_regex_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_regex_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_regex_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_regex_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_regex_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_regex_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_regex_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_regex_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_regex_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_regex_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_regex_LIBS_RELWITHDEBINFO libboost_regex)
set(boost_Boost_regex_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_regex_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_regex_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_regex_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_regex_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_regex_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_regex_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_regex_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_regex_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_regex_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_regex_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_regex_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_regex_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_regex_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::program_options VARIABLES ############################################

set(boost_Boost_program_options_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_program_options_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_program_options_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_program_options_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_program_options_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_program_options_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_program_options_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_program_options_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_program_options_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_program_options_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_program_options_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_program_options_LIBS_RELWITHDEBINFO libboost_program_options)
set(boost_Boost_program_options_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_program_options_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_program_options_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_program_options_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_program_options_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_program_options_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_program_options_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_program_options_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_program_options_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_program_options_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_program_options_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_program_options_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_program_options_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_program_options_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math_tr1l VARIABLES ############################################

set(boost_Boost_math_tr1l_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_tr1l_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_tr1l_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_tr1l_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_tr1l_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_tr1l_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_tr1l_LIBS_RELWITHDEBINFO libboost_math_tr1l)
set(boost_Boost_math_tr1l_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_DEPENDENCIES_RELWITHDEBINFO Boost::math boost::_libboost)
set(boost_Boost_math_tr1l_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_tr1l_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_tr1l_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_tr1l_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_tr1l_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_tr1l_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_tr1l_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_tr1l_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_tr1l_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math_tr1f VARIABLES ############################################

set(boost_Boost_math_tr1f_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_tr1f_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_tr1f_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_tr1f_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_tr1f_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_tr1f_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_tr1f_LIBS_RELWITHDEBINFO libboost_math_tr1f)
set(boost_Boost_math_tr1f_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_DEPENDENCIES_RELWITHDEBINFO Boost::math boost::_libboost)
set(boost_Boost_math_tr1f_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_tr1f_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_tr1f_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_tr1f_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_tr1f_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_tr1f_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_tr1f_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_tr1f_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_tr1f_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math_tr1 VARIABLES ############################################

set(boost_Boost_math_tr1_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_tr1_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_tr1_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_tr1_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_tr1_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_tr1_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_tr1_LIBS_RELWITHDEBINFO libboost_math_tr1)
set(boost_Boost_math_tr1_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_DEPENDENCIES_RELWITHDEBINFO Boost::math boost::_libboost)
set(boost_Boost_math_tr1_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_tr1_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_tr1_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_tr1_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_tr1_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_tr1_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_tr1_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_tr1_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_tr1_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math_c99l VARIABLES ############################################

set(boost_Boost_math_c99l_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_c99l_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_c99l_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_c99l_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_c99l_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_c99l_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_c99l_LIBS_RELWITHDEBINFO libboost_math_c99l)
set(boost_Boost_math_c99l_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_DEPENDENCIES_RELWITHDEBINFO Boost::math boost::_libboost)
set(boost_Boost_math_c99l_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_c99l_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_c99l_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_c99l_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_c99l_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_c99l_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_c99l_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_c99l_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_c99l_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math_c99f VARIABLES ############################################

set(boost_Boost_math_c99f_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_c99f_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_c99f_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_c99f_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_c99f_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_c99f_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_c99f_LIBS_RELWITHDEBINFO libboost_math_c99f)
set(boost_Boost_math_c99f_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_DEPENDENCIES_RELWITHDEBINFO Boost::math boost::_libboost)
set(boost_Boost_math_c99f_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_c99f_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_c99f_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_c99f_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_c99f_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_c99f_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_c99f_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_c99f_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_c99f_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math_c99 VARIABLES ############################################

set(boost_Boost_math_c99_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_c99_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_c99_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_c99_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_c99_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_c99_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_c99_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_c99_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_c99_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_c99_LIBS_RELWITHDEBINFO libboost_math_c99)
set(boost_Boost_math_c99_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_c99_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_c99_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_c99_DEPENDENCIES_RELWITHDEBINFO Boost::math boost::_libboost)
set(boost_Boost_math_c99_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_c99_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_c99_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_c99_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_c99_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_c99_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_c99_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_c99_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_c99_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_c99_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::math VARIABLES ############################################

set(boost_Boost_math_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_math_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_math_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_math_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_math_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_math_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_math_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_math_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_math_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_math_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_math_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_math_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_math_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_math_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_math_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_math_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_math_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_math_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_math_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_math_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_math_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::exception VARIABLES ############################################

set(boost_Boost_exception_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_exception_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_exception_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_exception_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_exception_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_exception_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_exception_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_exception_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_exception_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_exception_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_exception_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_exception_LIBS_RELWITHDEBINFO libboost_exception)
set(boost_Boost_exception_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_exception_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_exception_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_exception_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_exception_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_exception_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_exception_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_exception_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_exception_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_exception_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_exception_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_exception_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_exception_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_exception_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::date_time VARIABLES ############################################

set(boost_Boost_date_time_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_date_time_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_date_time_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_date_time_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_date_time_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_date_time_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_date_time_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_date_time_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_date_time_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_date_time_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_date_time_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_date_time_LIBS_RELWITHDEBINFO libboost_date_time)
set(boost_Boost_date_time_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_date_time_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_date_time_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_date_time_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_date_time_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_date_time_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_date_time_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_date_time_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_date_time_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_date_time_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_date_time_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_date_time_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_date_time_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_date_time_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::context VARIABLES ############################################

set(boost_Boost_context_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_context_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_context_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_context_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_context_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_context_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_context_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_context_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_context_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_context_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_context_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_context_LIBS_RELWITHDEBINFO libboost_context)
set(boost_Boost_context_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_context_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_context_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_context_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_context_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_context_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_context_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_context_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_context_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_context_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_context_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_context_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_context_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_context_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::container VARIABLES ############################################

set(boost_Boost_container_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_container_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_container_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_container_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_container_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_container_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_container_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_container_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_container_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_container_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_container_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_container_LIBS_RELWITHDEBINFO libboost_container)
set(boost_Boost_container_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_container_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_container_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_container_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_container_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_container_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_container_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_container_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_container_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_container_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_container_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_container_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_container_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_container_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::atomic VARIABLES ############################################

set(boost_Boost_atomic_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_atomic_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_atomic_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_atomic_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_atomic_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_atomic_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_atomic_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_atomic_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_atomic_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_atomic_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_atomic_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_atomic_LIBS_RELWITHDEBINFO libboost_atomic)
set(boost_Boost_atomic_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_atomic_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_atomic_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_atomic_DEPENDENCIES_RELWITHDEBINFO boost::_libboost)
set(boost_Boost_atomic_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_atomic_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_atomic_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_atomic_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_atomic_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_atomic_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_atomic_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_atomic_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_atomic_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_atomic_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT boost::_libboost VARIABLES ############################################

set(boost_boost__libboost_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_boost__libboost_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_boost__libboost_BIN_DIRS_RELWITHDEBINFO )
set(boost_boost__libboost_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_boost__libboost_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_boost__libboost_RES_DIRS_RELWITHDEBINFO )
set(boost_boost__libboost_DEFINITIONS_RELWITHDEBINFO )
set(boost_boost__libboost_OBJECTS_RELWITHDEBINFO )
set(boost_boost__libboost_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_boost__libboost_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_boost__libboost_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_boost__libboost_LIBS_RELWITHDEBINFO )
set(boost_boost__libboost_SYSTEM_LIBS_RELWITHDEBINFO bcrypt)
set(boost_boost__libboost_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_boost__libboost_FRAMEWORKS_RELWITHDEBINFO )
set(boost_boost__libboost_DEPENDENCIES_RELWITHDEBINFO Boost::headers)
set(boost_boost__libboost_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_boost__libboost_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_boost__libboost_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_boost__libboost_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_boost__libboost_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_boost__libboost_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_boost__libboost_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_boost__libboost_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_boost__libboost_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_boost__libboost_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::boost VARIABLES ############################################

set(boost_Boost_boost_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_boost_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_boost_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_boost_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_boost_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_boost_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_boost_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_boost_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_boost_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_boost_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_boost_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_boost_LIBS_RELWITHDEBINFO )
set(boost_Boost_boost_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_boost_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_boost_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_boost_DEPENDENCIES_RELWITHDEBINFO Boost::headers)
set(boost_Boost_boost_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_boost_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_boost_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_boost_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_boost_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_boost_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_boost_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_boost_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_boost_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_boost_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::headers VARIABLES ############################################

set(boost_Boost_headers_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_headers_LIB_DIRS_RELWITHDEBINFO )
set(boost_Boost_headers_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_headers_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_headers_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_headers_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_headers_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_headers_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_headers_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_headers_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_headers_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_headers_LIBS_RELWITHDEBINFO )
set(boost_Boost_headers_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_headers_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_headers_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_headers_DEPENDENCIES_RELWITHDEBINFO Boost::diagnostic_definitions Boost::disable_autolinking Boost::dynamic_linking)
set(boost_Boost_headers_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_headers_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_headers_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_headers_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_headers_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_headers_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_headers_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_headers_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_headers_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_headers_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::dynamic_linking VARIABLES ############################################

set(boost_Boost_dynamic_linking_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_dynamic_linking_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_dynamic_linking_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_dynamic_linking_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_dynamic_linking_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_dynamic_linking_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_dynamic_linking_LIBS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_DEPENDENCIES_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_dynamic_linking_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_dynamic_linking_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_dynamic_linking_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_dynamic_linking_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_dynamic_linking_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_dynamic_linking_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_dynamic_linking_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_dynamic_linking_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::disable_autolinking VARIABLES ############################################

set(boost_Boost_disable_autolinking_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_disable_autolinking_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_disable_autolinking_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_disable_autolinking_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_disable_autolinking_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_DEFINITIONS_RELWITHDEBINFO "-DBOOST_ALL_NO_LIB")
set(boost_Boost_disable_autolinking_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_COMPILE_DEFINITIONS_RELWITHDEBINFO "BOOST_ALL_NO_LIB")
set(boost_Boost_disable_autolinking_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_disable_autolinking_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_disable_autolinking_LIBS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_DEPENDENCIES_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_disable_autolinking_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_disable_autolinking_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_disable_autolinking_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_disable_autolinking_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_disable_autolinking_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_disable_autolinking_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_disable_autolinking_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_disable_autolinking_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
########### COMPONENT Boost::diagnostic_definitions VARIABLES ############################################

set(boost_Boost_diagnostic_definitions_INCLUDE_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(boost_Boost_diagnostic_definitions_LIB_DIRS_RELWITHDEBINFO "${boost_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(boost_Boost_diagnostic_definitions_BIN_DIRS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_LIBRARY_TYPE_RELWITHDEBINFO STATIC)
set(boost_Boost_diagnostic_definitions_IS_HOST_WINDOWS_RELWITHDEBINFO 1)
set(boost_Boost_diagnostic_definitions_RES_DIRS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_OBJECTS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(boost_Boost_diagnostic_definitions_LIBS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_SYSTEM_LIBS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_FRAMEWORKS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_DEPENDENCIES_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(boost_Boost_diagnostic_definitions_NO_SONAME_MODE_RELWITHDEBINFO FALSE)

# COMPOUND VARIABLES
set(boost_Boost_diagnostic_definitions_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${boost_Boost_diagnostic_definitions_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${boost_Boost_diagnostic_definitions_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${boost_Boost_diagnostic_definitions_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${boost_Boost_diagnostic_definitions_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")