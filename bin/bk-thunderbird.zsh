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
# Compress each profile in zip
for profile in $THUNDERBIRD_PROFILE_DIR/*; do
  # skip file
  if [[ ! -d $profile ]]; then
    continue
  fi

  # already exists zip file
  if [[ -f $profile.zip ]]; then
    echo "[Skip] $profile.zip is already exists"
    continue
  fi

  # Archive
  echo "[Archive] $profile -> $profile.zip"
  zip -e -r --quiet $profile.zip $profile
done

# Open the Thunderbird profile directory
open $THUNDERBIRD_PROFILE_DIR
