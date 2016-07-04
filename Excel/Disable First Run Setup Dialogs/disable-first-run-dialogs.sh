#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Command to disable the Microsoft Excel First Run Setup dialogs

This script modifies /Library to affect all users.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/disable-first-run-dialogs.sh
'

defaults write "/Library/Preferences/com.microsoft.Excel.plist" OUIWhatsNewLastShownLink -string 624954
defaults write "/Library/Preferences/com.microsoft.Excel.plist" kSubUIAppCompletedFirstRunSetup1507 -bool TRUE

exit 0
