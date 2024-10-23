#!/bin/bash
cd dataset1/
printf "%s\n" $(grep -rl "sample" file* | \
 xargs -I {} sh -c 'count=$(grep -c "CSC510" "{}"); size=$(stat -c%s "{}"); if [ "$count" -ge 3 ]; then echo "{} $count $size"; fi' | \
 sort -k2,2nr -k3,3nr | \
 gawk '{gsub(/file_/, "filtered_", $1); print $1}')
