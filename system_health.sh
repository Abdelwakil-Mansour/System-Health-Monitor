#!/bin/bash
echo "System Health Summary:"
echo "------------------------"
echo "CPU Load : $(uptime | awk -F'load average:' '{ print $2 }')" #Get the CPU Usaged
echo "Memory   : $(free -h | awk '/Mem:/ {print $3 "/" $2}')"# Get the Memory Utilization
echo "Disk     : $(df -h / | awk 'NR==2 {print $3 "/" $2}')" # Get the Disk Utilization
echo "Uptime   : $(uptime -p)"
