# KOS Makefile for Brotli
#
# Builds the complete library: common, decoder, and encoder.

TARGET = libbrotli.a

# Shared primitives used by both encoder and decoder.
COMMON_OBJS = c/common/constants.o \
              c/common/context.o \
              c/common/dictionary.o \
              c/common/platform.o \
              c/common/shared_dictionary.o \
              c/common/transform.o

# Decoder implementation.
DEC_OBJS = c/dec/bit_reader.o \
           c/dec/decode.o \
           c/dec/huffman.o \
           c/dec/prefix.o \
           c/dec/state.o \
           c/dec/static_init.o

# Encoder implementation.
ENC_OBJS = c/enc/backward_references.o \
           c/enc/backward_references_hq.o \
           c/enc/bit_cost.o \
           c/enc/block_splitter.o \
           c/enc/brotli_bit_stream.o \
           c/enc/cluster.o \
           c/enc/command.o \
           c/enc/compound_dictionary.o \
           c/enc/compress_fragment.o \
           c/enc/compress_fragment_two_pass.o \
           c/enc/dictionary_hash.o \
           c/enc/encode.o \
           c/enc/encoder_dict.o \
           c/enc/entropy_encode.o \
           c/enc/fast_log.o \
           c/enc/histogram.o \
           c/enc/literal_cost.o \
           c/enc/memory.o \
           c/enc/metablock.o \
           c/enc/static_dict.o \
           c/enc/static_dict_lut.o \
           c/enc/static_init.o \
           c/enc/utf8_util.o

OBJS = $(COMMON_OBJS) $(DEC_OBJS) $(ENC_OBJS)

# -Ic/include       : public API headers (brotli/decode.h, brotli/encode.h, …)
# -DBROTLI_BUILD_PORTABLE : disable any CPU-dispatch or arch-specific paths
CFLAGS += -Ic/include \
          -DBROTLI_BUILD_PORTABLE \
          -ffunction-sections -fdata-sections

include ${KOS_PORTS}/scripts/lib.mk
