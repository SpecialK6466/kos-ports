# Port Metadata
PORTNAME =          curl
PORTVERSION =       8.18.0

MAINTAINER =        Damian Parrino <bucanero@users.noreply.github.com>
LICENSE =           custom
SHORT_DESC =        A library for transferring data with URL syntax.

# This port uses CMake.
PORT_BUILD =        cmake

# Provide SSL support library
DEPENDENCIES =      zlib mbedtls zstd libpsl brotli nghttp2

# What files we need to download, and where from.
DOWNLOAD_SITE  =    https://curl.se/download
DOWNLOAD_FILES =    ${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =            libcurl.a

# attempt to install the headers locally.
HDR_DIRECTORY =     include/curl

# cmake build arguments
CMAKE_ARGS =        -DCURL_USE_MBEDTLS=ON \
                    -DMBEDTLS_INCLUDE_DIR=${KOS_PORTS}/include \
                    -DMBEDTLS_LIBRARY=${KOS_PORTS}/lib/libmbedtls.a \
                    -DMBEDX509_LIBRARY=${KOS_PORTS}/lib/libmbedx509.a \
                    -DMBEDCRYPTO_LIBRARY=${KOS_PORTS}/lib/libmbedcrypto.a \
                    -DZLIB_INCLUDE_DIR=${KOS_PORTS}/include/zlib \
                    -DZLIB_LIBRARY=${KOS_PORTS}/lib/libz.a \
                    -DUSE_UNIX_SOCKETS=OFF \
                    -DENABLE_IPV6=OFF \
                    -DENABLE_THREADED_RESOLVER=OFF \
                    -DBUILD_CURL_EXE=OFF \
                    -DBUILD_SHARED_LIBS=OFF \
                    -DBUILD_STATIC_LIBS=ON \
                    -DBUILD_TESTING=OFF \
                    -DCURL_USE_LIBPSL=ON \
                    -DLIBPSL_INCLUDE_DIR=${KOS_PORTS}/include/libpsl \
                    -DLIBPSL_LIBRARY=${KOS_PORTS}/lib/libpsl.a \
                    -DCURL_USE_LIBSSH2=OFF \
                    -DCURL_BROTLI=ON \
                    -DBROTLI_INCLUDE_DIR=${KOS_PORTS}/include \
                    -DBROTLIDEC_LIBRARY=${KOS_PORTS}/lib/libbrotli.a \
                    -DBROTLICOMMON_LIBRARY=${KOS_PORTS}/lib/libbrotli.a \
                    -DCURL_ZSTD=ON \
                    -DZstd_INCLUDE_DIR=${KOS_PORTS}/include/zstd \
                    -DZstd_LIBRARY=${KOS_PORTS}/lib/libzstd.a \
                    -DUSE_NGHTTP2=ON \
                    -DNGHTTP2_INCLUDE_DIR=${KOS_PORTS}/include \
                    -DNGHTTP2_LIBRARY=${KOS_PORTS}/lib/libnghttp2.a \
                    -DCMAKE_POLICY_VERSION_MINIMUM=3.7 \
                    -DHAVE_SCHED_YIELD=0

# Add a pre-install target to get the built library where we expect it.
PREINSTALL = curl_preinstall
curl_preinstall:
	cp build/${PORTNAME}-${PORTVERSION}/lib/${TARGET} build/${PORTNAME}-${PORTVERSION}

include ${KOS_PORTS}/scripts/kos-ports.mk
