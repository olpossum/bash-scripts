#!/bin/bash
prefix='./'
suffix='.heic'
slash='/'

inpath="${1%$slash}/"

for file in ${inpath}*
do
    ((i=i%${2})); ((i++==0)) && wait
    fileout=${file#$prefix}
    fileout=${fileout%$suffix}
    fileout="${fileout}.jpg"
    #echo "Converting ${file} to ${fileout}"
    `tifig $file $fileout -q=100` &
done
wait

`mkdir ${inpath}./JPEG`
`mv ${inpath}*.jpg ${inpath}./JPEG`
