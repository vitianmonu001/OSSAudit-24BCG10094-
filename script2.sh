#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Monu Kumar Chaudhary(24BCG10094)
# Course: Open Source Software

PACKAGE='git'
echo "Checking package: $PACKAGE"
echo "Git is assumed installed (simulation)"
echo "git version 2.34.1"
case $PACKAGE in
    git)
       echo "Git: version control system used to track code changes"
       ;;
    *)
       echo "Unknown package"
       ;;
esac
