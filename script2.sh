#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rio

PACKAGE="apache2"

# Check if package is installed
if dpkg -l $PACKAGE &>/dev/null; then
    echo "SUCCESS: $PACKAGE is installed."
    # Extract version and summary [cite: 139]
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|License|Homepage'
    
    # Case statement for philosophy note [cite: 141]
    case $PACKAGE in
        apache2)
            echo "Note: Apache is the web server that built the open internet." ;;
        mysql*)
            echo "Note: MySQL is the heart of millions of database apps." ;;
        *)
            echo "Note: This is a vital part of the FOSS ecosystem." ;;
    esac
else
    echo "ERROR: $PACKAGE is NOT installed."
fi
