# Port Metadata
PORTNAME =          zstd
PORTVERSION =       1.5.7

MAINTAINER =        SpecialK
LICENSE =           BSD-3-Clause or GPLv2
SHORT_DESC =        Fast real-time compression algorithm

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    https://github.com/facebook/zstd.git
GIT_TAG =           v${PORTVERSION}

TARGET =            libzstd.a
INSTALLED_HDRS =    lib/zstd.h lib/zstd_errors.h lib/zdict.h
HDR_INSTDIR =       zstd

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
