cd ./temp/rofi-emoji
autoreconf -i
mkdir build
cd build/
../configure
make
sudo make install
