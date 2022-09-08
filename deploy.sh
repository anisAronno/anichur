#!/usr/bin/env sh
# abort on errors
set -e
# build
yarn build
# navigate into the build output directory
cd . 

git add -A
git commit -m 'deploy' 
git subtree push --prefix dist origin gh-pages

cd -