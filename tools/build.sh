#!/bin/bash

ARCH=amd64
#ARCH=mips32

dirpath=build-$ARCH

mkdir $dirpath

cd $dirpath
cmake .. -DCMAKE_TOOLCHAIN_FILE=../tools/$ARCH.cmake

make VERBOSE=yes

