#!/bin/bash

for d in */; do
    # if [[ ! grep -q ^$d _changed_folders ] || [ $d !== 'test/' ]; then
    if ! grep -q "^$d" _changed_folders && [[ "$d" != "test/" ]]; then
      echo $d;
    fi
done

