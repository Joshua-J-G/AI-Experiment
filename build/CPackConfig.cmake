# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_INNOSETUP "OFF")
set(CPACK_BINARY_NSIS "ON")
set(CPACK_BINARY_NUGET "OFF")
set(CPACK_BINARY_WIX "OFF")
set(CPACK_BINARY_ZIP "OFF")
set(CPACK_BUILD_SOURCE_DIRS "C:/Projects/C++/AI-Experiment;C:/Projects/C++/AI-Experiment/build")
set(CPACK_CMAKE_GENERATOR "Visual Studio 17 2022")
set(CPACK_COMPONENTS_ALL "runtime;dev;cllayerinfo")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_CLLAYERINFO_DESCRIPTION "Query OpenCL Layer system information
OpenCL (Open Computing Language) is a multivendor open standard for
general-purpose parallel programming of heterogeneous systems that include
CPUs, GPUs and other processors. It supports system and user configured layers
to intercept OpenCL API calls.
.
This package contains a tool that lists the layers loaded by the the ocl-icd
OpenCL ICD Loader.")
set(CPACK_DEBIAN_CLLAYERINFO_FILE_NAME "khronos-opencl-loader-cllayerinfo_3.0-1_.deb")
set(CPACK_DEBIAN_CLLAYERINFO_PACKAGE_DEPENDS "libc6")
set(CPACK_DEBIAN_CLLAYERINFO_PACKAGE_NAME "khronos-opencl-loader-cllayerinfo")
set(CPACK_DEBIAN_CLLAYERINFO_PACKAGE_SECTION "admin")
set(CPACK_DEBIAN_DEV_DESCRIPTION "OpenCL development files
OpenCL (Open Computing Language) is a multivendor open standard for
general-purpose parallel programming of heterogeneous systems that include
CPUs, GPUs and other processors.
.
This package provides the development files: headers and libraries.
.
It also ensures that the ocl-icd ICD loader is installed so its additional
features (compared to the OpenCL norm) can be used: .pc file, ability to
select an ICD without root privilege, etc.")
set(CPACK_DEBIAN_DEV_FILE_NAME "khronos-opencl-loader-opencl-dev_3.0-1_.deb")
set(CPACK_DEBIAN_DEV_PACKAGE_BREAKS "amd-libopencl1, nvidia-libopencl1")
set(CPACK_DEBIAN_DEV_PACKAGE_CONFLICTS "opencl-dev")
set(CPACK_DEBIAN_DEV_PACKAGE_DEPENDS "opencl-c-headers (>= 3.0) | opencl-headers (>= 3.0), khronos-opencl-loader-libopencl1 (>= 3.0) | libopencl1")
set(CPACK_DEBIAN_DEV_PACKAGE_NAME "khronos-opencl-loader-opencl-dev")
set(CPACK_DEBIAN_DEV_PACKAGE_PROVIDES "opencl-dev")
set(CPACK_DEBIAN_DEV_PACKAGE_RECOMMENDS "libgl1-mesa-dev | libgl-dev")
set(CPACK_DEBIAN_DEV_PACKAGE_REPLACES "amd-libopencl1, nvidia-libopencl1, opencl-dev")
set(CPACK_DEBIAN_DEV_PACKAGE_SECTION "libdevel")
set(CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS "OFF")
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "")
set(CPACK_DEBIAN_PACKAGE_DEBUG "ON")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://github.com/KhronosGroup/OpenCL-ICD-Loader")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "khronos")
set(CPACK_DEBIAN_PACKAGE_RELEASE "1")
set(CPACK_DEBIAN_PACKAGE_VERSION "3.0")
set(CPACK_DEBIAN_RUNTIME_DESCRIPTION "Generic OpenCL ICD Loader
OpenCL (Open Computing Language) is a multivendor open standard for
general-purpose parallel programming of heterogeneous systems that include
CPUs, GPUs and other processors.
.
This package contains an installable client driver loader (ICD Loader)
library that can be used to load any (free or non-free) installable client
driver (ICD) for OpenCL. It acts as a demultiplexer so several ICD can
be installed and used together.")
set(CPACK_DEBIAN_RUNTIME_FILE_NAME "khronos-opencl-loader-libopencl1_3.0-1_.deb")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_CONFLICTS "amd-app, libopencl1, nvidia-libopencl1-dev")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_DEPENDS "libc6")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_NAME "khronos-opencl-loader-libopencl1")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_PROVIDES "libopencl-1.1-1, libopencl-1.2-1, libopencl-2.0-1, libopencl-2.1-1, libopencl-2.2-1, libopencl-3.0-1, libopencl1")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_REPLACES "amd-app, libopencl1, nvidia-libopencl1-dev")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_SECTION "libs")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_SUGGESTS "opencl-icd")
set(CPACK_DEB_COMPONENT_INSTALL "ON")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.31/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "AI-Experiment built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "NSIS")
set(CPACK_INNOSETUP_ARCHITECTURE "x64")
set(CPACK_INSTALL_CMAKE_PROJECTS "C:/Projects/C++/AI-Experiment/build;AI-Experiment;ALL;/")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/AI-Experiment")
set(CPACK_MODULE_PATH "C:/Projects/C++/AI-Experiment/lib/OpenCL-ICD-Loader-2024.10.24/cmake")
set(CPACK_NSIS_DISPLAY_NAME "AI-Experiment 0.1.0")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "AI-Experiment 0.1.0")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Projects/C++/AI-Experiment/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.31/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "AI-Experiment built using CMake")
set(CPACK_PACKAGE_FILE_NAME "AI-Experiment-0.1.0-win64")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "AI-Experiment 0.1.0")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "AI-Experiment 0.1.0")
set(CPACK_PACKAGE_NAME "AI-Experiment")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "khronos")
set(CPACK_PACKAGE_VERSION "0.1.0")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PACKAGING_INSTALL_PREFIX "C:/Program Files (x86)/AI-Experiment")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Projects/C++/AI-Experiment/lib/OpenCL-ICD-Loader-2024.10.24/LICENSE")
set(CPACK_RESOURCE_FILE_README "C:/Projects/C++/AI-Experiment/lib/OpenCL-ICD-Loader-2024.10.24/README.md")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.31/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Projects/C++/AI-Experiment/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Projects/C++/AI-Experiment/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
