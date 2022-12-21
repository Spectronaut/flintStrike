#!/bin/bash
echo "Comment please:    "
read comment
git add .
git commit -m "$comment"
git push -u origin main