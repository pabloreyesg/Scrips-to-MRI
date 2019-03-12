#!/bin/bash

#Author: Pablo Reyes
#email: pabloreyesg@gmail.com


#this script works to uncompress (each) dicom images, the output are dicom uncompressed
#please, merge all images i a zip file.
#specify pathraw - place with images compressed
#install libgdcm-tools

pathraw='/home/labneuroimage/Downloads'

#uncomment to use in a loop, you should specify a file with all names

#for fl in $(cat /home/labneuroimage/Downloads/listadon.txt)

#uncomment next line to use with several names or codes

#for fl in A015t1
#do
#code=$fl

#cd $pathraw

read -p 'archivo comprimido:  ' fl 
read -p 'Codigo de sujeto:  ' code  



mkdir -p $pathraw/TEMP/$code 
unzip $fl -d $pathraw/TEMP/$code 
cd TEMP/$code
for h in $(ls)
	do cd $h
		for f in $(ls); 
		do gdcmconv -w $f $f; 
		done
	printf "uncompress.. $h \n"
	cd ../
done 

cd $pathraw/TEMP/$code
tar -czf dicom.tar.gz 1.*
mkdir -p $pathraw/TEMP/$code/dicom
mv 1.* $pathraw/TEMP/$code/dicom/
rm -R $pathraw/TEMP/$code/1.*

done

#requires libgdcm-tools
