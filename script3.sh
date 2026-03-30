#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "----------------------"

# Check Python config directory
CONFIG_DIR="/etc/python3"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "Python Config Directory: $CONFIG_DIR => $PERMS"
else
    echo "Python config directory not found"
fi

