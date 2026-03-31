#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Febin K John"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software        : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Current Date    : $DATE"
echo "License         : Linux is licensed under PSF"