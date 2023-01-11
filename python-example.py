#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# python-example.py

from datetime import datetime

# Create PID number for verification
pid = str(os.getpid())
# Direction to where PID will be saved
pidfile = "/tmp/file_name.pid"

# If PID already close it
if os.path.isfile(pidfile):
    print (f'{pidfile} already exists')
	sys.exit()

# Or else just open a new PID
f = open(pidfile, 'w')
f.write(pid)

# -------------------- Script will start here -------------------- #
try:
    today = date.today()
	print(f'Helo World! - Today is {today}')

finally:
	# Close PID once script is executed
	os.unlink(pidfile)
