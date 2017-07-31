#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Script to set how often Microsoft AutoUpdate checks for updates.
         Integer below is in minutes.
         Default is 720 minutes or every 12 hours
         240 minutes = every 4 hours
         10,080 minutes = Once per week

This script modifies /Library to affect all users.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/set-update-check-frequency.sh
'

defaults write "/Library/Preferences/com.microsoft.autoupdate2.plist" UpdateCheckFrequency -int 240

exit 0
