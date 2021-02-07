#!/bin/bash -x

#UC-1
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
            #UC-4
      case $partFullCheck in    #(0-FullTime and 1-PartTime)
            #UC-2
         0) dailyPayment=$(($wagePerHr*$fulltime))
            echo "Daily Payment is:" $dailyPayment
          ;;     
             #UC3
         1)  dailyPayment=$(($wagePerHr*$parttime))
            echo "Daily Payment is:" $dailyPayment
          ;;
      esac
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi
