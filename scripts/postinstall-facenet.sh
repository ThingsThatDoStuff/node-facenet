#!/usr/bin/env bash
cd "$(dirname "$0")/.."

cd python3
if [ -d facenet ]; then (
  cd facenet
  git pull
); else git clone --depth 1 https://github.com/huan/python-facenet.git facenet; fi
cd -
