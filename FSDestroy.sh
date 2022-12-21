#!/bin/bash
echo "You sure? What is the Repo Name?"
read answer
sleep 3s
cd ~/ProjectsRepoTest/
sleep 3s
rm -r $answer
echo "DELETED, ALL HISTORY IN GITHUB REPO IS STILL ACTIVE. DELETE GITHUB REPO MANUALLY."