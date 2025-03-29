#!/bin/bash
# Run this script to deploy changes - bash deploy.sh

# Build the site
jekyll build

# Switch to the gh-pages branch
git checkout gh-pages

# Remove old files
git rm -rf .

# Copy the built files
cp -r _site/* .

# Stage and commit changes
git add .
git commit -m "Deploy built site"

# Push to GitHub
git push origin gh-pages

# Switch back to the main branch
git checkout main