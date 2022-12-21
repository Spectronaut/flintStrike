#!/bin/bash
echo "Installing FlintStrike"
if [ ! -d ~/flintStrike ]; then
  mkdir -p ~/flintStrike;
fi
cp -fr create.py ~/FlintStrike
cp -fr gitAutomation.py ~/FlintStrike
cp -fr FSCommit.sh ~/FlintStrike
cp -fr FSDestroy.sh ~/FlintStrike
cp -fr README.txt ~/FlintStrike
