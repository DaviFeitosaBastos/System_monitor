#!/bin/bash


while true; do
    clear
    echo "SYSTEM MONITOR" 

    # Show the uptime from the system
    echo "Uptime: $(uptime -p)"

    # Show the RAM usage as such used and free
    echo "RAM: $(free -h | awk '/Mem:/ {print "Used " $3 " / Free " $4}')"

    # Show the CPU usage but just the usage in %
    echo "CPU: $(top -bn1 | grep 'Cpu' | awk '{gsub(",", "", $8); print 100 - $8}')%"
    sleep 1
done