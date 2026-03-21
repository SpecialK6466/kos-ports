# KOS Makefile for nghttp2 (framing library only)
#
# Builds all 26 sources from lib/. No external dependencies beyond libc.
#
# HAVE_CONFIG_H is deliberately NOT defined. nghttp2's internal headers
# guard every platform-specific include behind HAVE_* macros, so omitting
# config.h activates the safe fallback paths:
#   - nghttp2_net.h  : provides its own hton*/ntoh* when HAVE_ARPA_INET_H
#                      is absent (SH4 byte-order works correctly regardless).
#   - nghttp2_time.c : falls back to time(NULL)*1000 when HAVE_CLOCK_GETTIME
#                      is absent

TARGET = libnghttp2.a

OBJS = lib/nghttp2_alpn.o \
       lib/nghttp2_buf.o \
       lib/nghttp2_callbacks.o \
       lib/nghttp2_debug.o \
       lib/nghttp2_extpri.o \
       lib/nghttp2_frame.o \
       lib/nghttp2_hd.o \
       lib/nghttp2_hd_huffman.o \
       lib/nghttp2_hd_huffman_data.o \
       lib/nghttp2_helper.o \
       lib/nghttp2_http.o \
       lib/nghttp2_map.o \
       lib/nghttp2_mem.o \
       lib/nghttp2_option.o \
       lib/nghttp2_outbound_item.o \
       lib/nghttp2_pq.o \
       lib/nghttp2_priority_spec.o \
       lib/nghttp2_queue.o \
       lib/nghttp2_ratelim.o \
       lib/nghttp2_rcbuf.o \
       lib/nghttp2_session.o \
       lib/nghttp2_stream.o \
       lib/nghttp2_submit.o \
       lib/nghttp2_time.o \
       lib/nghttp2_version.o \
       lib/sfparse.o

# -Ilib/includes  : public API headers (nghttp2/nghttp2.h, nghttp2/nghttp2ver.h)
# -Ilib           : internal headers (nghttp2_session.h, nghttp2_frame.h, …)
CFLAGS += -Ilib/includes \
          -Ilib \
          -ffunction-sections -fdata-sections

include ${KOS_PORTS}/scripts/lib.mk
