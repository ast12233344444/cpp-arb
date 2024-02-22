cmake_minimum_required(VERSION 3.26)
project(extpr)

set(CMAKE_CXX_STANDARD 17)
find_package(Boost)

add_executable(extpr main.cpp)
target_link_libraries(extpr boost::boost)

find_package(ixwebsocket)
target_link_libraries(extpr ixwebsocket::ixwebsocket)

find_package(OpenSSL)
target_link_libraries(extpr openssl::openssl)