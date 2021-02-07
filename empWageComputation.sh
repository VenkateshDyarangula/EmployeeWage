#!/bin/bash 
#UC1
echo "Hello Welcome to EmpDeatils Programe"
isPresent=1;
dailyPayment=0;
monthDays=20;
workHrs=100;
count=1;
Daycount=1;
checkRandom=$((RANDOM%2))
partFullCheck=$((RANDOM%2))  #UC-4 (0-FullTime 1-PartTime)
#UC-7
getWorkHrs () {
for (( i=1; i<=$monthDays; i++ ))
do
DayHrs=$(($workHrs/$monthDays))
DayHrs=$(($DayHrs*$Daycount))
echo "$count day Work Hrs" $DayHrs
((count++))
((Daycount++))
done
}

if [ $isPresent -eq $checkRandom ]   
then
     echo "Emp is Present"
      #UC-4 
      case $partFullCheck in    #(0-FullTime and 1-PartTime)
            #UC-2 and UC-5
    
         0)  #UC7
                   getWorkHrs
                   ;;
         1) #UC7
                   getWorkHrs
               
               ;;
      esac
    
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi

