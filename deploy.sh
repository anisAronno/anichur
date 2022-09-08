#!/usr/bin/env sh
# abort on errors
set -e
# build
yarn build
# navigate into the build output directory
cd .
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
# git init
git add -A
git commit -m 'deploy'
git push origin master
git subtree push --prefix dist origin gh-pages
cd -