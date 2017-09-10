#!/bin/sh

rm -rf build
mkdir build
cd build

cmake -D CMAKE_CONFIGURATION_TYPES="Debug;Release" -G "Xcode" ..
cmake --build . --config Debug
cmake --build . --config Release

