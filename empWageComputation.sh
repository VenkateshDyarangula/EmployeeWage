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
partFullCheck=$((RANDOM%2))  #UC-4 (0-FullTime 1-PartTime)
if [ $isPresent -eq $checkRandom ]   
then
     echo "Emp is Present"
            #UC-4
      case $partFullCheck in
            #UC-2
         0) dailyPayment=$(($wagePerHr*$fulltime))
            echo "Daily Payment is:" $dailyPayment
          ;;     
             #UC-3
         1)  dailyPayment=$(($wagePerHr*$parttime))
            echo "Daily Payment is:" $dailyPayment
          ;;
      esac

else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi

