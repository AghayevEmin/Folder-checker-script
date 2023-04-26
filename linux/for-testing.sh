#!/bin/bash

#this script if for testing purpases only the variables here are hardcoded :) 

ID="1234"

DIRECTORY="/path/to/directory/"

chmod 775 "/path/to/directory/for-testing.sh"
#checks if the folder with specific id exists or not if not creates one"
#just checking
if [ -d "$DIRECTORY/$ID" ]; then
  echo "Folder with ID $ID already exists"
else
  echo "Folder with ID $ID does not exist, creating one..."
  mkdir -m 777 "$DIRECTORY/$ID"
  mkdir -m 777 "$DIRECTORY/$ID/Windows"
  mkdir -m 777 "$DIRECTORY/$ID/Linux"
fi
