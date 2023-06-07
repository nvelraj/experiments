#!/bin/bash

root_dir=$1

for year in $root_dir/*/   # list directories in the form "/tmp/dirname/"
do
    for month in $year*/
    do
        for file in $month*
        do
            # echo "pdftotext -layout $file ${file%.*}.txt"
            pdftotext -layout $file ${file%.*}.txt
        done
    done
done