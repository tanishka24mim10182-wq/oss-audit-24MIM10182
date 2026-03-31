#!/bin/bash
# Script 4: Log File Analyzer
# Author: Rio
# Usage: ./script4.sh /var/log/apache2/error.log error

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Check if file exists [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read file line by line [cite: 177, 178]
while read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."

# Display the last 3 matching lines [cite: 184]
echo "Last 3 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 3
