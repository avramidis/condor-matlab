#!/bin/bash

export PATH=/data/app/MATLAB/R2017b/bin:$PATH

#echo $1
#echo $2
#echo $3

#matlab -nodisplay -nosplash -nodesktop  -r 'try example(1,2);exit; catch; end; quit'
matlab -nodisplay -nosplash -nodesktop  -r 'example('$1','$2','$3');exit'
