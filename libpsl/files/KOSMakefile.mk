# KOS Makefile for libpsl
#
# Compiles the two core source files from the release tarball.
# The tarball ships src/psl_data.h (pre-built DAFSA from the Public Suffix
# List), so no host-side data-generation tooling is required.

TARGET = libpsl.a

OBJS = src/psl.o \
       src/lookup_string_in_fixed_set.o

# -Iinclude  : finds libpsl.h (public header)
# -Isrc      : finds psl_data.h + lookup_string_in_fixed_set.h (internal)
# PACKAGE_VERSION: replaces what autoconf/meson would inject via config.h
# Not defining HAVE_CONFIG_H means psl.c will not attempt to include config.h,
# so the HAVE_REGEX_H / HAVE_ICU / WITH_LIBUNISTRING guards all default to
# undefined — giving a minimal, dependency-free build.
CFLAGS += -Iinclude -Isrc \
          -DPACKAGE_VERSION=\"${PORTVERSION}\" \
          -ffunction-sections -fdata-sections

include ${KOS_PORTS}/scripts/lib.mk
