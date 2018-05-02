#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"
BDIR="$REPORTS/brakeman"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Create the brakeman directory if needed
if [ ! -d "$BDIR" ]; then
  mkdir $BDIR
fi

cd $BDIR

# Run brakeman here where the dojo uploader expects it
brakeman "${@}" 

