# Port Metadata
PORTNAME =          sqlite3
PORTVERSION =       3.51.3

MAINTAINER =        SpecialK6466
LICENSE =           Public Domain
SHORT_DESC =        Self-contained, serverless, zero-configuration SQL database engine

# No dependencies beyond the base system.
DEPENDENCIES =

# Download the amalgamation source tarball from sqlite.org.
# The autoconf tarball contains sqlite3.c (pre-generated amalgamation).
DOWNLOAD_SITES =    https://www.sqlite.org/2026
DOWNLOAD_FILES =    sqlite-autoconf-3510300.tar.gz

# The tarball extracts to a different directory name than PORTNAME-PORTVERSION.
DISTFILE_DIR =      sqlite-autoconf-3510300

TARGET =            libsqlite3.a
INSTALLED_HDRS =    sqlite3.h sqlite3ext.h
HDR_INSTDIR =       sqlite3

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
