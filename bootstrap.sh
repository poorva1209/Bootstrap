#prereq should have a user called gridappsd that everthing is expected to run under

#bootstrap - launch this script as root   

#----------------
# prereq setup
#----------------
./install_prereqs.sh

#----------------
# fncs setup
#----------------
su gridappsd -p -c "./install_fncs.sh"

#----------------
# gridlabd setup
#----------------
su gridappsd -p -c "./install_gridlabd.sh"

#----------------
# GOSS GridAPPS-D  and Viz setup
#----------------
su gridappsd -p -c "./install_fncs.sh"
