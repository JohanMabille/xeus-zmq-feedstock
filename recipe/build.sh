#!/bin/bash

export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY=1"

cmake ${CMAKE_ARGS}                  \
      -GNinja                        \
      -DCMAKE_BUILD_TYPE=Release     \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib     \
      $SRC_DIR

ninja

ninja install
