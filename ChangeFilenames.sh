#!/bin/bash

# Changes the station name of all subdirectories and files in a directory
# Promts for what directory to search and what to change to
# Keeps all date tags for files and folders

# Usage:
# ./ChangeFilesnames.sh <Folder_to_search> <What_to_find> <What_to_replace_with>

echo "Searching: $1";
echo "Replacing $2 with $3";

for object in $1/*
do
	echo $object
	new_name="${object/$2/$3}"
	echo $new_name
	mv $object new_name
done
