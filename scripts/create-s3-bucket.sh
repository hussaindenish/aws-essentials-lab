#!/bin/bash
# Usage: ./create-s3-bucket.sh my-bucket-name

BUCKET_NAME=$1

if [[ -z "$BUCKET_NAME" ]]; then
  echo "Bucket name is required."
  exit 1
fi

aws s3 mb s3://$BUCKET_NAME

