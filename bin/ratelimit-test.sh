#!/bin/bash
# This script will blast a bunch of events at
# the local syslog daemon using a specific
# programname, to be caught by our filter.
PROGNAME=ratelimit
MSGBURST=100000
COUNTER=0
while [ $COUNTER -lt $MSGBURST ]; do
    logger -t $PROGNAME " Test message $COUNTER "
    echo "Sending message $COUNTER to syslog daemon... "
    let COUNTER=$COUNTER+1
done
