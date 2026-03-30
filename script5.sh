#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL every day, and it reminds me that open source is about $FREEDOM." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely with the world." >> $OUTPUT
echo "I believe knowledge should be open, accessible, and collaborative." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

