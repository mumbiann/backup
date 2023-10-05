#!/bin/bash

# Define source directories and backup directory
source_dir1="/Students1"
source_dir2="/Staff1"
backup_dir="/backup/"

# Create a timestamp for the backup directory
timestamp=$(date +"%Y%m%d%H%M%S")

# Backup the contents of source_dir1 using rsync
rsync -av "$source_dir1" "$backup_dir"backup_sales_"$timestamp"/

# Backup the contents of source_dir2 using rsync
rsync -av "$source_dir2" "$backup_dir"backup_marketing_"$timestamp"/

# Remove backups older than 7 days (adjust as needed)
find "$backup_dir" -type d -mtime +7 -exec rm -rf {} \;

