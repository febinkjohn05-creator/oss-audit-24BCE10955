#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1                    # First argument = log file
KEYWORD=${2:-"error"}        # Default keyword = error
COUNT=0                      # Counter variable

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Read file line by line ---
while IFS= read -r LINE; do

    # Check if line contains keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# --- Display result ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5