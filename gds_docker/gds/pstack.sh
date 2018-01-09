#!/bin/sh
dir=`dirname $0`
if [ -z "$1" ] || [ -z "$2" ]
then
	echo "Usage: pstack.sh NAME PID"
	exit
fi
name="$1"
pid="$2"
gdb "--pid=$pid" "--command=$dir/pstack.cmd" "$dir/$name" | cat

