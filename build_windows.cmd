
rd /s /q build
mkdir build
cd build

cmake -D CMAKE_CONFIGURATION_TYPES="Debug;Release" -G "Visual Studio 14 Win64" ..
cmake --build . --config Debug
cmake --build . --config Release

pause
