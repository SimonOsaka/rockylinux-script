git clone https://github.com/htop-dev/htop.git

cd htop

sudo dnf install autoconf automake libtool make

sudo dnf install ncurses-devel

./autogen.sh && ./configure && make

make install
