#!/bin/bash
ARCHIVE=demonizer.love

# git archive doesn't include lfs files
zip -r9 $ARCHIVE `git ls-files` -x ".git*" "**/.git*" "love-android/*"
