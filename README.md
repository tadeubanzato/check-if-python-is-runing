# Description
This is a general batch to check if a python script is running and or not.
The script is going to:
1. Verify if PID is available on the temp folder (linux)
2. If PID exists the python script is runing if not it will trigger the script
3. CRON Job that will run every couple of hours and check if script is running
4. Script will run in a Screen on the background

## Use Case
As a developer I want to make sure my Python script is running recurrently and/or if it breacks some how I want to start it automatically without me having to run it manually once again.

## Screen Instalation
Screen is an application to allow users to have multiple terminals runing on linux servers.
To install Screen user the following command
```bash
sudo apt install screen
```

## Commented Script
```bash
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
```

> Make sure you make this file executable by runing `chmod u+x general-bash.sh`

## Setup Python Script
The python scrip setup is presented bellow

`````python
# Create PID number for verification
pid = str(os.getpid())
# Direction to where PID will be saved
pidfile = "/tmp/file_name.pid"

# If PID already close it
if os.path.isfile(pidfile):
	print ("%s already exists, exiting" % pidfile)
	sys.exit()
# Or else just open a new PID
f = open(pidfile, "w")
f.write(pid)

## Script will start here
try:
	print('Helo World!')

finally:
	# Close PID once script is executed
	os.unlink(pidfile)
`````

## Cron Job
To edit crontab `contab -e`

This cronjob will run the script every 2 hours
```bash
0 */2 * * * sh bash-name.sh
```
