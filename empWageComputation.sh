#!/bin/bash -x


echo "Hello EmpDeatils Program"

isPresent=1;
wagePerHr=20;
fullDay=8;
dailyPayment=0;
fulltime=8;
parttime=5;
checkRandom=$((RANDOM%2))
partFullCheck=$((RANDOM%2))
if [ $isPresent -eq $checkRandom ]
then
     echo "Emp is Present"
      case $partFullCheck in
            #0-FullTime
         0) dailyPayment=$(($wagePerHr*$fulltime))
            echo "Daily Payment is:" $dailyPayment
          ;;     
             #1-fulltime
         1)  dailyPayment=$(($wagePerHr*$parttime))
            echo "Daily Payment is:" $dailyPayment
          ;;
      esac
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi
