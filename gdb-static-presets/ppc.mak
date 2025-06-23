TARGET = powerpc-linux-musl
OUTPUT = $(CURDIR)/output/powerpc-linux-musl-cross
GCC_VER = 14.2.0

# Create a compact toolchain.
COMMON_CONFIG += CFLAGS="-g0 -Os" CXXFLAGS="-g0 -Os" LDFLAGS="-s"

# Use a newer linux header due to a bug in the default linux headers.
LINUX_VER = 5.8.5
