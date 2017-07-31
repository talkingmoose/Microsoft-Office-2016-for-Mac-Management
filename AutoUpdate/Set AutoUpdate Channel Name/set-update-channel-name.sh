#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Script to set a custom channel for Microsoft AutoUpdate clients.

This script modifies /Library to affect all users.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/set-update-channel-name.sh
'

defaults write "/Library/Preferences/com.microsoft.autoupdate2.plist" ChannelName -string Custom
defaults write "/Library/Preferences/com.microsoft.autoupdate2.plist" ManifestServer -string 'https://jss.talkingmoose.net:8443/maucache/collateral/production/'

exit 0
