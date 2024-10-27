#!/bin/zsh

#
# Backup Thunderbird Profiles
#

#----------------------------------------
# Settings
#----------------------------------------
# Profile Directory
THUNDERBIRD_PROFILE_DIR="$HOME/Library/Thunderbird/Profiles"

#----------------------------------------
# Check
#----------------------------------------
# Check Directory
if [ ! -d $THUNDERBIRD_PROFILE_DIR ]; then
  echo "Directory not found: $THUNDERBIRD_PROFILE_DIR"
  exit 1
fi
if [ ! -w $THUNDERBIRD_PROFILE_DIR ]; then
  echo "Directory not writable: $THUNDERBIRD_PROFILE_DIR"
  exit 1
fi

#----------------------------------------
# Archive
#----------------------------------------
# Compress each profile in 7zip
for profile in $THUNDERBIRD_PROFILE_DIR/*; do
  echo "[Archive] $profile -> $profile.zip"
  zip -e -r --quiet	 $profile.zip $profile
done

# Open the Thunderbird profile directory
open $THUNDERBIRD_PROFILE_DIR
