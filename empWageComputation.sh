#!/bin/bash -x

#UC1
echo "Hello Welcome to EmpDeatils Programe"

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
         #UC2
         dailyPayment=$(($wagePerHr*$fulltime))
            echo "Daily Payment is:" $dailyPayment
      else
          #UC3
         dailyPayment=$(($wagePerHr*$parttime))
            echo "Daily Payment is:" $dailyPayment
         
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi

