#!/bin/bash
# cPanel email migration script, to run don't foget to chmod +x the script.
# by Denis (BeforeMyCompileFails) 2025

# Set variables
DOMAIN="YOUR-DOMAIN-HERE"
SOURCE_EMAIL="SOURCE-EMAIL"
DEST_EMAIL="DEST-EMAIL"
EMAIL_DIR="/home/username/mail/$DOMAIN"

# Check if source email exists
if [ ! -d "$EMAIL_DIR/$SOURCE_EMAIL" ]; then
    echo "Error: SOURCE Email does not exist"
    exit 1
fi

# Make destination folder
mkdir -p "$EMAIL_DIR/$DEST_EMAIL"

# Run rsync
rsync -av --progress "$EMAIL_DIR/$SOURCE_EMAIL/" "$EMAIL_DIR/$DEST_EMAIL/"

# Check if rsync was successful
if [ $? -eq 0 ]; then
    echo "Migration was successful"
else
    echo "Error: Migration failed"
    exit 1
fi

# Remove original email (uncomment if needed)
# rm -rf "$EMAIL_DIR/$SOURCE_EMAIL"

exit 0

