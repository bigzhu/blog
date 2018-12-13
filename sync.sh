#! /bin/bash
rsync -rvzt  -e "ssh" ./public bigzhu@123.176.102.187:/home/bigzhu/hugo_blog/public --delete-after
