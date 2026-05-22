#Real-Time File Backup Automation Using Shell Scripting


##Project Description
This project is a real-time automated backup system created using Bash shell scripting in Linux.

The script automattically:
  - Monitors file changes using inotifywait
  - Creates compressed tar.gz backups
  - Stores backup files with timestamps
  - Maintains backup logs
  - Organizes backup folders automattically


## Technologies Used
  - Linux
  - Shell Scripting (Bash)
  - inotify-tools
  - Tar
  - Git & Github

## Project Structure

 project2/
 |--auto_backup.sh
 |--source/
 |--backup/
 |--logs/
 |--README.md


## Features
 - Real-time file monitoring 
 - Automated backup creation
 - tar.gz compressed backups
 - Timestamp-based backup naming
 - Log file generation 
 - Error handling using if-else
 - Linux automation practice project


## How it works 
  - The script monitors the source folder continously
  - Detects file create/modify/delete events
  - Creates compressed tar.gz backup automatically
  - Stores backup inside backup folder
  - Upadates logs with backup status

## tar -czf Command Explanation

tar -czf backup.tar.gz source/

    - c  --> Create archive
    - z  --> Compress using gzip
    - f  --> Output file name

This command creates compressed backups to save storage space.


## How to run 

```bash
chmod +x auto_backup.sh
./auto_backup.sh

## Author 

BR Gajendra Babu
