#!/bin/bash

echo "Enter message: "
read msg

echo "Enter duration in hours(h)/minutes(m)/seconds(s) {as 1 m/1 h/40 s}: "
read period unit
if [ $unit ==  h ]; then 
	period_sec=$((period*60*60))
elif [ $unit ==   m ]; then
	period_sec=$((period*60))
elif [ $unit ==  s ]; then
	period_sec=$period
fi

echo $period_sec

{
sleep "$period_sec" 
notify-send "Reminder" "$msg" 
} &
