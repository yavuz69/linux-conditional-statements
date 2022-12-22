#!/bin/bash

read -p "What is your name : " NAME
read -p "How old are you : " AGE
read -p "How old will you retire : " RETIRE
read -p "Enter your average life expectancy  : " ALE

if (( $AGE <= 6 ))
then
  echo "$NAME is a children"
  let X=6-$AGE
  echo "There are $X year(s) for studentless "
elif (( 6 < $AGE )) ; (($AGE <= 18))
then 
    echo "$NAME is student"
    let X=18-$AGE
    echo "There are $X years to become a worker. "  
elif (( 18 < $AGE )) | (($AGE <= $RETIRE))
then 
    echo "$NAME is a Worker" 
    let X=$RETIRE-$AGE
    echo "$X years to retire. "  
else
  if (( $AGE < $ALE ))
  then 
    echo "$NAME is retired"
    let X=$ALE-$AGE
    echo "retired $X years "
  else 
    echo "ALREADY DİED!!!"
    sleep 2
    echo "ALREADY DİED!!!"
    sleep 2
    echo "ALREADY DİED!!!" 
  fi
fi
