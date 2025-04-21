cmake_minimum_required(VERSION 3.10.0)
project(AI-Experiment VERSION 0.1.0 LANGUAGES C CXX)

set(projectFiles 
${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
${CMAKE_CURRENT_SOURCE_DIR}/src/Neuron/Neuron.cpp
${CMAKE_CURRENT_SOURCE_DIR}/src/Neuron/NeuronMap.cpp)

set(includeFiles
 ${CMAKE_CURRENT_SOURCE_DIR}/include/Neuron/Neuron.hpp
 ${CMAKE_CURRENT_SOURCE_DIR}/include/Neuron/NeuronMap.hpp
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

set(OpenCL_INCLUDE_DIR  ${CMAKE_CURRENT_SOURCE_DIR}/lib/OpenCL-SDK-v2024.10.24-Win-x64/include)
set(OpenCL_LIBRARY  ${CMAKE_CURRENT_SOURCE_DIR}/lib/OpenCL-SDK-v2024.10.24-Win-x64/lib/OpenCL.lib)


find_package(OpenCL REQUIRED)

add_subdirectory(lib/fmt-11.1.4)
add_subdirectory(lib/OpenCL-ICD-Loader-2024.10.24)
#find_package(OpenCL CONFIG REQUIRED)


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_COMPILER syclcc)

add_executable(AI-Experiment ${projectFiles} ${includeFiles})

target_link_libraries(AI-Experiment PRIVATE fmt::fmt)
target_include_directories(AI-Experiment PRIVATE ${OpenCL_INCLUDE_DIRS})
target_link_libraries(AI-Experiment PRIVATE ${OpenCL_LIBRARIES})

