#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/emilnabil/bissfeed-autokey/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################

# my config script #

MYTAR_PY2="enigma2-plugin-emil-bissfeed-autokey-py2.tar.gz"
MYTAR_PY3="enigma2-plugin-emil-bissfeed-autokey-py3.tar.gz"
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
  cd /tmp
    set -e
    echo "===> Downloading And Installing Bissfeed-AutoKey python3 plugin Please Wait ......"
    echo
    wget "$MY_URL/$MYTAR_PY3"
    tar -xzf enigma2-plugin-emil-bissfeed-autokey-py3.tar.gz --warning=no-timestamp -C /
    set +e
    rm -f enigma2-plugin-emil-bissfeed-autokey-py3.tar.gz
	else 
echo "===> Downloading And Installing Bissfeed-AutoKey python2 plugin Please Wait ......"
   echo
    wget "$MY_URL/$MYTAR_PY2"
    tar -xzf enigma2-plugin-emil-bissfeed-autokey-py2.tar.gz --warning=no-timestamp -C /
    set +e
    rm -f enigma2-plugin-emil-bissfeed-autokey-py2.tar.gz
	fi
echo "================================="
set +e
cd ..
wait
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4;                         
echo $MY_EM
###################                                                                                                                  
echo " Please RESTART Your Device " 
echo "**********************************************************************************"
wait
exit 0









