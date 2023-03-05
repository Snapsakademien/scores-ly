#!/bin/bash

# Get the score header
score=$(grep -A 10 '\\score' songs/varRedo.ly)

# Get title
title=$(echo "$score" | grep -o 'title = "[^"]*"' | sed 's/title = "//;s/"//')
# Get composer
composer=$(echo "$score" | grep -o 'composer = "[^"]*"' | sed 's/composer = "//;s/"//')

# Filename
filenameout="$title".md

# Write metadata
# touch filenameout
metadata=$(echo "## Title\n$title\n\n## Composer\n$composer" > "$filenameout")
# echo "$metadata" > "$filenameout"

filename="$title - $composer.md"
echo -e "---
title: $title
Composer: $composer
---" >> "$filename"


# Print the title & composer
echo "Title: $title"
echo "Composer: $composer"
