#!/bin/bash
# Usage: ./upload-to-s3.sh myfile.txt my-bucket-name

FILE=$1
BUCKET=$2

if [[ -z "$FILE" || -z "$BUCKET" ]]; then
  echo "Usage: $0 <filename> <bucket>"
  exit 1
fi

aws s3 cp $FILE s3://$BUCKET/

