#!/usr/bin/env bash

for dir in */;
do
   echo "Checking $dir..."
   cd $dir && azure-jinja2/scripts/build_and_diff.sh && cd .. 
done
