#!/bin/bash -x

count=0

declare -A  resultDict

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

resultDict[Operation1]=$(( $a + $b * $c ))
resultDict[Operation2]=$(( $a * $b + $c ))
resultDict[Operation3]=$(( $c + $a / $b ))
resultDict[Operation4]=$(( $a % $b + $c ))

function getDesc () {
	for((j=0; j<4;j++))
	do
		for((i=0;i<4-$j-1;i++))
		do
			if [ ${resultArr[$i]} -lt ${resultArr[$(($i +1))]} ]
			then
				temp=${resultArr[$i]}
				resultArr[(($i))]=${resultArr[$(( $i +1 ))]}
				resultArr[$(( $i +1 ))]=$temp
			fi
		done
	done
}

function getAsc () {
	for((j=0; j<4;j++))
	do
		for((i=0;i<4-$j-1;i++))
		do
			if [ ${resultArr[$i]} -gt ${resultArr[$(($i +1))]} ]
			then
				temp=${resultArr[$i]}
				resultArr[(($i))]=${resultArr[$(( $i +1 ))]}
				resultArr[$(( $i +1 ))]=$temp
	 		fi
		done
	done
}

function main () {
	for result in "${!resultDict[@]}"
	do
		resultArr[((count++))]="${resultDict[$result]}"
	done
	getDesc
	echo "Descending order: "
	echo "${resultArr[@]}"
	getAsc
	echo "Ascending Order: "
	echo "${resultArr[@]}"
}

main
