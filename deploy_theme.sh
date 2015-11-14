#!/bin/bash
# REF: http://support.ghost.org/how-to-upgrade/

# fetch new change from git repository
git pull

# change to git folder
cd /var/www/ghost_git/Ghost

# copy en-US theme folder
cp -R content/themes/casper /var/www/ghost/content/themes

# copy zh-CN theme folder
cp -R content/themes/casper-3fen-zh /var/www/ghost/content/themes

# lastly restart ghost
service ghost restart
