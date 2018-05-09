#!/bin/bash

# Ensure we're in the same directory as this script
cd "$(dirname "$0")"

# Function to grab the version number from the docker file
grab_ver(){
    echo -n `grep "VER=" $1 | head -n 1 | cut -d "=" -f 2`
}

# Alway build the base image first:
VER=$(grab_ver "gasp-base")
docker build -f ./gasp-base . -t gasp-base:$VER

for i in $(ls -1 gasp-*)
do
    # Build all but the base image since that was built above 
    if [ "$i" != "gasp-base" ]
    then
      VER=$(grab_ver $i)
      docker build -f ./$i . -t $i:$VER
    fi 
done
