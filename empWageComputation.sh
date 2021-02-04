#!/bin/bash -x

echo "Hello EmpDeatils Program"

isPresent=1;
checkRandom=$((RANDOM%2))
if [ $isPresent -eq $checkRandom ]
then
echo "Emp is Present"
else
echo "Emp is Absent"
fi
