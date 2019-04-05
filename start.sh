#!/bin/bash

while true
do
    if git pull | grep -q "Already up-to-date.\|Already up to date."; then
        echo "Nothing changed, starting..."
    else
        echo "Changes detected, recompiling!"
        ./waterfall b
    fi
    mkdir run
    cd run
    java -Xmx512M -XX:+UseG1GC -jar ../Waterfall-Proxy/bootstrap/target/Waterfall.jar
    cd ..
    echo "Press Ctrl+C to stop"
    sleep 3
done
