TARGET = libsqlite3.a
OBJS = sqlite3.o

# Disable threading (KOS uses its own threading model via pthreads, but
# sqlite's internal mutex is unnecessary overhead for single-threaded use).
# Disable dynamic extension loading (no dlopen on Dreamcast).
# Disable memory status counters to reduce overhead.
# Disable deprecated APIs to keep the build clean.
KOS_CFLAGS += -I. \
              -DSQLITE_THREADSAFE=0 \
              -DSQLITE_OMIT_LOAD_EXTENSION \
              -DSQLITE_DEFAULT_MEMSTATUS=0 \
              -DSQLITE_OMIT_DEPRECATED \
              -DSQLITE_OMIT_WAL

include ${KOS_PORTS}/scripts/lib.mk
