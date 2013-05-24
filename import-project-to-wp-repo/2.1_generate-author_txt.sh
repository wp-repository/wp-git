#!/bin/bash

# required variable
# $plugin-svn = <repo url>

# generate a list of all contributors of a svn repo - see svn2git/readme.md
svn log --quiet $plugin-svn | grep -E "r[0-9]+ \| .+ \|" | awk '{print $3}' | sort | uniq