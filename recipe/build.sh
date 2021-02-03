mkdir build
cd build

cmake ${CMAKE_ARGS} \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_BUILD_LLVM_DYLIB=ON \
  -DLLVM_BUILD_LLVM_DYLIB=ON \
  -DLLVM_BUILD_TOOLS=ON \
  ../mlir

make -j${CPU_COUNT}
