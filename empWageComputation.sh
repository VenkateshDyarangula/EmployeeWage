#!/bin/bash -x
#UC1
echo "Hello Welcome to EmpDeatils Programe"
isPresent=1;
wagePerHr=20;
fullDay=8;
dailyPayment=0;
fulltime=8;
parttime=5;
perMonth=20;
checkRandom=$((RANDOM%2))
partFullCheck=$((RANDOM%2))  #UC-4 (0-FullTime 1-PartTime)
if [ $isPresent -eq $checkRandom ]   
then
     echo "Emp is Present"
            #UC-4
      case $partFullCheck in    #(0-FullTime and 1-PartTime)
            #UC-2 and UC-5
         0) dailyPayment=$(($wagePerHr*$perMonth*$fulltime))
            echo "Daily Payment is:" $dailyPayment
          ;;
             #UC3 and UC-5
         1)  dailyPayment=$(($wagePerHr*$perMonth*$parttime))
            echo "Daily Payment is:" $dailyPayment
          ;;
      esac

else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi

