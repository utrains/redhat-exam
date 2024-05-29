#!/bin/bash

# Prompt the user to enter the name of the process to kill
read -p "Enter the name of the process to kill: " process_name

# Kill all processes with the specified name
if pkill "$process_name"; then
    echo "All processes named '$process_name' have been killed."
else
    echo "Failed to kill processes named '$process_name'. Please check the process name and try again."
fi