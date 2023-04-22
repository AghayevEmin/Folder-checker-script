#!/bin/bash

ID="SD73990"

DIRECTORY="/home/eminaghayev/Projects/STLA-testing"

chmod 777 "/home/eminaghayev/Projects/STLA-testing/script.sh"
#checks if the folder with specific id exists or not if not creates one"
if [ -d "$DIRECTORY/$ID" ]; then
  echo "Folder with ID $ID already exists"
else
  echo "Folder with ID $ID does not exist, creating one..."
  mkdir -m 777 "$DIRECTORY/$ID"
  mkdir -m 777 "$DIRECTORY/$ID/Windows"
  mkdir -m 777 "$DIRECTORY/$ID/Linux"
fi
