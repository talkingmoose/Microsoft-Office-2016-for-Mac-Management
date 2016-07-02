#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Command to disable access to Office Insider in Microsoft AutoUpdate.

This script modifies /Library to affect all users.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/disable-office-insider.sh
'

defaults write /Library/Preferences/com.microsoft.autoupdate2.plist DisableInsiderCheckbox -bool TRUE

exit 0