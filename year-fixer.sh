#!/bin/bash
beet ls -f '$id:$original_year:$year' original_year::'^[0000]$'
cat /tmp/weirdyear.txt | while read line; do
id=$(echo "$line" | cut -d ':' -f1,3)
beet mod id:"$id" original_year="$year"
done