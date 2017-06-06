#----------------
# fncs setup
#----------------
export FNCS_INSTALL=$GRIDAPPSD_INSTALL/builds/test

cd /tmp
wget http://download.zeromq.org/zeromq-3.2.4.tar.gz
tar -xzf zeromq-3.2.4.tar.gz
cd zeromq-3.2.4
./configure --prefix=$FNCS_INSTALL
make
make install
rm zeromq-3.2.4.tar.gz
rm -r zeromq-3.2.4

cd /tmp
wget http://download.zeromq.org/czmq-3.0.0-rc1.tar.gz
tar -xzf czmq-3.0.0-rc1.tar.gz
cd czmq-3.0.0
./configure –prefix=$FNCS_INSTALL –with-libzmq=$FNCS_INSTALL
make
make install
rm czmq-3.0.0-rc1.tar.gz
rm -r czmq-3.0.0

cd $GRIDAPPSD_INSTALL/sources
git clone https://github.com/FNCS/fncs.git
cd fncs
./configure –prefix=$FNCS_INSTALL –with-zmq=$FNCS_INSTALL
make
make install

export PATH=$PATH:$FNCS_INSTALL/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FNCS_INSTALL/lib

