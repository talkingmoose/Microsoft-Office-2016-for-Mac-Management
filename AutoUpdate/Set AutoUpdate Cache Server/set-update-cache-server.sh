#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Script to set the Microsoft AutoUpdate client to a custom MAUCacheAdmin server.

This script modifies /Library to affect all users.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/set-update-cache-server.sh
'

defaults write "/Library/Preferences/com.microsoft.autoupdate2.plist" UpdateCache 'https://jss.talkingmoose.net:8443/maucache'

exit 0
