# Port Metadata
PORTNAME =          lz4
PORTVERSION =       1.10.0

MAINTAINER =        SpecialK
LICENSE =           BSD-2-Clause
SHORT_DESC =        Extremely fast, lossless compression algorithm

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    https://github.com/lz4/lz4.git
GIT_TAG =           v${PORTVERSION}

TARGET =            liblz4.a
INSTALLED_HDRS =    lib/lz4.h lib/lz4hc.h lib/lz4frame.h lib/lz4frame_static.h lib/lz4file.h lib/xxhash.h
HDR_INSTDIR =       lz4

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
