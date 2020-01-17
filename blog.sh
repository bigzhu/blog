#! /bin/bash
SYNC_TO="bigzhu@my.vps:/home/bigzhu/hugo_blog/public"
rm -rf ./public/*
DIR="$(dirname "$(readlink -f "$0")")"
echo $DIR
cd $DIR
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* $SYNC_TO --delete-after
