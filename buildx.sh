#!/bin/bash
for i in $(ls containers/)
do
    cd $i
    docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t jrcichra/smartcar_$i --push .
    docker buildx imagetools inspect jrcichra/smartcar_$i
    cd ..
done