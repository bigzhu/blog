#! /bin/bash
while inotifywait -e modify ./content; do
 hugo;
 ./sync.sh
done;
