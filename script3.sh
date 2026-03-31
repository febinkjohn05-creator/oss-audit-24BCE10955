#!/bin/bash
# Script 3: Disk and Permission Auditor

# List of important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions, owner, and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# --- Check Python directory ---
echo ""
echo "Checking Python directory..."

if [ -d "/usr/lib/python3" ]; then
    ls -ld /usr/lib/python3
else
    echo "Python directory not found"
fi