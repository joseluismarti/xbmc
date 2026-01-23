# FindOboe
# -------
# Finds the Oboe library
#
# This will define the following target:
#
#   ${APP_NAME_LC}::Oboe   - The Oboe library

if(NOT TARGET ${APP_NAME_LC}::${CMAKE_FIND_PACKAGE_NAME})
  include(cmake/scripts/common/ModuleHelpers.cmake)

  set(${CMAKE_FIND_PACKAGE_NAME}_MODULE_LC oboe)

  SETUP_BUILD_VARS()

  set(${${CMAKE_FIND_PACKAGE_NAME}_MODULE}_BUILD_TYPE Release)

  set(CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${NDKROOT}/build/cmake/android.toolchain.cmake)

  BUILD_DEP_TARGET()

  SETUP_BUILD_TARGET()

  add_dependencies(${APP_NAME_LC}::${CMAKE_FIND_PACKAGE_NAME} ${${${CMAKE_FIND_PACKAGE_NAME}_MODULE}_BUILD_NAME})
endif()
