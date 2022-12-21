#!/bin/bash

cd ~
pathToScript="$HOME/flintStrike/create.py"
pathToAutomationScript="$HOME/flintStrike/gitAutomation.py"
output=$(python3 $pathToScript $1)
echo "The output of this sript is $output"
cd $output
touch README.txt
touch main.py
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
echo "Initiating git..."
say "Initiating git..."
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
echo "Initiating GitHub Reepo..."
say "Initiating GitHub Reepo..."
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
sleep 3s
code .
echo "Complete. Opening editor... Stay tight dog... ciao."
say "Complete. Opening editor... Stay tight dog... ciao."