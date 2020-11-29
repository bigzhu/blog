#! /bin/bash
cd /Users/bigzhu/blog
rm -rf ./public
hugo;
rsync --delete -rvzt  -e "ssh" ./public/* bigzhu@bigzhu.net:/home/bigzhu/hugo_blog/public --delete-after
