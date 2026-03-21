# Port Metadata
PORTNAME =          libpsl
PORTVERSION =       0.21.5

MAINTAINER =        SpecialK6466
LICENSE =           MIT
SHORT_DESC =        C library for the Public Suffix List

DEPENDENCIES =

# Use the release tarball (includes pre-generated psl_data.h DAFSA).
DOWNLOAD_SITE =     https://github.com/rockdaboot/libpsl/releases/download/${PORTVERSION}
DOWNLOAD_FILES =    ${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =            libpsl.a
INSTALLED_HDRS =    include/libpsl.h
HDR_INSTDIR =       libpsl

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
