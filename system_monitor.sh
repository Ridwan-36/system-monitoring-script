#!/bin/bash

# System Monitoring and Alerting Script
# Project: DevOps Institute Mumbai Capstone 1

DISK_THRESHOLD=80
MEMORY_THRESHOLD=80
LOG_FILE="$(dirname "$0")/monitor.log"

# Print timestamped alerts and save them to log
log_alert() {
    local message="$1"
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    echo "[$timestamp] ALERT: $message" | tee -a "$LOG_FILE"
}

echo "========================================"
echo "       SYSTEM MONITORING REPORT"
echo "========================================"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo

# 1. Disk Usage Monitoring
echo "----- DISK USAGE -----"

disk_usage=$(df -P / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')

echo "Root Disk Usage: ${disk_usage}%"

if (( disk_usage >= DISK_THRESHOLD )); then
    log_alert "Disk usage is HIGH: ${disk_usage}%"
else
    echo "Disk Status: Normal"
fi

echo

# 2. Memory Usage Monitoring
echo "----- MEMORY USAGE -----"

memory_usage=$(free | awk '/Mem:/ {
    if ($2 > 0) printf "%.0f", (($2-$7)/$2)*100
}')

echo "Memory Usage: ${memory_usage}%"

if (( memory_usage >= MEMORY_THRESHOLD )); then
    log_alert "Memory usage is HIGH: ${memory_usage}%"
else
    echo "Memory Status: Normal"
fi

echo

# 3. Top 5 CPU Consuming Processes
echo "----- TOP 5 CPU PROCESSES -----"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo

# 4. Top 5 Memory Consuming Processes
echo "----- TOP 5 MEMORY PROCESSES -----"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

echo
echo "========================================"
echo "       MONITORING COMPLETED"
echo "========================================"
