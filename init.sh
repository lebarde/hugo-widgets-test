#!/bin/bash

# This script ensures the site is ok to build against Hugo.
PWD=`pwd`

echo $PWD
if [ -d "${PWD}/themes/hemingway" ]; then
    cd "$PWD/themes/hemingway" && git pull
else
    git clone https://github.com/tanksuzuki/hemingway.git $PWD/themes/hemingway
fi

cd $PWD

echo "Execute: \$ ./hugo -s $PWD server"
