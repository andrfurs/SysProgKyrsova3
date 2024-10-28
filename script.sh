#!/bin/bash
file="$1" #file to write
for i in {1..5}; do
	echo $((RANDOM % 100 + 1)) >> "$file" #write numbers to file
done
cat "$file" #view file content
smallest=$(sort -n "$file" | head -n 1) #find smallest
echo "$smallest" > "$file" #write smallest to file
cat "$file" #view file content
