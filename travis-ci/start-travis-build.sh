#!/bin/bash

TMP_DIR=`mktemp -d --suffix=-kieker-travis-build`

if [ "$#" -eq 0 ]; then
  echo "No source folder provided. Checking out kieker master.."
  cd $TMP_DIR
  git clone https://github.com/kieker-monitoring/kieker.git
elif [ "$#" -eq 1 ]; then
  echo "Copying the provided directory into the temporary directory.."
  mkdir -p $TMP_DIR/kieker
  cp -r "$1/*" $TMP_DIR/kieker/.
else
  echo "Usage: $0 [source-repository on file system]"
  exit 1
fi

cd $TMP_DIR/kieker
rm lib/static-analysis/findbugs-3.0.1 -rf
docker run -t -i -v $TMP_DIR:/opt kieker/kieker-build
echo "The working directory was $TMP_DIR"
