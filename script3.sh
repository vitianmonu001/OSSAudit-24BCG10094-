#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Monu Kumar Chaudhary
# Course: Open Source Software



echo "Directory Audit Report"
echo "----------------------"

# Important directories list
DIRS="/etc /var/log /home /usr/bin /tmp"

# Loop through each directory
for DIR in $DIRS
do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERM=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get size of directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done
