#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rio
# Concepts: for loops, ls -ld, awk, and checking directory existence.

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "------------------------------------------"
echo "        Directory Audit Report            "
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, "$4"}')
        # Get the size of the directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "DIR: $DIR"
        echo " -> Permissions: $PERMS"
        echo " -> Size: $SIZE"
        echo "------------------------------------------"
    else
        echo "NOTICE: $DIR does not exist on this system."
    fi
done

# TODO for Apache audit: Check the Apache config directory
APACHE_DIR="/etc/apache2"
if [ -d "$APACHE_DIR" ]; then
    echo "Apache Config Check: $APACHE_DIR exists."
    ls -ld "$APACHE_DIR" | awk '{print "Permissions: ", $1, "| Owner: ", $3}'
fi
