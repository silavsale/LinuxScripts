#!/bin/bash

# Define log file location
LOG_FILE="$HOME/system_monitor.log"

# Check and create log file if it does not exist
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

# Function to log current CPU, memory and disk usage
log_system_stats() {
    echo "===== $(date) =====" >> "$LOG_FILE"
    echo "CPU and Memory:" >> "$LOG_FILE"
    top -bn1 | head -5 >> "$LOG_FILE"
    echo "Disk Usage:" >> "$LOG_FILE"
    df -h >> "$LOG_FILE"
    echo "Memory Usage:" >> "$LOG_FILE"
    free -m >> "$LOG_FILE"
    echo " " >> "$LOG_FILE"
}

# Call the function
log_system_stats
