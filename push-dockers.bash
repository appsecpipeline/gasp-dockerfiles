#!/bin/bash

# Set the dockerhub user
DHU="mtesauro"

# Ensure we're in the same directory as this script
cd "$(dirname "$0")"

# Function to grab the version number from the docker file
grab_ver(){
    echo -n `grep "VER=" $1 | head -n 1 | cut -d "=" -f 2`
}

# Iterate through the dockerfiles here and push to Dockerhub
for i in $(ls -1 gasp-*)
do
    # Build all images to Dockerhub user $DHU set above
    VER=$(grab_ver $i)
    docker tag $i:$VER $DHU/$i:$VER
    docker push $DHU/$i:$VER
done

