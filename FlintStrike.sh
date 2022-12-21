#!/bin/bash

cd ~
pathToScript="$HOME/flintStrike/create.py"
pathToAutomationScript="$HOME//flintStrike/gitAutomation.py"
output=$(python3 $pathToScript $1)
echo "The output of this sript is $output"
cd $output
touch README.txt
echo "Creating Environment..."
say "Creating Environment..."
sleep 5s
python3 -m venv $1
echo "Sucess..."
sleep 5s
source $1/bin/activate
echo "$1 environment has been activated."
say "$1 environment has been activated."
sleep 3s
echo "Initiating git... One monment please."
say "Initiating git... One monment please."
git init
sleep 3s
echo "Installing dependencies..."
say "Installing dependencies..."
echo "$1/" >.gitignore
pip3 install --upgrade pip
echo "upgrade pip..."
say "upgrade pip..."
sleep 3s
pip3 install selenium
echo "Initiating GitHub Repo..."
say "Initiating GitHub Repo..."
sleep 3s
python3 $pathToAutomationScript $2 $3 $1
git remote add origin https://github.com/Spectronaut/$1.git
sleep 3s
git add .
sleep 3s
git commit -m "Initial Commit"
echo "Initial Commit Complete"
say "Initial Commit Complete"
sleep 3s
git push -u origin main
echo "Complete."
say "Complete."