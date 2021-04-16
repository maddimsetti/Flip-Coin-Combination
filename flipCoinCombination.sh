#!/bin/bash

echo "Flip Coin Combination Problem"

count=0
for (( i=1; i<=10; i++ ))
do
   singlet[ ((count++)) ]=$((RANDOM%2))
done
   echo ${singlet[@]}
   echo ${!singlet[@]}


for(( i=1; i<=10; i++ ))
do
   if [ ${singlet[i]} -eq 1 ]
   then
       ((Head++))
   else
       ((Tail++))
   fi
done

echo "Number of Heads Win = $Head"
echo "Number of Tails Win = $Tail"

HeadPercentage=$((100*$Head/10))
echo $HeadPercentage
TailPercentage=$((100*$Tail/10))
echo $TailPercentage
