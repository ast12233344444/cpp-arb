########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(libuv_FIND_QUIETLY)
    set(libuv_MESSAGE_MODE VERBOSE)
else()
    set(libuv_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/libuvTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${libuv_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(libuv_VERSION_STRING "1.46.0")
set(libuv_INCLUDE_DIRS ${libuv_INCLUDE_DIRS_DEBUG} )
set(libuv_INCLUDE_DIR ${libuv_INCLUDE_DIRS_DEBUG} )
set(libuv_LIBRARIES ${libuv_LIBRARIES_DEBUG} )
set(libuv_DEFINITIONS ${libuv_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${libuv_BUILD_MODULES_PATHS_DEBUG} )
    message(${libuv_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


