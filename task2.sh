#!/bin/bash
cd dataset1/
printf "%s\n" $(grep -rl "sample" file* | xargs grep -c "CSC510" | grep -E ":[3-9][0-9]*$" |\
sort -t: -k2,2nr | cut -d: -f1 | uniq | xargs ls -l |\
sed 's/file_/filtered_/' | gawk '{ print $9}')