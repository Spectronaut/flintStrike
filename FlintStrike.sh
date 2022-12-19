#!/bin/bash

cd ~
pathToScript="$HOME/ProjectsRepo/flintStrike/create.py"
output=$(python3 $pathToScript $1)
echo "The output of this sript is $output"
cd $output
touch README.txt

