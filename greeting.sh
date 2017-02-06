#!/bin/bash

PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
#directory of emoji
dir="/usr/share/icons/gnome/32x32/emotes"
cd $dir
#choosing random emoji
emoji=$(ls | shuf -n1 | cut -d '.' -f 1)
#quote file containing quotes, replace path with your own
quoteFile="/home/varun/Desktop/scripts/quote.txt"
#adding all quotes to quoteArray
#http://stackoverflow.com/questions/10929453/read-a-file-line-by-line-assigning-the-value-to-a-variable
i=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    quoteArray[$i]=$line
    let i=i+1
done < $quoteFile
#size of array
let n=i
let i=$RANDOM%$n
#echo "$i $n"
/usr/bin/notify-send -i $emoji "${quoteArray[$i]}"

#Note that running 'sh greeting.sh' won't work
#because /bin/sh on Ubuntu is dash, not bash.
#so run it using 'bash greeting.sh' or ./greeting.sh