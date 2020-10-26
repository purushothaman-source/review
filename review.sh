#!/bin/bash 
read -p "enter the three digit number " n
index=0
temp=0
temp1=0
palindrome(){
        num=$1
     reversedInteger=0

        while [ $num -ne 0 ]
        do
            remainder=$(($num % 10))
            reversedInteger=$(($reversedInteger * 10 + $remainder))
            num=$(($num/10))
        done
if [ $1 -eq  $reversedInteger ]
       then
            echo   " $1  is a palindrome "
        else
            echo  " $1 is not a palindrome."
 fi
}


if [[ n -gt 99 && n -le 1000 ]]
then
for (( i=1 ; $(( i<$n ));i++))
do
if [ $((n%i)) -eq 0 ]
then
  factors[index]=$i
  ((index++))
fi
done
fi
echo ${factors[@]}

for((j=0;j< ${#factors[@]};j++))
do
    if [[ $((factors[j]%2)) -eq 0 ]] 
     then
       even[temp]=${factors[j]}
       palindrome ${even[temp]}
       ((temp++))
     
     else
        
        odd[temp1]=${factors[j]}
        palindrome ${odd[temp1]}
        ((temp1++))
     fi
done

echo ${even[@]}
echo ${odd[@]}




