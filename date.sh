#!/usr/bin
date1=0
read f
date1=$(($f * 86400))
echo $date1
moddate=$( date -d @$date1)
echo $moddate
