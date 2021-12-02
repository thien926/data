#!/bin/bash

echo "Hello $USER"
echo -n "Today is "
date "+%A%d %B%Y"
echo -n "There is/are "
who | wc -l
echo connection on $HOSTNAME
exit 0


