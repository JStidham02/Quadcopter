#!/bin/bash



cmake -S ./RTOS/Source -B ./RTOS/Build -DCMAKE_TOOLCHAIN_FILE=gcc-arm-none-eabi.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=true

cd ./RTOS/Build

make

cd ..
cd ..

