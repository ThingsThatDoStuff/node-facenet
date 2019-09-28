#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."

if [ ! -d models ]; then
  mkdir models
fi
cd models
if [ ! -e model.tar.bz2 -a ! -e model-*.meta ]; then
  curl --silent --location --output model.tar.bz2.tmp \
    https://github.com/huan/node-facenet/releases/download/v0.1.9/model-20170512.tar.bz2
  mv model.tar.bz2.tmp model.tar.bz2
fi
if [ ! -f model-*.meta ]; then
  tar jxvf model.tar.bz2
  rm -f model.tar.bz2
fi
cd -
