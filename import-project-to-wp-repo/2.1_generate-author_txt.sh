#!/bin/bash

# required variable
# $pluginsvn = <repo url>

# generate a list of all contributors of a svn repo - see svn2git/readme.md
svn log --quiet $pluginsvn | grep -E "r[0-9]+ \| .+ \|" | awk '{print $3}' | sort | uniq