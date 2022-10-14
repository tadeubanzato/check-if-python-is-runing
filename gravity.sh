#!/bin/sh
## bash.sh

## Bash with linux command to update and upgrade linux system
## Linux Update Pihole Weekly on Sundays
## Contab setup:
## 0 0 * * 1 cronitor exec QPYCBD sh /home/tbanzato/APK_version_check/apk_check_bash.sh

echo "kongo78" | sudo -S pihole -up && pihole updateGravity -y
