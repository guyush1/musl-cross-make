#!/usr/bin/env bash

if [[ "$#" -ne 1 ]]; then
    echo "USAGE: ./build_gdb.sh <path_to_gdb_preset>"
    exit 1
fi

function exit_error() {
    local msg="$1"
    echo "ERROR"
    echo "$1"
    exit 1
}

CONFIG_PATH=$(realpath "$1")

CONFIG_FILE="$CONFIG_PATH" make -j$(nproc)
if [[ $? -ne 0 ]]; then
    exit_error "Compilation failed. To clean, run \"make clean\""
fi

CONFIG_FILE="$CONFIG_PATH" make install -j$(nproc)
if [[ $? -ne 0 ]]; then
    exit_error "Installation failed. To clean, run \"make clean\""
fi

CONFIG_FILE="$CONFIG_PATH" make bundle -j$(nproc)
if [[ $? -ne 0 ]]; then
    exit_error "Failed packing toolchain into a tar."
fi
