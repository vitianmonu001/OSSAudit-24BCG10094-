#!/bin/bash

# Script 4: Log File Analyzer
# Author: Monu Kumar Chaudhary
# Course: Open Source Software



# Take input arguments
LOGFILE=$1
KEYWORD=${2:-error}   # default keyword = error
COUNT=0

# Check if file is provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

# Read file line by line
while IFS= read -r line
do
    echo "$line" | grep -iq "$KEYWORD"
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Output result
echo "--------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------"

# Show last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
