#!/bin/sh
dir=`dirname $0`
app='gdsd'
target='/data/release/gds/'
"$target/stop.sh"
sleep 1
cp -f "$dir/$app" "$target/"
"$target/start.sh"
