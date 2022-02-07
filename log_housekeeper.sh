#!/usr/bin/bash

# Variables
current_day=$(date)
folder_path=/home/ec2-user/logs/
log_output_dir=/home/ec2-user/log28-housekeeper-logs

# Finding log files older than 28 days and appending deletion status to log file.
echo "The following log files have been removed as they are older than 28 days: " + $(find $folder_path -type f -mtime +28 -name "*.log") >> $log_output_dir/"$current_day"

# Removing log files older than 28 days.
find $folder_path -type f -mtime +28 -name "*.log" -delete
