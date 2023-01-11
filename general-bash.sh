#!/bin/sh
## general-bash.sh
## OBS: Make sure to > chmod u+x general-bash.sh

## Variable holding PID file direction
CHECK=/tmp/file_name.pid

## Check if PID exists or not
if [ -f "$CHECK" ]; then
    echo "$CHECK already exist."
else
    echo "$CHECK does not exist."
    ## Bash change directory to where the python script is hosted
    cd /home/python
    ## Run the screen command and start python script from the directory
    screen -dm -S SCREEN-NAME python3 python_script.py
fi
