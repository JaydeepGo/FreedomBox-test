#!/bin/bash
# Tower of hanoi problem with the help of Bash script
# hanoi(number of disks, source tower, destination tower, temporary tower)

function hanoi
{
  if [[ $1 == 0  ]]
  then
    return 0;
  else
    hanoi $(($1-1)) $2 $4 $3
    echo "Move disk $1 from tower $2 to tower $3"
    hanoi $(($1-1)) $4 $3 $2
  fi
}


echo "Enter the number of disk in tower: "   
read totaldisk 

if ! [[ $totaldisk =~ ^[0-9]+$ ]]   #check for false input
then
  echo "Input interger only"
  exit;
else
  hanoi $totaldisk A B C
fi
