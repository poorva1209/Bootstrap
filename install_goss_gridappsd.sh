export GRIDAPPSD_INSTALL=/home/gridappsd/gridappsd_project

mkdir -p $GRIDAPPSD_INSTALL

mkdir -p $GRIDAPPSD_INSTALL/sources

mkdir -p $GRIDAPPSD_INSTALL/builds

#----------------
# goss gridapps-d setup
#----------------
cd $GRIDAPPSD_INSTALL/sources

git clone https://github.com/GRIDAPPSD/GOSS-GridAPPS-D.git
cd GOSS-GridAPPS-D
./build-goss-test.sh

#----------------
# mysql setup
#----------------



#----------------
# goss gridapps-d setup
#----------------
cd $GRIDAPPSD_INSTALL/sources
git clone https://github.com/GRIDAPPSD/viz.git

