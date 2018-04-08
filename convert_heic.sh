#!/bin/bash
prefix='./'
suffix='.heic'
slash='/'

echo "Please enter the directory with files that you want to convert: "
read inpath
inpath="${inpath%$slash}/"

for file in ${inpath}*
do
    fileout=${file#$prefix}
    fileout=${fileout%$suffix}
    fileout="${fileout}.jpg"
    echo "Converting ${file} to ${fileout}"
    `tifig $file $fileout -q=100`
done

`mkdir ${inpath}./JPEG`
`mv ${inpath}*.jpg ${inpath}./JPEG`
