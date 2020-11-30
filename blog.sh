#! /bin/bash
SYNC_TO="bigzhu@bigzhu.net:/home/bigzhu/hugo_blog/public"
cd /Users/bigzhu/blog
rm -rf ./public/*
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* $SYNC_TO --delete-after
