#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
git submodule update --remote public

# Build the project.
HUGO_ENV=production hugo --minify

# copy deploy favicon.png
cp -p static/images/favicon.* public/

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin main

# Come Back
cd ..
