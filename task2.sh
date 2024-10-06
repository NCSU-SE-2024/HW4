cd dataset1/
echo $(grep -rl "sample" file* | xargs grep -c "CSC510" | grep -E ":[3-9][0-9]*$" | cut -d: -f1 | uniq)