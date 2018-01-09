dir=`dirname $0`
path="$dir/log/"
log_delete_days=7
log_compress_days=1
log_compress_match="data.log.*"
files=`ls $path*.log.*`
i=0
while [ $i -le $log_delete_days ]
do
	d=`date +%Y%m%d --date "$i day ago"`
	files=`echo "$files"|grep -v $d`
	i=`expr $i + 1`
done
echo "$files"|xargs rm -f
if [ -n "$log_compress_match" ]
then
	files=`ls $path/$log_compress_match|grep -v "\.gz$"`
	i=0
	while [ $i -lt $log_compress_days ]
	do
		d=`date +%Y%m%d --date "$i day ago"`
		files=`echo "$files"|grep -v $d`
		i=`expr $i + 1`
	done
	echo "$files"|xargs gzip
fi
