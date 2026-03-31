#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"   # Package name to check

# --- Check if package is installed ---
if command -v $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed."

    # Display package details
    VERSION=$($PACKAGE --version 2>&1 | head -1)
    echo "Version    : $VERSION"
    echo "Location   : $(which $PACKAGE)"
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case statement for description ---
case $PACKAGE in
    python3) echo "Python: A widely used open-source programming language" ;;
    git) echo "Git: Version control system used by developers" ;;
    apache2) echo "Apache: Open-source web server" ;;
    mysql) echo "MySQL: Open-source database system" ;;
    *) echo "Unknown package" ;;
esac