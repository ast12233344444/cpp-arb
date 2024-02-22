########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(simple-websocket-server_FIND_QUIETLY)
    set(simple-websocket-server_MESSAGE_MODE VERBOSE)
else()
    set(simple-websocket-server_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/simple-websocket-serverTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${simple-websocket-server_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(simple-websocket-server_VERSION_STRING "2.0.2")
set(simple-websocket-server_INCLUDE_DIRS ${simple-websocket-server_INCLUDE_DIRS_DEBUG} )
set(simple-websocket-server_INCLUDE_DIR ${simple-websocket-server_INCLUDE_DIRS_DEBUG} )
set(simple-websocket-server_LIBRARIES ${simple-websocket-server_LIBRARIES_DEBUG} )
set(simple-websocket-server_DEFINITIONS ${simple-websocket-server_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${simple-websocket-server_BUILD_MODULES_PATHS_DEBUG} )
    message(${simple-websocket-server_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


