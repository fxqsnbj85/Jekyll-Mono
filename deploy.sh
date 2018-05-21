#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

#git config 'lfs.https://github.com/fxqsnbj85/fxqsnbj85.github.io.git/info/lfs.locksverify' false

# git pull first
#git pull origin master
#ssh-add ~/.ssh/id_rsa
#git remote set-url origin git@github.com:fxqsnbj85/fxqsnbj85.github.io.git

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
