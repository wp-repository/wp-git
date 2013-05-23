#!/bin/bash

# required variable
# $plugin-slug = <the slug from the wp.org repo>

# generate a list of all contributors of a svn repo - see svn2git/readme.md
svn log --quiet http://plugins.svn.wordpress.org/$plugin-slug/ | grep -E "r[0-9]+ \| .+ \|" | awk '{print $3}' | sort | uniq