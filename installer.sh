#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/emilnabil/bissfeed-autokey/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################

# my config script #

MY_IPK_PY2="enigma2-plugin-emil-bissfeed-autokey-py2_emil-nabil_all.ipk"
MY_IPK_PY3="enigma2-plugin-emil-bissfeed-autokey-py3_emil-nabil_all.ipk"
MY_URL="https://raw.githubusercontent.com/emilnabil/bissfeed-autokey/main"
PYTHON_VERSION=$(python -c 'import sys; print(sys.version_info[0])')

######################################################################################
MY_EM='============================================================================================================'
#  Remove Old Plugin  #
echo "   >>>>   Remove old version   "

echo "Checking for BissFeedAutoKey in the system..."
if [ -d /usr/lib/enigma2/python/Plugins/Extensions/BissFeedAutoKey ]; then
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/BissFeedAutoKey > /dev/null 2>&1
else
	echo "BissFeedAutoKey was not found in the system"
	echo "Proceeding to installation..."
fi

#################################
    
###################
echo "============================================================================================================================"
 echo " DOWNLOAD AND INSTALL PLUGIN "

echo "   Install Plugin please wait "

cd /tmp 

set -e
    
  wait
     
if python --version 2>&1 | grep -q '^Python 3\.'; then
  wget "$MY_URL/$MY_IPK_PY3"
opkg install --force-overwrite $MY_IPK_PY3
	else 
echo "   Install Plugin please wait "
   wget "$MY_URL/$MY_IPK_PY2"
opkg install --force-overwrite $MY_IPK_PY2
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK_PY2
rm -f /tmp/$MY_IPK_PY3
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4;                         
echo $MY_EM
###################                                                                                                                  
echo " Your Device Will RESTART Now " 
echo "**********************************************************************************"
wait
init 4
init 3
exit 0






















