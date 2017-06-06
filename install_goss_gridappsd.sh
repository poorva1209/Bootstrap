export GRIDAPPSD_INSTALL=/home/gridappsd/gridappsd_project

mkdir -p gridappsd_project

mkdir -p gridappsd_project/sources

mkdir -p gridappsd_project/builds

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

