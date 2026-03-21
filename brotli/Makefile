# Port Metadata
PORTNAME =          brotli
PORTVERSION =       1.2.0

MAINTAINER =        SpecialK
LICENSE =           MIT
SHORT_DESC =        Brotli lossless compression library (decoder + common)

DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    https://github.com/google/brotli.git
GIT_TAG =           v${PORTVERSION}

# Single combined static archive covering common + decoder components.
# The encoder (c/enc/) is omitted; it is not required for HTTP decompression.
TARGET =            libbrotli.a

# Copy the whole c/include/ tree so that inst/include/brotli/*.h is preserved.
HDR_DIRECTORY =     c/include

# Symlink kos-ports/include/brotli -> kos-ports/brotli/inst/include/brotli
# so that #include <brotli/decode.h> resolves correctly.
HDR_FULLDIR =       brotli

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
