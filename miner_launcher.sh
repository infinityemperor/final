#!/bin/bash
    DEFAULT_DELAY=0
    if [ "x$1" = "x" -o "x$1" = "xnone" ]; then
       DELAY=$DEFAULT_DELAY
    else
       DELAY=$1
    fi
    sleep $DELAY
    cd /usr/local/claymore
    su emperor -c "screen -dmS ethm ./start.bash"
    su emperor -c "screen -dmS ethm ./start1.bash"
