#!/bin/bash

cd ~
pathToScript="$HOME/ProjectsRepo/flintStrike/create.py"
output=$(python3 $pathToScript $1)
echo "The output of this sript is $output"
cd $output
touch README.txt
echo "Creating Environment..."
sleep 5s
python3 -m venv $1
echo "Sucess..."
sleep 5s
source $1/bin/activate
echo "$1 environment has been activated."
say "$1 environment has been activated."
sleep 5s
echo "Initiating git... One monment please."
say "Initiating git... One monment please."
git init
sleep 5s
