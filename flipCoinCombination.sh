#!/bin/bash

echo "Flip Coin Combination Problem"

randomNumber=$((RANDOM%2))
echo $randomNumber

if [ $randomNumber -eq 1 ]
then
    echo "Head"
else 
    echo "Tail"
fi
