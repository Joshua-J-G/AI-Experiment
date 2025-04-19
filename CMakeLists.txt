cmake_minimum_required(VERSION 3.10.0)
project(AI-Experiment VERSION 0.1.0 LANGUAGES C CXX)

set(projectFiles src/main.cpp)

add_subdirectory(lib/fmt-11.1.4)

add_executable(AI-Experiment ${projectFiles})

target_link_libraries(AI-Experiment PRIVATE fmt::fmt)
