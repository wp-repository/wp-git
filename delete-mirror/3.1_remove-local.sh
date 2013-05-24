#!/bin/bash

# required variable
# $plugin-slug = <the slug from the wp.org repo>

# change to wp-mirrors and remove folder of local repo
cd /home/git/wp-mirrors
rm -rf $plugin-slug