#!/bin/sh
if [ -z "$1" ]; then
   echo "параметр START не передан."
   exit 1
fi

if [[ $1 == "START" ]]
  then a=$(pgrep bash bash_create_csv.sh)
  if [[ -z "$a" ]];
    then bash bash_create_csv.sh &
    a=$(pgrep bash bash_create_csv.sh)
    echo $a
  else
    echo $a
  fi
fi

if [[ $1 == "STOP" ]]
  then a=$(pgrep bash bash_create_csv.sh)
  if [[ -nz "$a" ]];
    then
      pkill -9 bash bash_create_csv.sh
      rm file_csv.csv
  fi
fi

if [[ $1 == "STATUS" ]]
  then a=$(pgrep bash bash_create_csv.sh)
  if [[ -z "$a" ]];
    then echo not running
  else
    echo running
  fi
fi