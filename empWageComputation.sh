#!/bin/bash -x


isPresent=1; 
wagePerHr=20; 
fullDay=8; 
dailyPayment=0; 
checkRandom=$((RANDOM%2)) 
if [ $isPresent -eq $checkRandom ] 
then
     echo "Emp is Present"
      if [ $fullDay -eq 8 ]
      then
         dailyPayment=$(($wagePerHr*$fullDay))
            echo "Daily Payment is:" $dailyPayment
      else
            echo "Employee is not full time employee:" $dailyPayment

      fi
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi
