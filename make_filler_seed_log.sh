#!/bin/bash

program="xmllint"
echo "Seed info for ${program}" > seed_log.txt
ls queue | while IFS= read -r seed; do
	echo ${seed}
    DIFF_TIME=$(echo `stat -c%Y queue/${seed}` | bc)
    echo -e "\nSeed - ${seed} (found at ${DIFF_TIME} sec.):" >> seed_log.txt
done

