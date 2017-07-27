# NOTE
# build script for cli interface with cross-compile environment
#		for arm 	: ./build.sh arm
#		for amd64 	: ./build.sh
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

make clean
rm -rf CMakeCache.txt
rm -rf CMakeFiles

CMAKE_C_FLAGS="-std=gnu99 -g"

if [ "$1" = "arm" ]; then
	CMAKE_C_COMPILER=/usr/bin/arm-linux-gnueabi-gcc
	CMAKE_CXX_COMPILER=/usr/bin/arm-linux-gnueabi-g++
	_LIB_INSTALL_DIR=$(pwd)/build/arm/lib
	_BIN_INSTALL_DIR=$(pwd)/build
else
	CMAKE_C_COMPILER=/usr/bin/gcc
	CMAKE_CXX_COMPILER=/usr/bin/g++
	_LIB_INSTALL_DIR=/usr/local/lib
	_BIN_INSTALL_DIR=/usr/local
fi

cmake . -DCMAKE_C_FLAGS:STRING="${CMAKE_C_FLAGS}" \
	-DCMAKE_C_COMPILER:FILEPATH="${CMAKE_C_COMPILER}" \
	-DCMAKE_CXX_COMPILER:FILEPATH="${CMAKE_CXX_COMPILER}" \
	-DBIN_INSTALL_DIR:STRING="${_BIN_INSTALL_DIR}" \
	-DLIB_INSTALL_DIR:STRING="${_LIB_INSTALL_DIR}" \

make
if [ "$1" = "arm" ]; then
	make install
else
	sudo make install
fi
