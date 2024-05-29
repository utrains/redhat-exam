#!/bin/bash

# Name of the process to check
PROCESS_NAME="sshd"

# Check if the process is running
if pgrep "$PROCESS_NAME" > /dev/null; then
    echo "$PROCESS_NAME is running."
else
    echo "$PROCESS_NAME is not running."
fi