#!/bin/bash
# Script 1: System Identity Report
# Author: Harnish Sankhla | Course: Open Source Software

STUDENT_NAME="Harnish Sankhla"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "--------------------------------------"
echo "Python Version  : $(python3 --version)"
echo "--------------------------------------"
echo "License Info    : Linux kernel is licensed under GPL v2"
echo "======================================"

