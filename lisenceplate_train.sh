#!/bin/bash -e

cd /home/deen/github/lisenceplate

# Warning: this file is automatically created/updated by DarkMark v1.10.18-1!
# Created on Tue 2025-02-04 00:22:36 WIB by deen@SBS.

rm -f output.log
#rm -f chart.png

echo "creating new log file" > output.log
date >> output.log

ts1=$(date)
ts2=$(date +%s)
echo "initial ts1: ${ts1}" >> output.log
echo "initial ts2: ${ts2}" >> output.log
echo "cmd: /usr/bin/darknet detector -map -dont_show train /home/deen/github/lisenceplate/lisenceplate.data /home/deen/github/lisenceplate/lisenceplate.cfg" >> output.log

/usr/bin/time --verbose /usr/bin/darknet detector -map -dont_show train /home/deen/github/lisenceplate/lisenceplate.data /home/deen/github/lisenceplate/lisenceplate.cfg 2>&1 | tee --append output.log

ts3=$(date)
ts4=$(date +%s)
echo "ts1: ${ts1}" >> output.log
echo "ts2: ${ts2}" >> output.log
echo "ts3: ${ts3}" >> output.log
echo "ts4: ${ts4}" >> output.log

