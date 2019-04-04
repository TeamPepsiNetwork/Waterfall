#!/bin/bash

while true
do
    if git pull | grep -q 'Already up-to-date.'; then
        echo "Nothing changed, starting..."
    else
        echo "Changes detected, recompiling!"
        ./waterfall b
    fi
    java -Xmx512M -XX:+UseG1GC -jar Waterfall-Proxy/proxy/target/waterfall-proxy-1.13-SNAPSHOT.jar
    echo "Press Ctrl+C to stop"
    sleep 3
done
