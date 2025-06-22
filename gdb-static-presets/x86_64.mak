TARGET = x86_64-linux-musl
OUTPUT = $(CURDIR)/output/x86_64-linux-musl-cross
GCC_VER = 14.2.0

# Create a compact toolchain.
COMMON_CONFIG += CFLAGS="-g0 -Os" CXXFLAGS="-g0 -Os" LDFLAGS="-s"
