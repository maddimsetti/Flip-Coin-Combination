#!/bin/bash

echo "Flip Coin Combination Problem"

count=0
for (( i=1; i<=20; i++ ))
do
   declare -A doublet
   declare -A doublet1
   doublet[ ((count++)) ]=$((RANDOM%2))
   doublet1[ ((count++)) ]=$((RANDOM%2))

        if [ ${doublet[@]} -eq 1 -a ${doublet1[@]} -eq 1 ]
        then
           echo "Head Head"
           ((HeadHead++))
        elif [ ${doublet[@]} -eq 1 -a ${doublet1[@]} -eq 0 ]
        then
           echo "Head Tail"
           ((HeadTail++))
        elif [ ${doublet[@]} -eq 0 -a ${doublet1[@]} -eq 1 ]
        then
           echo "Tail Head"
           ((TailHead++))
        elif [ ${doublet[@]} -eq 0 -a ${doublet1[@]} -eq 0 ]
        then
           echo "Tail Tail"
           ((TailTail++))
        else
           exit;
        fi
done

echo "Number of Head Head Win = $HeadHead"
echo "Number of Head Tail Win = $HeadTail"
echo "Number of Tail Head Win = $TailHead"
echo "Number of Tail Tail Win = $TailTail"

HeadHeadPercentage=$((100*$HeadHead/20))
echo "Percentage of HeadHead = $HeadHeadPercentage"
HeadTailPercentage=$((100*$HeadTail/20))
echo "Percentage of HeadTail = $HeadTailPercentage"
TailHeadPercentage=$((100*$TailHead/20))
echo "Percentage of TailHead = $TailHeadPercentage"
TailTailPercentage=$((100*$TailTail/20))
echo "Percentage of TailTail = $TailTailPercentage"
