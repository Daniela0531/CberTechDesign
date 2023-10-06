#!/bin/bash
cat > file_csv.csv
while ( true ) do
  cur_date=$(date "+%F_%T")
  cpu_parameters=$(iostat -C | expand)
  IFS=$'\n' read -rd '' -a splited_cpu_parameters <<< "$cpu_parameters"
  IFS=$' ' read -rd '' -a my_cpu_parameters <<< "${splited_cpu_parameters[2]}"
  cpu_user=${my_cpu_parameters[6]}
  cpu_sys=${my_cpu_parameters[7]}
  cpu_idle=${my_cpu_parameters[8]}
  echo "$cur_date;cpu_user:$cpu_user%;cpu_sys:$cpu_sys%;cpu_idle:$cpu_idle%;" > file_csv.csv
  sleep 600
done