# Generated by BoostInstall.cmake for boost_nowide-1.88.0

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "Found boost_nowide ${boost_nowide_VERSION} at ${boost_nowide_DIR}")
endif()

include(CMakeFindDependencyMacro)

if(NOT boost_config_FOUND)
  find_dependency(boost_config 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()

include("${CMAKE_CURRENT_LIST_DIR}/boost_nowide-targets.cmake")
