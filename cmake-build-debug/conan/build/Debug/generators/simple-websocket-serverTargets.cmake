# Load the debug and release variables
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB DATA_FILES "${_DIR}/simple-websocket-server-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${simple-websocket-server_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${simple-websocket-server_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET simple-websocket-server::simple-websocket-server)
    add_library(simple-websocket-server::simple-websocket-server INTERFACE IMPORTED)
    message(${simple-websocket-server_MESSAGE_MODE} "Conan: Target declared 'simple-websocket-server::simple-websocket-server'")
endif()
# Load the debug and release library finders
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/simple-websocket-server-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()