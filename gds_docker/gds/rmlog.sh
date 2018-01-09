#!/bin/sh
dir=`dirname $0`
path="$dir/log/"
files=`ls $path*.log.*`
i=0
while [ $i -le 7 ]
do
	d=`date +%Y%m%d --date "$i day ago"`
	files=`echo "$files"|grep -v $d`
	i=`expr $i + 1`
done
echo "$files" | xargs rm -f
