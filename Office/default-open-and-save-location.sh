#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Command to set the Open and Save behavior for all Office applications to default to a local drive 'On My Mac' instead of 'Online Locations'. This does not prevent the user from choosing an online location, however, while the file exists, it will always present local disks and file shares first instead of online OneDrive or SharePoint locations.

This script modifies all existing home folders.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/install-office-2016.sh
'

# create a list of users with home folders
# omit root, nobody and system users

homeslist=$( dscl . list /Users NFSHomeDirectory | grep -v 'root\|nobody\|_' )

# write to User Template

mkdir -p "/System/Library/User Template/Non_localized/Library/Group Containers/UBF8T346G9.Office"
defaults write "/System/Library/User Template/Non_localized/Library/Group Containers/UBF8T346G9.Office/com.microsoft.officeprefs.plist"

# write to existing home folders

while IFS= read -r aLine
do
	aUser=$( echo "$aLine" | awk '{print $1}' )
	aHome=$( echo "$aLine" | awk '{print $2}' )
	if [[ -d "$aHome" ]] ; then
		defaults write "$aHome/Library/Group Containers/UBF8T346G9.Office/com.microsoft.officeprefs.plist" DefaultsToLocalOpenSave -bool TRUE
		chown "$aUser" "$aHome/Library/Group Containers/UBF8T346G9.Office"
	fi
done <<< "$homeslist"

exit 0