#!/bin/sh

echo -ne "25 minutes left\\r"

for i in $(seq 1 25)
do
  sleep 60
  let rem=25-i
  echo -ne "${rem} minutes left\\r"
done

notify-send "POMO" "25 MINS WASTED"
