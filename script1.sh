#!/bin/bash
# Script 1: System Identity Report
# Author: Rio
# Course: Open Source Software [cite: 104]

# --- Variables [cite: 105]
STUDENT_NAME="Rio"
SOFTWARE_CHOICE="Apache HTTP Server"

# System info [cite: 109]
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
DATE_TIME=$(date)

# --- Display [cite: 113]
echo "=========================================="
echo "          Open Source Audit               "
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "=========================================="
echo "OS Distro    : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $DATE_TIME"
echo "License      : This OS is covered by the GPL License."
echo "=========================================="
