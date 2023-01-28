#!/bin/bash

source reset.sh

for STAGE in {1..39}
do
  echo $STAGE > asv_watcher_test_data/STAGE
  git add asv_watcher_test_data/STAGE
  git commit -m "Stage $STAGE"
done

pushd asv_bench 1> /dev/null
asv run HEAD~40..
asv publish
popd 1> /dev/null
