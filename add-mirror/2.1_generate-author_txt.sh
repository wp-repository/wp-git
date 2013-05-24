#!/bin/bash

# required variable
# $pluginslug = <the slug from the wp.org repo>

# generate a list of all contributors of a svn repo - see svn2git/readme.md
svn log --quiet http://plugins.svn.wordpress.org/$pluginslug/ | grep -E "r[0-9]+ \| .+ \|" | awk '{print $3}' | sort | uniq