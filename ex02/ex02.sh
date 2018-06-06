#!/bin/bash

for arg in $(echo $1 | tr ";" "\ni")
do
  ifarg=$(ls -R | grep $arg)
  if [ -n "$ifarg" ]; then
    ls -R | grep $arg
  else
    echo "the searched PATH is unexisting"
  fi
done



