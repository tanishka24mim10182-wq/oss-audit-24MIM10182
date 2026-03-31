#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rio
# Concepts: read for input, string concatenation, writing to a file with >

echo "=========================================="
echo "   Open Source Manifesto Generator        "
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo

# Asking questions interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date
DATE=$(date +'%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# Creating the paragraph
echo "--- MY OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Created on: $DATE" >> $OUTPUT
echo "By: $USER_NAME" >> $OUTPUT
echo "" >> $OUTPUT
echo "In the world of software, I rely on $TOOL to get my work done." >> $OUTPUT
echo "To me, 'freedom' in technology is best described as: $FREEDOM." >> $OUTPUT
echo "I believe in the power of sharing, and if I could, I would build $BUILD and give it to the world for free." >> $OUTPUT
echo "==========================================" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "------------------------------------------"
cat $OUTPUT
