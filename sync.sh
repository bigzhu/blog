#! /bin/bash
rm -rf ./public/*
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* bigzhu@123.176.102.187:/home/bigzhu/hugo_blog/public --delete-after
