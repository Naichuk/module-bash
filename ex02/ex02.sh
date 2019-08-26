#!/bin/bash

for path in $(echo $1| tr " " "\n" )
do
  exist=$(ls -R | grep $path)
  if [ -n "$exist" ]
  then
    ls -R | grep $path
  else
    echo "the searched PATH is unexisting"
  fi
done