#!/bin/bash 
#UC1
echo "Hello Welcome to EmpDeatils Programe"
declare -a array
isPresent=1;
wagePerHr=20;
fullDay=8;
dailyPayment=0;
fulltime=5;
parttime=3;
monthDays=20;
workHrs=100;
totalWage=0;
checkRandom=$((RANDOM%2))
partFullCheck=$((RANDOM%2))  #UC-4 (0-FullTime 1-PartTime)
counter=0;
storeInArray () {
value=$1;
if [[ "${array[*]}" != *"$value"* ]]
then
array[counter]=$value;
((counter++));
fi;
}
if [ $isPresent -eq $checkRandom ]   
then
     echo "Emp is Present"
      #UC-4 
      case $partFullCheck in    #(0-FullTime and 1-PartTime)
            #UC-2 and UC-5
         0)  for (( i=1; i<=$workHrs; i++ ))#UC-6
             do
                   Day=$(($workHrs/$monthDays))
                   dailyPayment=$(($wagePerHr*$i*$Day))
                   #echo "Daily Payment of Full Time is:" $dailyPayment
                   storeInArray $dailyPayment
                   totalWage=$(($dailyPayment+$totalWage))
             done   #UC-8
                   echo "Daily Wages store in array" [${array[@]}]
                   echo "TotalWage of Full Time is :" $totalWage
                ;;
             #UC3 and UC-5
         1)  for (( i=1; i<=$workHrs; i++ ))#UC-6
             do
                   Day=$(($workHrs/$monthDays-2))
                   dailyPayment=$(($wagePerHr*$i*$Day))
                   #echo "Daily Payment of Part Time is:" $dailyPayment         
                   storeInArray $dailyPayment
                   totalWage=$(($dailyPayment+$totalWage))
             done     #UC-8
                   echo "Daily Wages store in array" [${array[@]}]
                   echo "TotalWage of Part Time is :" $totalWage
               ;;
      esac
else
    echo "Emp is Absent"
    echo "Daily Payment is:" $dailyPayment
fi
