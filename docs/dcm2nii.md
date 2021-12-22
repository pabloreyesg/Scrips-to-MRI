# Conversion DICOM a NIFTI

Las imágenes dicom generalmente requieren para su manipulación en sistemas como SPM, FSL, AFNI, 3dSlicer y similares una conversión a archivos NIFTI. Para esto se puede utilizar varios programas que le permitirán realizar tal conversión.

- [dcm2nii](https://www.nitrc.org/projects/dcm2nii/), es la librería mas antigua que permite convertir archivos dicom a nifti bien sea sin comprimir o con compresiópn tipo gz.
- [dcm2niigui](https://people.cas.sc.edu/rorden/mricron/dcm2nii.html), interfaz gráfica de dcm2nii.
- [MRI convert](https://lcni.uoregon.edu/downloads/mriconvert), otra interfaz gráfica de dcm2nii
- [dcm2niix](https://github.com/rordenlab/dcm2niix), es el reemplazo actualizado de dcm2nii y cumple las mismas funciones adicionalmente esta disponible en python
- [MRIcroGL](https://www.mccauslandcenter.sc.edu/mricrogl/home), visualizador de imágenes que incluye el paquete dcm2niix

Aquí se exponen algunos videos sobre la utilización de dcm2nii y mricroGL para la conversión de archivos dicom. Cabe aclarar que no se menciona la conversión bajo parámetros BIDS, lo cual es la siguiente sección

Uso de dcm2nii. Se aclara que la librería se ha actualizado, sin embargo los desarrolladores de dcm2niix mencionan que ésta aun se encuentra en desarrollo, algunos deficiencias se observan principalmente en la conversión de archivos dicom provenientes de equipos Philips.

## DCM2NII

***Video tutorial sobre uso de dcm2nii (versión obsoleta)***

<!-- blank line -->

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/F_cskbDONr0" width="100%" height="310" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

---

NOTA Teniendo en cuenta que dcm2nii es obsoleta se prefiere usar dcm2niix. Solo en casos específicos como en casos de dificultad de reconstrucción es posible usar dcm2nii.

---

## MRIcroGL

***Video tutorial sobre uso de MRIcroGL que usa dcm2niix***

<!-- blank line -->

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/UlPMdeaY9wY" width="100%" height="310" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->
