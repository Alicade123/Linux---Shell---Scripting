#!/bin/bash

# Variable holding my name
my_name="alicade"

# Find highest existing file number
last_number=$(ls ${my_name}* 2>/dev/null | \
              grep -o '[0-9]*$' | \
              sort -n | tail -1)

# If no files exist, start at 0
if [ -z "$last_number" ]; then
    last_number=0
fi

# Generate next 25 files
start=$((last_number + 1))
end=$((last_number + 25))

for ((i=start; i<=end; i++))
do
    touch "${my_name}${i}"
done

echo "Created files from ${my_name}${start} to ${my_name}${end}"

# Display long directory listing
ls -l
