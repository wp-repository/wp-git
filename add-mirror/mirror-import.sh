# required variable
# $plugin-slug = <the slug from the wp.org repo>
# $plugin-svn = <repo url>

# create folder + change to it
mkdir /home/git/wp-mirrors/$plugin-slug
cd /home/git/wp-mirrors/$plugin-slug

# import svn commits and remap to users from authors.txt
# Attention!! authors.txt MUST be complete
svn2git $plugin-svn --authors ~/authors.txt

# add remote target
git remote add github git@wp-mirrors:wp-mirrors/$plugin-slug.git

# initial push to the GitHub repo
git push --all --force --repo=github
git push --tags --force --repo=github