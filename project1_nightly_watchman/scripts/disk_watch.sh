#!/bin/bash

#Setting the place for logs
LOG_DIR="/home/devops_junior/tasks/learn/project1_nightly_watchman/logs"

#Creating timeStamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

#Setting output files
OUTPUT_FILE="$LOG_DIR/disk_usage_$TIMESTAMP.txt"

#Check the Disk usage
df -h > $OUTPUT_FILE

#Printing the successful message
echo "Disk usage report saved to $OUTPUT_FILE"
