#!/bin/bash

ID=$1
DIRECTORY=$2


#to check if arguments were provided
if [ -z "$ID" ] || [ -z "$DIRECTORY" ]; then
  echo "Usage: $0 <ID> <directory>"
  exit 1
fi

#check if the dir exists
if [ ! -d "$DIRECTORY" ]; then
  echo "Error: Directory $DIRECTORY does not exist"
  exit 1
fi

#check if the folder with spesific id exists
if [ -d "$DIRECTORY/$ID" ]; then
  echo "Folder with ID $ID already exists"
else
  echo "Creating folder with ID $ID..."
  mkdir -m 755 "$DIRECTORY/$ID"
  mkdir -m 700 "$DIRECTORY/$ID/windows"
  mkdir -m 700 "$DIRECTORY/$ID/linux"
fi

exit 0

