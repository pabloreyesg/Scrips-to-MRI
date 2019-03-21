
#Resample or resize with FSL, the normal resample uses trilinear which add an smooth over the images, in order to avoid this, I like nearestneighbour interpolation, the command inline to all images is:

for f in s*; do flirt -in $f -ref $f -out r$f -applyisoxfm 1 -interp nearestneighbour; done


# dcm2nii_conversions
Scripts to convert and reorder images
This page provides some script to manipulate dicom images.
