########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(ixwebsocket_FIND_QUIETLY)
    set(ixwebsocket_MESSAGE_MODE VERBOSE)
else()
    set(ixwebsocket_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/ixwebsocketTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${ixwebsocket_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(ixwebsocket_VERSION_STRING "11.4.3")
set(ixwebsocket_INCLUDE_DIRS ${ixwebsocket_INCLUDE_DIRS_RELEASE} )
set(ixwebsocket_INCLUDE_DIR ${ixwebsocket_INCLUDE_DIRS_RELEASE} )
set(ixwebsocket_LIBRARIES ${ixwebsocket_LIBRARIES_RELEASE} )
set(ixwebsocket_DEFINITIONS ${ixwebsocket_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${ixwebsocket_BUILD_MODULES_PATHS_RELEASE} )
    message(${ixwebsocket_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


