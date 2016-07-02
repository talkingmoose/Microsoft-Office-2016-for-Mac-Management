#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Script to redirect clients to an institutionally-owned manifest server to control which updates
a client can install.

This script modifies /Library to affect all users.

INSTRUCTIONS:

Part I

Configure an HTTP or HTTPS web server on your network. Optionally, enable access to this server from the Internet.
Then download the .cat and .xml files for the applications you wish to manage from the URL below. Places these files
on your web server.

https://www.microsoft.com/mac/autoupdate/

Excel 2016 for Mac
0409XCEL15.cat
0409XCEL15.xml

OneNote 2016 for Mac
0409ONMC15.cat
0409ONMC15.xml

Outlook 2016 for Mac
0409OPIM15.cat
0409OPIM15.xml

PowerPoint 2016 for Mac
0409PPT315.cat
0409PPT315.xml

Word 2016 for Mac
0409MSWD15.cat
0409MSWD15.xml

Do not edit these files. View the .xml file and verify it contains references to the version of software you want
your client computers to access. For example, search for "15.23" to verify this is the version the file references.

Part II

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/manifest-server.sh
'

defaults write /Library/Preferences/com.microsoft.autoupdate2.plist ChannelName -string 'Custom'
defaults write /Library/Preferences/com.microsoft.autoupdate2.plist ManifestServer -string 'https://yourwebserver/yourpath/'

exit 0