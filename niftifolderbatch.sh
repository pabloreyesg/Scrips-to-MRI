#!/bin/bash
#script to convert images from Dicom to nifti with dcm2nii
#requieres dcm2nii sudo apt-get install dcm2nii
#new version requieres dcm2niix


pathend='/home/labneuroimage/DATA/ThesisVBM'
pathor='/media/labneuroimage/External_HD/DATA-RAW'


#previous to use this script, you need a list with codes or names
#this script generates folders: T1, T2, MPRAGE, DTI, and rfMRI
#Provides names from scanner, for instance  [ -f "T1W3DTFESENSE.nii.gz" ]   



cd $pathor
for code in $(cat /home/labneuroimage/DATA/ThesisVBM/listat1.txt)
	do 

mkdir -p $pathend/$code
cp -R $pathor/$code $pathend/

cd $pathend/
mkdir -p $pathend/$code/dicom
tar -xvf $pathend/$code/dicom_anonymized.tar.gz -C $pathend/$code/
 dcm2nii -o $code -a Y -c Y -d N -e N -f N -g Y -i N -p Y -r N -t Y -v N -r Y $code/*

cd $pathend/$code

if [ -f "T1W3DTFESENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/T1
		mv $pathend/$code/coT1* $pathend/$code/T1/coT1.nii.gz
		mv $pathend/$code/T1W*.nii* $pathend/$code/T1/T1.nii.gz
else  
	echo "don't exist T1 in $code"
fi

if [ -f "WIPT1W3DTFESENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/T1
		mv $pathend/$code/coWIPT1* $pathend/$code/T1/coT1.nii.gz
		mv $pathend/$code/WIPT1*.nii* $pathend/$code/T1/T1.nii.gz
else  
	echo "don't exist WIPT1 in $code"
fi


##MPRAGE images two versions
if [ -f "MPRAGESENSESENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/MPRAGE
		mv $pathend/$code/coMP* $pathend/$code/MPRAGE/coMPRAGE.nii.gz
		mv $pathend/$code/MPRAGEm*.nii* $pathend/$code/MPRAGE/MPRAGE.nii.gz
		mv $pathend/$code/MPRAGES*.nii* $pathend/$code/MPRAGE/MPRAGE.nii.gz
else  
	echo "don't exist MPRAGE in $code"
fi

if [ -f "WIPMPRAGESENSESENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/MPRAGE
		mv $pathend/$code/coWIPMP* $pathend/$code/MPRAGE/coMPRAGE.nii.gz
		mv $pathend/$code/WIPMPRAGESENSESENSE.nii.gz $pathend/$code/MPRAGE/MPRAGE.nii.gz
else  
	echo "don't exist WIPMPRAGE in $code"
fi

# T2 in two versions
if [ -f "T23DSENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/T2
		mv $pathend/$code/oT23* $pathend/$code/T2/oT2.nii.gz
		mv $pathend/$code/T23DSENSE.nii.gz $pathend/$code/T2/T2.nii.gz
else  
	echo "don't exist T2 in $code"
fi


if [ -f "WIPT23DSENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/T2
		mv $pathend/$code/oWIPT2* $pathend/$code/T2/oT2.nii.gz
		mv $pathend/$code/WIPT23DSENSE.nii.gz $pathend/$code/T2/T2.nii.gz
else  
	echo "don't exist WIPT2 in $code"
fi

# DTI in two versions
if [ -f "xDTISENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/DTI
		mv $pathend/$code/xDTI*.nii.gz $pathend/$code/DTI/DTI.nii.gz
		mv $pathend/$code/*.bv* $pathend/$code/DTI
		cp $pathend/$code/DTI/xD*.bval $pathend/$code/DTI/bvals
		cp $pathend/$code/DTI/xD*.bvec $pathend/$code/DTI/bvecs 
else  
	echo "don't exist  DTI in $code"
fi

if [ -f "xWIPDTISENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/DTI
		mv $pathend/$code/xWIPDTI*.nii.gz $pathend/$code/DTI/DTI.nii.gz
		mv $pathend/$code/*.bv* $pathend/$code/DTI
		cp $pathend/$code/DTI/xWIPDTI*.bval $pathend/$code/DTI/bvals
		cp $pathend/$code/DTI/xWIPDTI*.bvec $pathend/$code/DTI/bvecs 
else  
	echo "don't exist  WIPDTI in $code"
fi

if [ -f "fMRIRESTSENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/rfMRI
		mv $pathend/$code/fMRI*.nii.gz $pathend/$code/rfMRI/rest.nii.gz
else  
	echo "don't exist fMRIREST in $code"
fi

if [ -f "RESTSENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/rfMRI
		mv $pathend/$code/REST*.nii.gz $pathend/$code/rfMRI/rest.nii.gz
else  
	echo "don't exist REST in $code"
fi



if [ -f "WIPfMRIRESTSENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/rfMRI
		mv $pathend/$code/WIPfMRI*.nii.gz $pathend/$code/rfMRI/rest.nii.gz
else  
	echo "don't exist WIPfMRIREST in $code"
fi

if [ -f "WIPRESTSENSE.nii.gz" ]; 
then 
		mkdir -p $pathend/$code/rfMRI
		mv $pathend/$code/WIPREST*.nii.gz $pathend/$code/rfMRI/rest.nii.gz
else  
	echo "don't exist WIPREST in $code"
fi



mkdir -p $pathend/$code/Other

mv $pathend/$code/*.nii.gz $pathend/$code/Other

mkdir $pathend/$codedicom_anonymized.tar.gz/txt
mv $pathend/$code/*.txt $pathend/$code/txt
mv $pathend/$code/*.b* $pathend/$code/

rm -R $pathend/$code/dicom
rm -R $pathend/$code/1.3*
rm -R $pathend/$code/1.2*
rm $pathend/$code/dicom_anonymized.tar.gz
rm -R $pathend/$code/dicom_anonymized
rm -R $pathend/$code/Other
rm $pathend/$code/*.txt
done
echo
