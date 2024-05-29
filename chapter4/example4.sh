#!/bin/bash

# List of processes to monitor
PROCESSES=("sshd" "cron" "nginx")

# Monitor each process
for process in "${PROCESSES[@]}"; do
    if pgrep "$process" > /dev/null; then
        echo "$process is running."
    else
        echo "$process is not running."
    fi
done
