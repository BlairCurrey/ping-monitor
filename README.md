Simple networkin monitoring utility. I wrote this to help monitor network drops while troubleshooting a flakey connection. `ping-monitor.sh` sends a single packet to google every 30 seconds by default and logs to terminal and file.

Run the bash script:

`./ping-monitor.sh`

Either check the log file, logs, or open the index.html with a live server (required because of fetch) to view the activity.

Edit the script to change the ping target, interval, and log file location.
