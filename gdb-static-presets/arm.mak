TARGET = arm-linux-musleabi
OUTPUT = $(CURDIR)/output/arm-linux-musleabi-cross
GCC_VER = 14.2.0

# Create a compact toolchain.
COMMON_CONFIG += CFLAGS="-g0 -Os" CXXFLAGS="-g0 -Os" LDFLAGS="-s"

# Keep the linux version empty to not build linux headers.
LINUX_VER =
