#!/bin/bash

# This script ensures the site is ok to build against Hugo.
DIR=`pwd`

THEME_URL=git@github.com:lebarde/hugo-material-docs.git
THEME_NAME=hugo-material-docs

# Get the theme up to date
cd $DIR/themes
if [ -d "$THEME_NAME" ]; then
    cd "$THEME_NAME" && git pull
else
    git clone $THEME_URL
fi

cd $DIR

echo "Execute: \$ ./hugo -s $PWD server"
