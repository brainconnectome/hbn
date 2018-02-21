#!/bin/bash

cd /ifs/scratch/pimri/posnerlab/1anal/hbn/rawdata
for s in `cat list_t1`;do 
  dwisource=`find . -wholename "./R*/MRI/*/sub-${s}/dwi*" -type d`
  dwitarget='../fs/${s}/dwi'
  mkdir \${dwitarget}
  echo $code/fsl_sub_hpc_1 cp \${dwipath}/. \${dwitarget} 
done
