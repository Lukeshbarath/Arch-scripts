#!/bin/bash
message="$1"
time="$2"

sleep "$time"

notify-send "Reminder" "$message"

