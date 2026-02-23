# Port Metadata
PORTNAME =          utf8proc
PORTVERSION =       2.11.3

MAINTAINER =        SpecialK6466
LICENSE =           MIT
SHORT_DESC =        Clean UTF-8 processing library with Unicode normalization

# This port uses CMake.
PORT_BUILD =        cmake

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    https://github.com/JuliaStrings/utf8proc.git
GIT_TAG =           v${PORTVERSION}

TARGET =            libutf8proc.a
INSTALLED_HDRS =    utf8proc.h
HDR_INSTDIR =       utf8proc

# utf8proc disallows in-source builds; build in a subdirectory.
CMAKE_OUTSOURCE =   1

CMAKE_ARGS =        -DCMAKE_BUILD_TYPE=Release \
                    -DBUILD_SHARED_LIBS=OFF

# Copy the library from the out-of-source build dir to where force-install expects it.
PREINSTALL =        utf8proc_preinstall

include ${KOS_PORTS}/scripts/kos-ports.mk
utf8proc_preinstall:
	cp build/${PORTNAME}-${PORTVERSION}/build/${TARGET} build/${PORTNAME}-${PORTVERSION}
