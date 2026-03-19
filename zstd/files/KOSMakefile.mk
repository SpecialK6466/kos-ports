# KOS Makefile for Zstd library

TARGET = libzstd.a

# Zstd library source files from lib/ directory
OBJS = lib/common/debug.o \
       lib/common/entropy_common.o \
       lib/common/error_private.o \
       lib/common/fse_decompress.o \
       lib/common/pool.o \
       lib/common/threading.o \
       lib/common/xxhash.o \
       lib/common/zstd_common.o \
       lib/compress/fse_compress.o \
       lib/compress/hist.o \
       lib/compress/huf_compress.o \
       lib/compress/zstd_compress.o \
       lib/compress/zstd_compress_literals.o \
       lib/compress/zstd_compress_sequences.o \
       lib/compress/zstd_compress_superblock.o \
       lib/compress/zstd_double_fast.o \
       lib/compress/zstd_fast.o \
       lib/compress/zstd_lazy.o \
       lib/compress/zstd_ldm.o \
       lib/compress/zstd_opt.o \
       lib/compress/zstd_preSplit.o \
       lib/decompress/huf_decompress.o \
       lib/decompress/zstd_ddict.o \
       lib/decompress/zstd_decompress.o \
       lib/decompress/zstd_decompress_block.o \
       lib/dictBuilder/cover.o \
       lib/dictBuilder/divsufsort.o \
       lib/dictBuilder/fastcover.o \
       lib/dictBuilder/zdict.o

# Compiler flags
# -O3: Maximum optimization for decompression speed
# -DZSTD_LEGACY_SUPPORT=0: Disable legacy format support to reduce code size
# -DZSTD_MULTITHREAD=0: Disable multithreading
# -DZSTD_DISABLE_ASM: No assembly optimizations for portability
# -ffunction-sections -fdata-sections: Allow linker to remove unused code
CFLAGS += -O3 -DZSTD_LEGACY_SUPPORT=0 \
          -DZSTD_DISABLE_ASM -ffunction-sections -fdata-sections \
          -Ilib -Ilib/common -Ilib/compress -Ilib/decompress -Ilib/dictBuilder

include ${KOS_PORTS}/scripts/lib.mk
