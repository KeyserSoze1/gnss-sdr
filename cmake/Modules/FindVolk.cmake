########################################################################
# Find VOLK (Vector-Optimized Library of Kernels)
########################################################################

INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_VOLK volk)

FIND_PATH(
    VOLK_INCLUDE_DIRS
    NAMES volk/volk.h
    HINTS $ENV{VOLK_DIR}/include
          ${PC_VOLK_INCLUDEDIR}
    PATHS /usr/local/include
          /usr/include
          ${CMAKE_INSTALL_PREFIX}/include
)

FIND_LIBRARY(
    VOLK_LIBRARIES
    NAMES volk
    HINTS $ENV{VOLK_DIR}/lib
          ${PC_VOLK_LIBDIR}
    PATHS /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib/x86_64-linux-gnu
          /usr/lib/i386-linux-gnu
          /usr/lib/arm-linux-gnueabihf
          /usr/lib/arm-linux-gnueabi
          /usr/lib/aarch64-linux-gnu
          /usr/lib/mipsel-linux-gnu
          /usr/lib/mips-linux-gnu
          /usr/lib/mips64el-linux-gnuabi64
          /usr/lib/powerpc-linux-gnu
          /usr/lib/powerpc64-linux-gnu
          /usr/lib/powerpc64le-linux-gnu
          /usr/lib/powerpc-linux-gnuspe
          /usr/lib/hppa-linux-gnu
          /usr/lib/s390x-linux-gnu
          /usr/lib/i386-gnu
          /usr/lib/hppa-linux-gnu
          /usr/lib/x86_64-kfreebsd-gnu
          /usr/lib/i386-kfreebsd-gnu
          /usr/lib/m68k-linux-gnu
          /usr/lib/sh4-linux-gnu
          /usr/lib/sparc64-linux-gnu
          /usr/lib/x86_64-linux-gnux32
          /usr/lib/alpha-linux-gnu
          /usr/lib64
          ${CMAKE_INSTALL_PREFIX}/lib
)


INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(VOLK DEFAULT_MSG VOLK_LIBRARIES VOLK_INCLUDE_DIRS)
MARK_AS_ADVANCED(VOLK_LIBRARIES VOLK_INCLUDE_DIRS VOLK_VERSION)
