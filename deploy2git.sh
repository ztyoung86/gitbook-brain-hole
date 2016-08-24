#!/bin/bash

gitbook build

git init .deploy_git
cp -r _book/* .deploy_git/

cd .deploy_git
git add -A
git commit -m "update book"
git push -u https://github.com/ztyoung86/gitbook-brain-hole.git HEAD:gh-pages --force
cd ..
