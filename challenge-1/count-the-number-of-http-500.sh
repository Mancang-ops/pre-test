#!/bin/bash

for logfile in ~/latihan/pre-test/challenge-1/*-access.log; do
    count=$(awk -v d1="$(date --date '-10 min' '+%d/%b/%Y:%T')" '{gsub(/^[\[\t]+/, "", $4);} $4 > d1' "$logfile" | grep 'HTTP/1.1" 500' | wc -l)   
    echo "There were $count HTTP 500 errors in $logfile in the last 10 minutes."
done