# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget caffe proto)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target caffe
add_library(caffe SHARED IMPORTED)

set_target_properties(caffe PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "USE_LMDB;USE_LEVELDB;USE_CUDNN;USE_OPENCV"
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include;/usr/include;/usr/local/include;/usr/include/hdf5/serial;/usr/include;/usr/include;/usr/local/cuda/include;/usr/local/include;/usr/local/include;/usr/local/include/opencv;/usr/include;/usr/include/atlas;/usr/include;/data_3/OCR_prject/LSTM训练方法/xxz/caffe-lstm-ocr/include"
)

# Create imported target proto
add_library(proto STATIC IMPORTED)

set_target_properties(proto PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/local/include"
)

# Import target "caffe" for configuration "Debug"
set_property(TARGET caffe APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(caffe PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "proto;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libglog.so;/usr/lib/x86_64-linux-gnu/libgflags.so;/usr/local/lib/libprotobuf.so;-lpthread;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so;/usr/lib/x86_64-linux-gnu/liblmdb.so;/usr/lib/x86_64-linux-gnu/libleveldb.so;/usr/local/cuda/lib64/libcudart.so;/usr/local/cuda/lib64/libcurand.so;/usr/local/cuda/lib64/libcublas.so;/usr/local/cuda/lib64/libcublas_device.a;/usr/local/lib/libcudnn.so;/usr/local/lib/libnccl.so;opencv_core;opencv_highgui;opencv_imgproc;opencv_imgcodecs;/usr/lib/liblapack.so;/usr/lib/libcblas.so;/usr/lib/libatlas.so;/usr/lib/x86_64-linux-gnu/libboost_python.so"
  IMPORTED_LOCATION_DEBUG "/data_3/OCR_prject/LSTM训练方法/xxz/caffe-lstm-ocr/cmake-build-debug/lib/libcaffe-d.so.1.0.0-rc5"
  IMPORTED_SONAME_DEBUG "libcaffe-d.so.1.0.0-rc5"
  )

# Import target "proto" for configuration "Debug"
set_property(TARGET proto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(proto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "/usr/local/lib/libprotobuf.so;-lpthread"
  IMPORTED_LOCATION_DEBUG "/data_3/OCR_prject/LSTM训练方法/xxz/caffe-lstm-ocr/cmake-build-debug/lib/libproto-d.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
