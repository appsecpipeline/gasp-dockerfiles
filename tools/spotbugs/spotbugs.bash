#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"
BDIR="$REPORTS/spotbugs"
SPOTBUGS_HOME="/opt/spotbugs"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Create the spotbugs directory if needed
if [ ! -d "$BDIR" ]; then
  mkdir $BDIR
fi

cd $BDIR

# Run spotbugs here where the dojo uploader expects it
java -jar ${SPOTBUGS_HOME}/lib/spotbugs.jar "${@}" 

