# System Monitoring and Alerting Script

## Project Overview

This project is developed as part of the DevOps Institute Mumbai
Capstone Project 1.

It is a Linux Bash script that monitors important system resources
and generates alerts when predefined thresholds are exceeded.

## Features

- Monitors root disk usage.
- Monitors system memory usage.
- Displays the top 5 CPU-consuming processes.
- Displays the top 5 memory-consuming processes.
- Generates alerts when resource usage is high.
- Saves timestamped alerts in a log file.
- Uses executable Bash scripting.

## Project Structure

system-monitoring-script/
├── system_monitor.sh
├── monitor.log
└── README.md

## Requirements

- Ubuntu or another Linux distribution.
- Bash shell.
- Git.
- Standard Linux utilities: df, free, awk, ps, date and tee.

## Monitoring Thresholds

| Resource | Threshold |
|----------|-----------|
| Disk Usage | 80% |
| Memory Usage | 80% |

An alert is generated when usage reaches or exceeds the threshold.

## Installation

Clone the repository:

    git clone git@github.com:Ridwan-36/system-monitoring-script.git

Navigate into the project:

    cd system-monitoring-script

Give executable permission:

    chmod +x system_monitor.sh

## Usage

Run the monitoring script:

    ./system_monitor.sh

View the alert log:

    cat monitor.log

Check script syntax:

    bash -n system_monitor.sh

## Sample Output

    SYSTEM MONITORING REPORT

    DISK USAGE
    Root Disk Usage: 90%
    ALERT: Disk usage is HIGH: 90%

    MEMORY USAGE
    Memory Usage: 21%
    Memory Status: Normal

    TOP 5 CPU PROCESSES
    PID COMMAND %CPU

    TOP 5 MEMORY PROCESSES
    PID COMMAND %MEM

    MONITORING COMPLETED

## Alert Logging

Alerts are saved in monitor.log with timestamps.

Example:

    [2026-11-07 16:33:45] ALERT: Disk usage is HIGH: 90%

## Git Version Control

This project uses Git for version control with multiple meaningful commits.

## Learning Outcomes

- Linux system monitoring.
- Bash shell scripting.
- Conditional statements and functions.
- Process monitoring.
- Log file management.
- Git and GitHub workflow.

## Author

Rid36

DevOps Institute Mumbai - Capstone Project 1
EOFcat > README.md <<'EOF'
# System Monitoring and Alerting Script

## Project Overview

This project is developed as part of the DevOps Institute Mumbai
Capstone Project 1.

It is a Linux Bash script that monitors important system resources
and generates alerts when predefined thresholds are exceeded.

## Features

- Monitors root disk usage.
- Monitors system memory usage.
- Displays the top 5 CPU-consuming processes.
- Displays the top 5 memory-consuming processes.
- Generates alerts when resource usage is high.
- Saves timestamped alerts in a log file.
- Uses executable Bash scripting.

## Project Structure

system-monitoring-script/
├── system_monitor.sh
├── monitor.log
└── README.md

## Requirements

- Ubuntu or another Linux distribution.
- Bash shell.
- Git.
- Standard Linux utilities: df, free, awk, ps, date and tee.

## Monitoring Thresholds

| Resource | Threshold |
|----------|-----------|
| Disk Usage | 80% |
| Memory Usage | 80% |

An alert is generated when usage reaches or exceeds the threshold.

## Installation

Clone the repository:

    git clone git@github.com:Ridwan-36/system-monitoring-script.git

Navigate into the project:

    cd system-monitoring-script

Give executable permission:

    chmod +x system_monitor.sh

## Usage

Run the monitoring script:

    ./system_monitor.sh

View the alert log:

    cat monitor.log

Check script syntax:

    bash -n system_monitor.sh

## Sample Output

    SYSTEM MONITORING REPORT

    DISK USAGE
    Root Disk Usage: 90%
    ALERT: Disk usage is HIGH: 90%

    MEMORY USAGE
    Memory Usage: 21%
    Memory Status: Normal

    TOP 5 CPU PROCESSES
    PID COMMAND %CPU

    TOP 5 MEMORY PROCESSES
    PID COMMAND %MEM

    MONITORING COMPLETED

## Alert Logging

Alerts are saved in monitor.log with timestamps.

Example:

    [2026-11-07 16:33:45] ALERT: Disk usage is HIGH: 90%

## Git Version Control

This project uses Git for version control with multiple meaningful commits.

## Learning Outcomes

- Linux system monitoring.
- Bash shell scripting.
- Conditional statements and functions.
- Process monitoring.
- Log file management.
- Git and GitHub workflow.

## Author

Rid36

DevOps Institute Mumbai - Capstone Project 1
