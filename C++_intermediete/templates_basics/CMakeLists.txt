cmake_minimum_required(VERSION 3.0)

project(SUM) #change project name 

set(CMAKE_CXX_STANDARD 17)



add_executable(hellobinary src/main.cpp )
target_include_directories(hellobinary PUBLIC include/)


# set(SOURCE
# src/main.cpp
# utils/math.cpp
# )


# add_executable(${PROJECT_NAME} ${SOURCE})
# include_directories("/home/zahran/Desktop/C++/1-requirements/includes")
