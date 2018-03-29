#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"
BDIR="$REPORTS/bandit"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Create the bandit directory if needed
if [ ! -d "$BDIR" ]; then
  mkdir $BDIR
fi

cd $BDIR

# Run bandit here where the dojo uploader expects it
bandit "${@}" 2>&1 

exit 0
