#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"
BDIR="$REPORTS/retirejs"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Create the RetireJS directory if needed
if [ ! -d "$BDIR" ]; then
  mkdir $BDIR
fi

cd $BDIR

# Run RetireJS here where the dojo uploader expects it
retire "${@}" 
