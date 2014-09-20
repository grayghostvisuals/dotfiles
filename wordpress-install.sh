#!/bin/bash

wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
mkdir ~/Sites/wordpress
mv wordpress/* ~/Sites/wordpress
rmdir wordpress
rm -f latest.tar.gz