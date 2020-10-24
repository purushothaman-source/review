#!/bin/bash 
read -p "enter the three digit number " n
j=0
o=0
z=1
if [[ n -gt 99 && n -le 1000 ]]
then
for (( i=1 ; $(( i<$n ));i++))
do
if [ $((n%i)) -eq 0 ]
then
  factors[$j]=$i
  ((j++))
fi
done
fi
echo ${factors[@]}

for((j=0;j< ${#factors[@]};j++))
do
    if [[ $((factors[j]%2)) -eq 0 ]] 
     then
       even[$o]=${factors[j]}
       o=$((o+2))
     
     else
        odd[$z]=${factors[j]}
     fi
done

echo ${even[@]}
echo ${odd[@]}

 
