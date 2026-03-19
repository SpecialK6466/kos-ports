TARGET = liblz4.a
OBJS = lib/lz4.o lib/lz4hc.o lib/lz4frame.o lib/lz4file.o lib/xxhash.o

KOS_CFLAGS += -Ilib

include ${KOS_PORTS}/scripts/lib.mk
