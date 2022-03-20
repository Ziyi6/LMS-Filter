cmake_minimum_required(VERSION 2.8)
project(C4_HW)

include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories("/usr/include/eigen3")
# find_package(Eigen3 REQUIRED)
# include_directories(${EIGEN3_INCLUDE_DIRS})
add_subdirectory(src)
add_subdirectory(app)
