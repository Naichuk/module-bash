#!/bin/bash

if [ $# -lt 1 ]; then
  exit 1
fi
res='0'
start_arg=$1
shift
counter=$#
while test ${#} -gt 0
do
  if ! [[ $1 =~ ^-?[0-9]+$ ]]; then
   echo "Error.."
   exit 1
  fi
  if [ $start_arg == '-o' ] && [ $(($1%2)) -ne 0 ];then
   res+='+'$1
  fi
  if [ $start_arg == '-e' ] && [ $(($1%2)) -eq 0 ];then
   res+='+'$1
  fi
  if [ $start_arg == '-m' ] || [ $start_arg == '-s' ]; then
    res+='+'$1
  fi
  shift
done

case "$start_arg" in
  "-o" )
   echo $res | bc
    ;;
  "-e" )
    echo $res |bc
   ;;
  "-m" )
    echo '('$res')/'$counter | bc
    ;;
  "-s" )
    echo $res | bc
    ;;
  * )
    echo "Error.."
    exit 1
    ;;
esac

