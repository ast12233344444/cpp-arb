########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(uwebsockets_FIND_QUIETLY)
    set(uwebsockets_MESSAGE_MODE VERBOSE)
else()
    set(uwebsockets_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/uwebsocketsTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${uwebsockets_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(uwebsockets_VERSION_STRING "20.58.0")
set(uwebsockets_INCLUDE_DIRS ${uwebsockets_INCLUDE_DIRS_DEBUG} )
set(uwebsockets_INCLUDE_DIR ${uwebsockets_INCLUDE_DIRS_DEBUG} )
set(uwebsockets_LIBRARIES ${uwebsockets_LIBRARIES_DEBUG} )
set(uwebsockets_DEFINITIONS ${uwebsockets_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${uwebsockets_BUILD_MODULES_PATHS_DEBUG} )
    message(${uwebsockets_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


