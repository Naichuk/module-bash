#!/bin/bash

if ! [ -f $1 ]; then
  echo ""
  exit 1
fi

while [ $# -ne 0 ]
do
  echo $(awk 'END { print NR }' $1) $1
  shift
done
