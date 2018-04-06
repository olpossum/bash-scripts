#!/bin/bash
prefix='./'
suffix='.heic'

for file in ./*
do
    fileout=${file#$prefix}
    fileout=${fileout%$suffix}
    fileout="${fileout}.jpg"
    echo "Converting ${file} to ${fileout}"
    `tifig $file $fileout -q=100`
done

`mkdir ./JPEG`
`mv *.jpg ./JPEG`
