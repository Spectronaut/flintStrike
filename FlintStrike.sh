#!/bin/bash

cd ~
echo "Welcome."
say "Welcome."
echo "Repo Name"
read repoName
echo "GitHub UserName"
read gitUserName
echo "Password"
read -s gitPassword
pathToScript="$HOME/flintStrike/create.py"
pathToAutomationScript="$HOME/flintStrike/gitAutomation.py"
output=$(python3 $pathToScript $repoName)
echo "The output of this sript is $output"
cd $output
touch README.txt
touch main.py
echo "Creating Environment..."
say "Creating Environment..."
sleep 5s
python3 -m venv $repoName
echo "Sucess..."
sleep 5s
source $repoName/bin/activate
echo "$repoName environment has been activated."
say "$repoName environment has been activated."
sleep 3s
echo "Initiating git..."
say "Initiating git..."
git init
sleep 3s
echo "Installing dependencies..."
say "Installing dependencies..."
echo "$repoName/" >.gitignore
pip3 install --upgrade pip
echo "upgrade pip..."
say "upgrade pip..."
sleep 3s
pip3 install selenium
echo "Initiating GitHub Reepo..."
say "Initiating GitHub Reepo..."
sleep 3s
python3 $pathToAutomationScript $gitUserName $gitPassword $repoName
git remote add origin https://github.com/Spectronaut/$repoName.git
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