#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# TODO: Dependencies should be separate packages...
mkdir opensim_dependencies_build
cd opensim_dependencies_build
cmake ../dependencies/ \
      -DCMAKE_INSTALL_PREFIX="$PREFIX" \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j8
cd ..

# TODO: Tests are missing!
mkdir opensim_build
cd opensim_build
cmake ../ \
      -DCMAKE_INSTALL_PREFIX="$PREFIX" \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo \
      -DOPENSIM_DEPENDENCIES_DIR="$PREFIX" \
      -DBUILD_PYTHON_WRAPPING=ON \
      -DBUILD_JAVA_WRAPPING=ON \
      -DWITH_BTK=ON
make -j8
make install