#! /bin/bash
rm -rf ./public/*
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* bigzhu@my.vps:/home/bigzhu/hugo_blog/public --delete-after
