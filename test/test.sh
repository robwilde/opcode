#!/usr/bin/env bash
# Run this from the main repo directory

set -e
cd ./test
source "approvals.bash"

for file in *_spec.sh ; do
  magenta "\nFILE $file"
  ./$file
done
