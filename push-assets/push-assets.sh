#!/bin/bash

# required variable
# $pluginsvn = <repo url>
# $pluginslug = <the slug from the git(hub) repo>

# get the current assets from github
git pull github/assets --force

# push the current assets to the svn
# https://www.kernel.org/pub/software/scm/git/docs/git-svn.html
# todo auth for svn server
git svn dcommit --commit-url $pluginsvn 