#!/bin/bash
# Extract, replace, and calculate average age

gawk -F',' 'NR > 1 {
    if ($3==2 && substr($13, 1, 1) == "S") {
        print $0
    }
}' titanic.csv | \
sed 's/,male/,M/g; s/,female/,F/g' | \
gawk -F',' '$7 != "" { total += $7; count++ } END { print total/count; }'
