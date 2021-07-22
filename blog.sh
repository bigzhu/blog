#! /bin/bash
SYNC_TO="bigzhu@198.44.14.30:/home/bigzhu/hugo_blog/public"
cd /Users/bigzhu/Projects/blog
rm -rf ./public/*
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* $SYNC_TO --delete-after
