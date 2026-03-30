#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "-----------------------------"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    dpkg -l | grep $PACKAGE | awk '{print "Version: " $3}'

    echo "License: PSF License"
    echo "Summary: Python is a high-level, open-source programming language."

else
    echo "$PACKAGE is NOT installed."
fi

echo "-----------------------------"

# Case statement for philosophy
case $PACKAGE in
    python3) echo "Python: simplicity and readability for everyone" ;;
    git) echo "Git: version control that empowers developers" ;;
    vlc) echo "VLC: play anything, anytime, freely" ;;
    apache2) echo "Apache: backbone of the open web" ;;
    *) echo "Unknown package" ;;
esac


