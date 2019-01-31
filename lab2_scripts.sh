#!/bin/bash
# Authors : Maxwell Sechelski
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a regular expression: "
read regEx
echo "Enter a file name: "
read file

echo " "
echo "Grep Results: "
grep $regEx $file

echo " "
echo "Phone Number Count: "
grep '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $file | wc -l

echo " "
echo "Email Count: "
grep '@' $file | grep '.com' | wc -l

grep '303-[0-9]\{3\}-[0-9]\{4\}' $file > phone_results.txt
grep '@geocities.com' $file > email_results.txt
grep $1 $file > command_results.txt


