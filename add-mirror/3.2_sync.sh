#!/bin/bash

# required variable
# $pluginslug = <the slug from the wp.org repo>

# pull new changes from svn source
cd /home/git/wp-mirrors/$pluginslug && svn2git --rebase