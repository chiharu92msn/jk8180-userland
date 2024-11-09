#!/bin/sh

site='www.google.com'
until $(ping -q -c1 ${site} > /dev/null 2>&1)
do
    echo "${site} is unreachable. Retrying"
sleep  15s
./net1.sh
    # continue
done

echo "online"
sleep 300s
./net.sh
