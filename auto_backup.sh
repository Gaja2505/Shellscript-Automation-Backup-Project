#!/bin/bash
# This tells the system to run this script using bash shell


# Simple file backup Monitor


SOURCE="$HOME/project2/source"
# This is the folder we are montitoring for changes

BACKUP="$HOME/project2/backup"
# This is where backup will be stored

LOGS="$HOME/project2/logs/backup.log"
# This file stores logs of all backup activities


# Create required directories if not exist
#
mkdir -p "$BACKUP"

mkdir -p "$(dirname "$LOGS")"
# Creates logs folder automatically using dirname

echo "Monitoring started on $(date)"
>> "$LOGS"
# writes start time into log file

#Start Monitoring source Folder
inotifywait -m -r -e modify,create,delete "$SOURCE"  |
while read path action file 
do 

# -m = monitor continously
# -r = recursive ( includes subfolders)
# -e = events (modify,create,delete)

	DATE=$(date +%Y-%m-%d-%H-%M-%S)
# create unique time-based folder name
	BACKUP_FOLDER="$BACKUP/backup-$DATE"
# create unique backup folder path

	cp -r "$SOURCE" "$BACKUP_FOLDER"
# copies all files recursively into backup folder

	echo "[$DATE] File $file was $action. Backup created at $BACKUP_FOLDER" >> "$LOGS"
# Stores detailed activity in log file

	echo "Backup Completed."
# Shows Confirmation in Terminal

done

