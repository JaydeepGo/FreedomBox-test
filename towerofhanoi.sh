<<<<<<< HEAD
#!/bin/bash
# Tower of hanoi problem with the help of Bash script
# hanoi(number of disks, source tower, destination tower, temporary tower)

function hanoi
{
  if [[ $1 == 0  ]]
=======
#Tower of hanoi problem with the help of Bash script
# hanoi(number of disks, source tower, destination tower, temporary tower)
#!/bin/bash

function hanoi
{
  if [ $1 -eq 0 ]
>>>>>>> 22b63acb4adb7d9033cbe2e77749c5aecb0e8134
  then
    return 0;
  else
    hanoi $(($1-1)) $2 $4 $3
    echo "Move disk $1 from tower $2 to tower $3"
    hanoi $(($1-1)) $4 $3 $2
  fi
}


<<<<<<< HEAD
echo "Enter the number of disk in tower: "   
read totaldisk 

if ! [[ $totaldisk =~ ^[0-9]+$ ]]   #check for false input
=======
echo "Enter the number of disk in tower: "
read totaldisk 

if ! [[ $totaldisk =~ ^[0-9]+$ ]]  
>>>>>>> 22b63acb4adb7d9033cbe2e77749c5aecb0e8134
then
  echo "Input interger only"
  exit;
else
  hanoi $totaldisk A B C
fi
