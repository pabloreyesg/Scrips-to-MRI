# Primeros pasos
Posterior a la conversión en algunos casos se requieren cambios adicionales que trataremos en este apartado y que son:

 - Orientación estándar de las neuroimágenes.
 - Remuestreo

## Cambiar orientación
La orientación en neuroimágenes tiene se llama RPI radiológica, y LPI neurológica

 - Right - Posterior - Inferior RPI : "Las imágenes se ven como si miraran hacia arriba desde los pies del sujeto".
 - Left - Posterior - Inferior : "Las imágenes se ven como si se mirara desde la parte superior de la cabeza hacia abajo".

Con FSL se puede usar el siguiente script para reorientar todas las imágenes dentro de una carpeta.

```
for f in *; do fslreorient2std $f r$f ; done
```


## Cambiar el tamaño del voxel
Las neuroimágenes ocasionalmente requieren ser transformadas; es decir, cambiar el tamaño del voxel de 0.5mm a 1mm; en este punto hay que tener en cuenta que la transformación requiere un proceso adicional que es la interpolación. FSL ofrece varios tipos de interpolación mi recomendada es **nearestneighbour** dado que preserva la mayor cantidad de información posible y no introduce el suavizado típico de convoluciones gaussianas.

Con el siguiente script usted podrá remuestrear todas las imágenes de una carpeta al tamaño deseado en este caso usaremos 1, que alude a voxeles isométricos de 1mm.

Ahora bien, tenga en cuenta que es mejor pasar de una resolución alta a una baja. En caso contrario es mejor usar algoritmos de superresolucion.

```
for f in *; do flirt -in $f -ref $f -out r$f -applyisoxfm 1 -interp nearestneighbour; done
```
