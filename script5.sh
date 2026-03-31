#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions:"
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

# --- Date and output file ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generate manifesto ---
echo "On $DATE, I believe that open-source tools like $TOOL represent $FREEDOM." > $OUTPUT
echo "I aim to build and share $BUILD with the community to contribute to open innovation." >> $OUTPUT

# --- Display output ---
echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT