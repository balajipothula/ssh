#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 19 March 2019,
# Description : Git help.

# Adding RSA or DSA identities to the authentication agent.
ssh-add /home/balaji/git/git.pem

# Installing Git.
sudo apt -y install git

# Getting Git version.
git --version

# Creating webapp.git directory.
mkdir webapp.git

# Initializing bare (central) repo
git init --bare webapp.git

# Creating local.git directory.
mkdir balaji-webapp.git

# Initializing client / local git repo.
git init balaji-webapp.git

# Git configuration list.
git config -l

# Configuring local git repo username and email
git config --global user.name  "BALAJI POTHULA"
git config --global user.email "balan.pothula@gmail.com"

# Only current branch is pushed 
git config --global push.default simple

# Avoid merge commits for pulling.
git config --global branch.autosetuprebase always

# Color highlighting.
git config --global color.ui true
git config --global color.status auto
git config --global color.branch auto
# Setting default editor.
git config --global core.editor vi
# Setting default merge tool.
git config --global merge.tool vidiff

# Setting proxy for git globally.
git config --global http.proxy http://proxyurl:8080

# Editing git global configuration.
git config --global --edit

# Creating README file
echo 'TODO: Please read README' > README.md

# Getting status of README file.
git status -s

# Adding README file to local git repo.
git add .

# Getting status of file(s).
git status -s

# Commiting changes.  
git commit -m "Commited by BALAJI POTHULA :)"
git commit --amend -m "Re-commited by BALAJI POTHULA :)"

# Adding git server / bare repo.
git remote add webapp ubuntu@52.66.213.222:webapp.git
git remote add results https://github.com/balajipothula/results.git

git config --global remote.origin.receivepack "git receive-pack"

# Renaming remote repositories.
git remote rename webapp.git webapprepo.git

# Adding RSA or DSA identities to the authentication agent.
ssh-add /home/balaji/git/git.pem

# Pushing from local to git repo using keys.
git push webapp master

# Pushing from local to git repo using credentials.
git push -u results master

# Cloing from git server to local.
git clone ubuntu@52.66.213.222:webapp.git

# Cloing from git server to local.
git clone ssh://ubuntu@52.66.213.222:/home/ubuntu/webapp.git


# Pulling from git repo to local.
git pull webapp.git master

# Reverting uncommitted changes.
git checkout main.c

# Creating Tags.
git tag -a "v1.8.3" -m "Commited v1.8.3 by BALAJI POTHULA :)" HEAD

# Pushing into repo with tag.
git push webapp.git tag v1.8.3

# Creating new bare repository by cloning another bare.
git clone --bare . ../webapp.git

# Listing available branches.
git branch

# Listing all branches including remote branches.
git branch -a

# Listing branches in the remote repositories.
git branch -r


# Creating new branch.
git branch v1.8.3

# Switching to new branch.
git checkout v1.8.3

# Creating new branch and switching to new branch.
git checkout -b v1.8.5

# Creating new branch based on master branch,
# without the last commit.
git checkout -b v1.8.9 master~1

# Renaming branch.
git branch -m v1.8.3 v1.8.3_u17

# Commiting into new branch.
git commit -a -m "Commited v1.8.3 by BALAJI POTHULA :)"

# Switching to master branch.
git checkout master

# Deleting branch.
git branch -d v1.8.3
# Force delete branch.
git branch -D testing
# Checking branch has been deleted or not.
git branch

# git squash last 5 commits into a single commit.
# 5 commits must be there.
git reset --soft HEAD~5 && git commit














