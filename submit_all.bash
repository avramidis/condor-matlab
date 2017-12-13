#!/bin/bash

declare -A matrix

# Parameter values for the first job
matrix[0,0]=0
matrix[0,1]=1
matrix[0,2]=2

# Parameter values for the second job
matrix[1,0]=1
matrix[1,1]=10
matrix[1,2]=20

for i in {0..1}
do
#echo $i
echo ${matrix[$i,0]}
echo ${matrix[$i,1]}
echo ${matrix[$i,2]}
#condor_submit submit_example -append arguments="\${matrix[$i,0]} \${matrix[$i,1]} \${matrix[$i,2]}"
condor_submit submit_example -append arguments="${matrix[$i,0]} ${matrix[$i,1]} ${matrix[$i,2]}" \
transfer_output_files="${matrix[$i,0]}_a.mat,${matrix[$i,0]}_b.mat" \
Output="${matrix[$i,0]}.out" Error="${matrix[$i,0]}.err" Log="${matrix[$i,0]}.log"

done
exit 0
