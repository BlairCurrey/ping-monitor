#!/bin/bash

# Pings google every 30 seconds and logs the result to a file

target="8.8.8.8" # Google
interval=30
log_file="ping_log.txt"

while true; do
    # ping w/ a single packet and supress output
    ping -c 1 $target > /dev/null
    
    # Check the exit status of the ping command
    if [ $? -eq 0 ]; then
        status="success"
    else
        status="failed"
    fi
    
    # Print and log the result
    current_datetime=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$current_datetime - Ping to $target $status." | tee -a $log_file
    
    sleep $interval
done
