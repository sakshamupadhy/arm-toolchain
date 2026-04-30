mkdir build-newlib
cd build-newlib

../newlib-4.4.0.20231231/configure \
--target=arm-none-eabi \
--prefix=$HOME/arm-toolchain/install

make -j$(nproc)
make install

cd ..
