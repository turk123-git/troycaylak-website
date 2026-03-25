#!/bin/bash
SITE_ID="gorgeous-fenglisu-8b138c"
ZIP_FILE="site-deploy-updated.zip"

# Extract the zip to a temp directory
TEMP_DIR=$(mktemp -d)
unzip -q "$ZIP_FILE" -d "$TEMP_DIR"

# Deploy using Netlify's simple drag-and-drop API
# First, list all files to be deployed
cd "$TEMP_DIR/site-deploy"

# Create manifest of files
find . -type f -print0 | xargs -0 ls -lR

echo "Ready to deploy from: $(pwd)"
