#!/bin/bash

if [ "$#" == 4 ];
then
  echo "$2" $(grep -o $2 $1 | wc -l)
  grep -n $2 $1 | cut --delimiter=':' -f 1

  echo "$3" $(grep -o $3 $1 | wc -l)
  grep -n $3 $1 | cut --delimiter=':' -f 1

  echo "$4" $(grep -o $4 $1 | wc -l)
  grep -n $4 $1 | cut --delimiter=':' -f 1
else
  exit 1
fi
