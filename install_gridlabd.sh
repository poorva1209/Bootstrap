#----------------
# gridlab-d setup
#----------------
cd $GRIDAPPSD_INSTALL/sources
git clone https://github.com/gridlab-d/gridlab-d.git -b release/RC4.0 --single-branch
cd gridlab-d/third_party
tar -xzf xerces-c-3.1.1.tar.gz
cd xerces-c-3.1.1
./configure
make
make install
cd ../../

autoreconf -if
./configure --prefix=$GLD_INSTALL/install --with-fncs=$FNCS_INSTALL --enable-silent-rules 'CFLAGS=-g -O0 -w' 'CXXFLAGS=-g -O0 -w' 'LDFLAGS=-g -O0 -w'
make
install
