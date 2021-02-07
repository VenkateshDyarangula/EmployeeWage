#!/bin/bash -x


echo "Hello EmpDeatils Program"

isPresent=1;
wagePerHr=20;
fullDay=8;
dailyPayment=0;
fulltime=8;
parttime=5;
checkRandom=$((RANDOM%2))
if [ $isPresent -eq $checkRandom ]
then
     echo "Emp is Present"
      if [ $fulltime -eq 8 ]
      then
         dailyPayment=$(($wagePerHr*$fulltime))
            echo "Daily Payment is:" $dailyPayment
      else
         dailyPayment=$(($wagePerHr*$parttime))
            echo "Daily Payment is:" $dailyPayment
      fi
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi
