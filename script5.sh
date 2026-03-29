#!/bin/bash
#Author = Monu kumar Chaudhary
# Script 5: Open Source Manifesto Generator

echo "--------------------------------"
echo " Open Source Manifesto Generator"
echo "--------------------------------"

# Take user input
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file name
OUTPUT="manifesto_$(whoami).txt"

# Write manifesto to file
echo "--------------------------------" > "$OUTPUT"
echo " Open Source Manifesto" >> "$OUTPUT"
echo "--------------------------------" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I regularly use $TOOL in my daily work." >> "$OUTPUT"
echo "For me, freedom means $FREEDOM." >> "$OUTPUT"
echo "In the future, I would like to build $BUILD and share it with the community." >> "$OUTPUT"

echo ""
echo "Manifesto saved in file: $OUTPUT"
echo "--------------------------------"

# Display file content
cat "$OUTPUT"
