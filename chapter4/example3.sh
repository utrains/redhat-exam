#!/bin/bash

# Log file to store the output
LOG_FILE="process.log"
COUNT_TO=10
# Function for background process
background_process() {
    for ((i=1; i<=COUNT_TO; i++)); do
        echo "Process $$: $i" >> "$LOG_FILE"
        sleep 1
    done
}
# Create background process and log its output to a file
background_process &

# Wait for the background process to complete
wait
echo "Background process has completed. Check $LOG_FILE for output."