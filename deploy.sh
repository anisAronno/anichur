#!/usr/bin/env sh
# abort on errors
set -e 
# navigate into the build output directory
cd .

git add -A
git commit -m 'deploy'
git checkout master
git push origin master 
cd -