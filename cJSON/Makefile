# Port Metadata
PORTNAME =          cJSON
PORTVERSION =       1.7.19

MAINTAINER =        SpecialK6466
LICENSE =           MIT
SHORT_DESC =        Ultralightweight JSON parser in ANSI C

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    https://github.com/DaveGamble/cJSON.git
GIT_TAG =           v${PORTVERSION}

TARGET =            libcjson.a
INSTALLED_HDRS =    cJSON.h cJSON_Utils.h
HDR_INSTDIR =       cjson

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =     KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
