#/bin/bash
set -ex

function cmake_build {
	mkdir -p build
	cd build
	cmake -G "Unix Makefiles" ..
	make
	cd ..
}

cd protocol
./build.sh

cd ..
cmake_build

