#!/bin/bash

# required variable
# $plugin-slug = <the slug from the wp.org repo>
# $plugin-svn = <repo url>

# create folder + change to it
mkdir /home/git/wp-repository/$plugin-slug
cd /home/git/wp-repository/$plugin-slug

# import svn commits and remap to users from authors.txt
# Attention!! authors.txt MUST be complete
# where should the authors.txt come from?
svn2git $plugin-svn --authors ~/authors-$plugin-svn.txt

# add remote target
git remote add github git@wp-repository:wp-repository/$plugin-slug.git

# initial push to the GitHub repo
git push --all --force --repo=github
git push --tags --force --repo=github