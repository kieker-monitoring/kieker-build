#!/bin/bash

TMP_DIR=`mktemp -d --suffix=-kieker-travis-build`

if [ "$#" -eq 0 ]; then
  echo "No source folder provided. Checking out kieker master.."
  cd $TMP_DIR
  git clone https://github.com/kieker-monitoring/kieker.git
elif [ "$#" -eq 1 ]; then
  echo "Copying the provided directory into the temporary directory.."
  cp -r "$1" $TMP_DIR/.
else
  echo "Usage: $0 [local kieker git folder]"
  exit 1
fi
echo "Preparation done"
cd $TMP_DIR/kieker
pwd
rm lib/static-analysis/findbugs-3.0.1 -rf
echo "Deleted fb3 folder"
docker run -t -i -v $TMP_DIR:/opt kieker/kieker-build:travis-ci
echo "Docker run finished"
echo "The working directory was $TMP_DIR"
