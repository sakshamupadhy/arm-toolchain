mkdir build-gcc
cd build-gcc

../gcc-13.2.0/configure \
--target=arm-none-eabi \
--prefix=$HOME/arm-toolchain/install \
--disable-nls \
--enable-languages=c \
--without-headers

make all-gcc -j$(nproc)
make install-gcc

cd ..
