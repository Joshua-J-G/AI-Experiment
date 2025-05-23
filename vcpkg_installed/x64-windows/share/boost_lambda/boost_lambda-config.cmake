# Generated by BoostInstall.cmake for boost_lambda-1.88.0

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "Found boost_lambda ${boost_lambda_VERSION} at ${boost_lambda_DIR}")
endif()

include(CMakeFindDependencyMacro)

if(NOT boost_bind_FOUND)
  find_dependency(boost_bind 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_config_FOUND)
  find_dependency(boost_config 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_core_FOUND)
  find_dependency(boost_core 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_detail_FOUND)
  find_dependency(boost_detail 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_iterator_FOUND)
  find_dependency(boost_iterator 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_mpl_FOUND)
  find_dependency(boost_mpl 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_preprocessor_FOUND)
  find_dependency(boost_preprocessor 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_tuple_FOUND)
  find_dependency(boost_tuple 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_type_traits_FOUND)
  find_dependency(boost_type_traits 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_utility_FOUND)
  find_dependency(boost_utility 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()

include("${CMAKE_CURRENT_LIST_DIR}/boost_lambda-targets.cmake")
