#!/bin/bash
# Script Name: AtoMiC qBittorrent Password Reset
# Author: htpcBeginner
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

if [[ $ISSETUP != "Yes" ]]
then
  echo
  echo -e '\e[91mCannot be run directly. Please run setup.sh from AtoMiC ToolKit root folder: \033[0msudo bash setup.sh'
  echo
  exit 0
fi
source $SCRIPTPATH/inc/commons.sh
source $SCRIPTPATH/inc/header.sh

source $SCRIPTPATH/qbittorrent-nox/qbittorrent-constants.sh

echo -e $GREEN'AtoMiC '$APPTITLE' Password Reset Script'$ENDCOLOR

source $SCRIPTPATH/inc/pause.sh
source $SCRIPTPATH/inc/app-folder-check.sh
source $SCRIPTPATH/inc/app-settings-check.sh
source $SCRIPTPATH/inc/app-stop.sh

source $SCRIPTPATH/inc/app-user-search.sh
source $SCRIPTPATH/inc/app-password-search.sh

# New password = atomic
NEWPASS="@ByteArray(0ce6d6b393ab094aacd23da311370e3a)"
source $SCRIPTPATH/inc/app-password-temp.sh

source $SCRIPTPATH/inc/app-start.sh
source $SCRIPTPATH/inc/app-reset-confirmation.sh
source $SCRIPTPATH/inc/thankyou.sh
source $SCRIPTPATH/inc/exit.sh