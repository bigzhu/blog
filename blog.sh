#! /bin/bash
rm -rf ./public/*
DIR="$(dirname "$(readlink -f "$0")")"
echo $DIR
cd $DIR
#cd /Users/bigzhu/Project/sites/blog
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* bigzhu@my.vps:/home/bigzhu/hugo_blog/public --delete-after
