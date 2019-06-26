#!/bin/bash

for fl in 
do

#read -p 'Folder Subject:  ' fl 

pathtemp='/home/labneuroimage/Downloads/IngLilianaColciencias'
pathfl='/home/labneuroimage/DATA/AOS'

cp -r /home/labneuroimage/Downloads/IngLilianaColciencias/$fl /home/labneuroimage/DATA/AOS/
 
mkdir -p $pathfl/$fl
cd $pathfl/$fl
dcm2niix -o $pathfl/$fl -t y -f %p -z y -i n $pathfl/$fl


cd $pathfl/$fl

if [ -e "T1W3D_TFE_SENSE.nii.gz" ]; 
then 
		mkdir -p $pathfl/$fl/T1
		mv $pathfl/$fl/coT1* $pathfl/$fl/T1/coT1.nii.gz
		mv $pathfl/$fl/T1W*.nii* $pathfl/$fl/T1/T1.nii.gz
else  
	echo "don't exist T1W3D_TFE_SENSE.nii.gz in $fl"
fi

if [ -e "T2_3D_SENSE.nii.gz" ]; 
then 
		mkdir -p $pathfl/$fl/T2
		mv $pathfl/$fl/coT2* $pathfl/$fl/T2/coT2.nii.gz
		mv $pathfl/$fl/T2*.nii* $pathfl/$fl/T2/T2.nii.gz
else  
	echo "don't exist T2_3D_SENSE.nii.gz in $fl"
fi

if [ -e "fMRI-REST_SENSE.nii.gz" ]; 
then 
		mkdir -p $pathfl/$fl/fMRI
		mv $pathfl/$fl/fMRI-REST_SENSE.nii* $pathfl/$fl/fMRI/REST.nii.gz
else  
	echo "don't exist fMRI-REST_SENSE.nii.gz in $fl"
fi

if [ -e "DTI_SENSE.nii.gz" ]; 
then 
		mkdir -p $pathfl/$fl/DTI
		mv $pathfl/$fl/DTI_SENSE.nii* $pathfl/$fl/DTI/DTI.nii.gz
		mv $pathfl/$fl/DTI_SENSE.bv* $pathfl/$fl/DTI/
else  
	echo "don't exist DTI_SENSE.nii.gz in $fl"
fi

mkdir -p $pathfl/$fl/Other $pathfl/$fl/logs $pathfl/$fl/dicom
mv $pathfl/$fl/*.nii.gz $pathfl/$fl/Other
mv $pathfl/$fl/*.json $pathfl/$fl/logs
mv $pathfl/$fl/*.txt $pathfl/$fl/logs
mv $pathfl/$fl/*.bv* $pathfl/$fl/logs
mv $pathfl/$fl/DICOMDIR $pathfl/$fl/logs
mv $pathfl/$fl/*.dcm $pathfl/$fl/dicom
rm -R $pathfl/$fl/Cache
rm -R $pathfl/$fl/ImageTemp
rm -R $pathfl/$fl/Reports
rm -R $pathfl/$fl/Viewer
rm $pathfl/$fl/*.cmd
$pathfl/$fl/*.inf

cd $pathfl/$fl


	if [ -d "DICOM" ];
	then
	mv DICOM dicom
	else
	echo 
	fi


echo "I start anon $fl"
	gdcmanon -r --dumb --empty 10,10 --empty 10,40 --empty 10,1010 --replace 10,0020,$fl dicom dicom_anonymized

echo "start compress $fl"
	tar -czpf dicom_anonymized.tar.gz dicom_anonymized

pathback='/home/labneuroimage/DATA/AOSback'

	mkdir -p $pathback/$fl/
	tar -czpf dicom.tar.gz dicom
	mv dicom.tar.gz $pathback/$fl/
	mv dicom_anonymized.tar.gz $pathback/$fl/
	rm -R dicom_anonymized
	rm -R dicom
	rm -r 1.*
	


done
echo
