#!/bin/bash

# Adds WordPress zipped up:
wget http://wordpress.org/latest.tar.gz

# Unzip WordPress:
tar xfz latest.tar.gz

# Move the contents of WordPress folder
mv wordpress/* ~/Sites/wp

# Remove the wordpress directory:
rmdir wordpress

# Remove the zip file:
rm -f latest.tar.gz