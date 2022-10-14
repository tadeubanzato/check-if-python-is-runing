#!/bin/sh
## bash.sh

## Bash with linux command to update and upgrade linux system
## Linux Update Pihole Weekly on Sundays
## Contab setup:
## 0 0 * * 1 cronitor exec QPYCBD sh /home/tbanzato/general-bash/gravity.sh

echo "kongo78" | sudo -S pihole -up && pihole updateGravity -y
