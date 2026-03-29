#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Monu Kumar Chaudhary"
SOFTWARE="Python"

KERNEL=$(uname -r)
USER_NAME="Monu Kumar Chaudhary"
DISTRO=$(lsb_release -d | cut -f2)
UPTIME=$(uptime -p)
DATE=$(date)

echo "======================================"
echo " Open Source Audit - $STUDENT_NAME"
echo "======================================"
echo "Chosen Software : $SOFTWARE"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Linux Distro    : $DISTRO"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE"
