#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"
BDIR="$REPORTS/cloc"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Create the cloc directory if needed
if [ ! -d "$BDIR" ]; then
  mkdir $BDIR
fi

cd $BDIR

# Run cloc here where the dojo uploader expects it
cloc "${@}" 

