#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Command to install Microsoft Office 2016 for Mac. This allows for silent installs while a user is logged in to a computer. It also allows installs while no user is logged in to a computer. Quit all existing Office 2016 applications before running this script.

INSTRUCTIONS:

1) Copy the Microsoft_Office_2016_15.x.0_Installer.pkg package to the target computer.
2) Modify the line below to include the correct path to the installer package and the correct path to the target disk. As of macOS, targeting the current boot volume should include the full path to the disk name instead of just "/".
3) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/install-office-2016.sh
'

/usr/sbin/installer -pkg '/path/to/Microsoft_Office_2016_15.x.0_Installer.pkg' -target '/Volumes/Macintosh HD'

exit 0
