#!/bin/bash

script_directory=$(realpath $(dirname $BASH_SOURCE))

source "${script_directory}/../buildrc"

#export CPPFLAGS_DEBUG_EXTRA="${CFLAGS}"
#export CPPFLAGS_FAST_EXTRA="${CFLAGS}"
export CFLAGS_DEBUG_EXTRA="${CFLAGS}"
export CFLAGS_FAST_EXTRA="${CFLAGS}"

cd "${script_directory}"

make clean
make package
make library
