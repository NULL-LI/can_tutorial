cmake_minimum_required( VERSION 2.8 )
project ( can_tutorial )

set( CMAKE_CXX_COMPILER "g++" )
#set( CMAKE_BUILD_TYPE "Release" )
set( CMAKE_CXX_FLAGS "-lpthread" )

############### dependencies ######################

include_directories( ${PROJECT_SOURCE_DIR} )

set( THIRD_PARTY_LIBS 
#    ${PROJECT_SOURCE_DIR}/libcontrolcan.so
/home/null/tools/can_tutorial/libcontrolcan.so
)
add_executable( simple_can simple_can.cpp )
target_link_libraries( simple_can  ${THIRD_PARTY_LIBS} )
