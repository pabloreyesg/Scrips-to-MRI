
# Standard Orientation
Some scanners and acquisition are non standard space (non RPI space, like LIP and stuff like that).
fslreorient2std

# Resample 
resample or resize with FSL, the normal resample uses trilinear which add an smooth over the images, in order to avoid this, I like nearestneighbour interpolation, the command inline to all images is:

for f in *; do flirt -in $f -ref $f -out r$f -applyisoxfm 1 -interp nearestneighbour; done

# N4bias
To correct low frequency intensity non-uniformity, Use ANTs

for f in *; do N4BiasFieldCorrection -d 3 -i $f -o n$f -v; done

# dcm2nii_conversions
Scripts to convert and reorder images
This page provides some script to manipulate dicom images.
