
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
./install_gridlabd_xerces.sh
su gridappsd -c "./install_gridlabd_pt2.sh"

#----------------
# GOSS GridAPPS-D  and Viz setup
#----------------
cp gridappsd_mysql_dump.sql /tmp
chmod a+r /tmp/gridappsd_mysql_dump.sql
su gridappsd -c "./install_goss_gridappsd.sh"
