#!/bin/bash

REPORTS="/opt/appsecpipeline/reports"

# Get us to the right directory
cd /opt/appsecpipeline

# Create reports directory if needed
if [ ! -d "$REPORTS" ]; then
  mkdir $REPORTS
fi

cd $REPORTS

# Cyle throuth the reports directory and upload any files in the root of the tool results directory
for i in `ls -1 $REPORTS`; do
  CUR="$REPORTS/$i"
  for r in `find $CUR -maxdepth 1 -mindepth 1 -type f -exec basename {} \;`; do
    FILE="$CUR/$r"
    echo "Dojo Import Command: python /usr/bin/dojo_ci_cd.py ${@} --file=$FILE --scanner=$i"
    python /usr/bin/dojo_ci_cd.py ${@} --file=$FILE --scanner=$i
    cd "$CUR"
  done
done

