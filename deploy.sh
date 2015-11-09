#!/bin/bash
# REF: http://support.ghost.org/how-to-upgrade/

# fetch new change from git repository
git pull

# change to current ghost install
cd /var/www/ghost

# remove the core folder of the ghost install
rm -rf core

# change back to git folder
cd /var/www/ghost_git/Ghost

# copy the new core directory to install folder
cp -R core /var/www/ghost

# copy en-US theme folder
cp -R content/themes/casper /var/www/ghost/content/themes

# copy zh-CN theme folder
cp -R content/themes/casper-3fen-zh /var/www/ghost/content/themes
# copy other key files or config files
cp index.js *.json /var/www/ghost

# cd back to ghost installation directory
cd /var/www/ghost

# change user permissions
chown -R ghost:ghost *

# upgarde dependencies
npm install --production

# lastly restart ghost
service ghost restart
