#!/bin/bash -x

declare -A  resultDict

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

resultDict["$a + $b * $c"]=$(( $a + $b * $c ))
resultDict["$a * $b + $c"]=$(( $a * $b + $c ))
resultDict["$c + $a / $b"]=$(( $c + $a / $b ))
resultDict["$a % $b + $c"]=$(( $a % $b + $c ))

