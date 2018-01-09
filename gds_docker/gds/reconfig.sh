#!/bin/sh
dir=`dirname $0`
app=`ls -F "$dir"|grep -v "\."|grep "\*$"|sed "s/\*$//g"|sed "s/.*\///g"`

echo "Reconfig $app"
pidof "$app"
pidof "$app"|awk '{printf("kill -12 %s", $1)}'|bash
sleep 1
echo "After Reconfig"
tail -n 100 "$dir/log/daemon.log"
