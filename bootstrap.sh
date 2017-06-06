#prereq should have a user called gridappsd that everthing is expected to run under

#bootstrap - launch this script as root   

chmod a+x *.sh

#----------------
# prereq setup
#----------------
./install_prereqs.sh

#----------------
# fncs setup
#----------------
su gridappsd -c "./install_fncs.sh"

#----------------
# gridlabd setup
#----------------
su gridappsd -c "./install_gridlabd.sh"

#----------------
# GOSS GridAPPS-D  and Viz setup
#----------------
su gridappsd -c "./install_fncs.sh"
