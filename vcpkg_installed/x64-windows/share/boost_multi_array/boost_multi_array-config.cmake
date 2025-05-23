# Generated by BoostInstall.cmake for boost_multi_array-1.88.0

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "Found boost_multi_array ${boost_multi_array_VERSION} at ${boost_multi_array_DIR}")
endif()

include(CMakeFindDependencyMacro)

if(NOT boost_array_FOUND)
  find_dependency(boost_array 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_assert_FOUND)
  find_dependency(boost_assert 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_concept_check_FOUND)
  find_dependency(boost_concept_check 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_config_FOUND)
  find_dependency(boost_config 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_core_FOUND)
  find_dependency(boost_core 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_functional_FOUND)
  find_dependency(boost_functional 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_iterator_FOUND)
  find_dependency(boost_iterator 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_mpl_FOUND)
  find_dependency(boost_mpl 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_static_assert_FOUND)
  find_dependency(boost_static_assert 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()
if(NOT boost_type_traits_FOUND)
  find_dependency(boost_type_traits 1.88.0 EXACT HINTS "${CMAKE_CURRENT_LIST_DIR}/..")
endif()

include("${CMAKE_CURRENT_LIST_DIR}/boost_multi_array-targets.cmake")
