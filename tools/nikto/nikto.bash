#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"
BDIR="$REPORTS/nikto"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Create the nikto directory if needed
if [ ! -d "$BDIR" ]; then
  mkdir $BDIR
fi

cd $BDIR

# Run nikto here where the dojo uploader expects it
nikto "${@}" 

