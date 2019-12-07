#!/bin/bash -x

declare -A  resultDict

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

resultDict[Operation1]=$(( $a + $b * $c ))
resultDict[Operation2]=$(( $a * $b + $c ))
resultDict[Operation3]=$(( $c + $a / $b ))
resultDict[Operation4]=$(( $a % $b + $c ))

for result in "${!resultDict[@]}"
do
	resultArr[((count++))]="${resultDict[$result]}"
done
