#!/bin/bash

#title           :defaceparallel.sh
#description     :This script will make defaces with parallel process
#author		 :Pablo Reyes
#date            :20211101
#version         :0.1    
#usage		 :bash defaceparallel.sh
#notes           :Install pydeface and parallel in linux, you need a list in txt with the subjects: "lista.txt", establishing a path to BIDS folder, this script only works with T1, if you need more defaces please change it.
#install    pip install pydeface; sudo apt install parallel

#==============================================================================

pathBIDS='/media/folder/folder/folder/BIDSdeface'

cat $pathBIDS/lista.txt | parallel -j 10 pydeface $pathBIDS/{}/anat/*T1*.gz

