# find flycapture2
#
# exports:
#
#   FLYCAPTURE2_FOUND
#   FLYCAPTURE2_INCLUDE_DIRS
#   FLYCAPTURE2_LIBRARIES
#

include(FindPkgConfig)
include(FindPackageHandleStandardArgs)

# Use pkg-config to get hints about paths
pkg_check_modules(FLYCAPTURE2_PKGCONF REQUIRED)

# Include dir
find_path(FLYCAPTURE2_INCLUDE_DIR
  NAMES flycapture/FlyCapture2.h
  PATHS ${FLYCAPTURE2_PKGCONF_INCLUDE_DIRS}
)

# Finally the library itself
find_library(FLYCAPTURE2_LIBRARY
  NAMES flycapture
  PATHS ${FLYCAPTURE2_PKGCONF_LIBRARY_DIRS}
)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(FlyCapture2 DEFAULT_MSG FlyCapture2_LIBRARY FlyCapture2_INCLUDE_DIR)


if(FLYCAPTURE2_PKGCONF_FOUND)
  set(FLYCAPTURE2_LIBRARIES ${FLYCAPTURE2_LIBRARY} ${FLYCAPTURE2_PKGCONF_LIBRARIES})
  set(FLYCAPTURE2_INCLUDE_DIRS ${FLYCAPTURE2_INCLUDE_DIR} ${FLYCAPTURE2_PKGCONF_INCLUDE_DIRS})
  set(FLYCAPTURE2_FOUND yes)
else()
  set(FLYCAPTURE2_LIBRARIES)
  set(FLYCAPTURE2_INCLUDE_DIRS)
  set(FLYCAPTURE2_FOUND no)
endif()
