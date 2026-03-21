# Port Metadata
PORTNAME =          nghttp2
PORTVERSION =       1.68.1

MAINTAINER =        SpecialK
LICENSE =           MIT
SHORT_DESC =        HTTP/2 C library (framing layer only)

DEPENDENCIES =

# Use the release tarball: it ships lib/includes/nghttp2/nghttp2ver.h
# pre-generated from nghttp2ver.h.in, so no cmake/autoconf is required.
DOWNLOAD_SITE =     https://github.com/nghttp2/nghttp2/releases/download/v${PORTVERSION}
DOWNLOAD_FILES =    ${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =            libnghttp2.a

# Copy lib/includes/nghttp2/*.h flat into inst/include/ …
HDR_DIRECTORY =     lib/includes/nghttp2
# … then symlink kos-ports/include/nghttp2 -> kos-ports/nghttp2/inst/include
# so that #include <nghttp2/nghttp2.h> resolves correctly.
HDR_INSTDIR =       nghttp2

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
