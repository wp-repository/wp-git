#!/bin/bash

# required variable
# $pluginslug = <the slug from the wp.org repo>
# $pluginsvn = <repo url>

# create folder + change to it
mkdir /home/git/wp-mirrors/$pluginslug
cd /home/git/wp-mirrors/$pluginslug

# import svn commits and remap to users from authors.txt
# Attention!! authors.txt MUST be complete
# where should the authors.txt come from?
svn2git $pluginsvn --authors ~/authors-$pluginslug.txt

# add remote target
git remote add github git@wp-mirrors:wp-mirrors/$pluginslug.git

# initial push to the GitHub repo
git push --all --force --repo=github
git push --tags --force --repo=github