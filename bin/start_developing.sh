#!/bin/bash

docker ps | \
 grep "redis" | \
 cut -d' ' -f1 | \
 while read containerId; do
   echo "Stopping container $containerId"
   docker rm -f $containerId
done

docker run --rm --name redis -d -p 6379:6379 redis
