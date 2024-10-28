#!/bin/zsh

#
# Backup Thunderbird Profiles
#

#----------------------------------------
# Settings
#----------------------------------------
# Profile Directory
THUNDERBIRD_PROFILE_DIR="$HOME/Library/Thunderbird/Profiles"

# Remove global-messages-db.sqlite(1:Remove, 0:Not remove)
FLAG_REMOVE_GLOBALMESSAGESDB=1

# Split File Size(Mbyte, 0:Not split)
SPLIT_FILE_SIZE=1024

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
  echo "[Archive] $profile"
  zip -e -r --quiet $profile.zip $profile

  # Remove global-messages-db.sqlite in Zip
  if [ $FLAG_REMOVE_GLOBALMESSAGESDB -eq 1 ]; then
    echo "[Remove] $profile/global-messages-db.sqlite"
    zip --delete $profile.zip "$profile/global-messages-db.sqlite"
  fi

  # Split
  if [ $SPLIT_FILE_SIZE -gt 0 ]; then
    # if file size is larger than $SPLIT_FILE_SIZE, split zip file
    zip_size=$(stat -f%z $profile.zip)
    if [ $zip_size -gt $((SPLIT_FILE_SIZE * 1024 * 1024)) ]; then
      echo "[Split] $profile.zip"
      split -b $((SPLIT_FILE_SIZE * 1024 * 1024)) $profile.zip "$profile.zip.part."
    fi
  fi
  echo "done."
  echo ""
done

# Open the Thunderbird profile directory
open $THUNDERBIRD_PROFILE_DIR
