wget -P ~/documents/liero https://launchpad.net/lierolibre/trunk/0.5/+download/lierolibre-0.5.tar.xz
cd ~/documents/liero
tar xf lierolibre-0.5.tar.xz
cd lierolibre-0.5
sudo apt-get install build-essential libtool pkg-config libsdl1.2-dev libsdl-mixer1.2-dev zlib1g-dev libconfig++-dev libboost-program-options-dev sox imagemagick
./configure
make
sudo make install
