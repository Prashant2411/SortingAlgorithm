#!/bin/bash -x

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

echo $(( $a + $b * $c ))
echo $(( $a * $b + $c ))
echo $(( $c + $a / $b ))
