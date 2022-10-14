#!/bin/sh
## bash.sh

## Bash with linux command to update and upgrade linux system
## Linux Update and Upgrade weekly every Sunday
## Contab setup:
## 0 0 * * 0 cronitor exec nyeGXw sh /home/tbanzato/APK_version_check/apk_check_bash.sh

echo "kongo78" | sudo -S apt update && sudo apt upgrade -y
