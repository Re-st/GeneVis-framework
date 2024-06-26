#!/bin/bash

program="xmllint"
echo "Seed info for ${program}" > seed_log.txt
ls queue | while IFS= read -r seed; do
	echo ${seed}
    DIFF_TIME=$(echo `stat -c%Y queue/${seed}` | bc)
    echo -e "\nSeed - ${seed} (found at ${DIFF_TIME} sec.):" >> seed_log.txt
done

echo "Crash info for ${program}" > crash_log.txt
ls crashes | while IFS= read -r crash; do
	echo ${crash}
    DIFF_TIME=$(echo `stat -c%Y queue/${crash}` | bc)
    echo -e "\nCrash - ${crash} (found at ${DIFF_TIME} sec.):" >> crash_log.txt
done
