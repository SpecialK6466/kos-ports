TARGET = libcjson.a
OBJS = cJSON.o cJSON_Utils.o

KOS_CFLAGS += -I.

include ${KOS_PORTS}/scripts/lib.mk
