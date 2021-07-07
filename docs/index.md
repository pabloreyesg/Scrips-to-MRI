# DICOM y BIDS conversion

## Importación DICOM y anonimización


### PACS

- Usar Dicomcleaner de pixelmed
- Conectarse al PACS (servidor) HUSIPACS
- Buscar por cédula comenzando con *
- Realizar Query (Consultar)
- Darle a Retrieve (Recuperar)
- Hacer Clean (Limpiar) - Checar opciones de anonimización
- Export (Exportar): 
	- Con nombre como backup para pacientes
	- Anonimizado para investigación

### DVD CD USB

- Usar Dicomcleaner de pixelmed
- Insertar DVD o CD
- Importar carpeta (import)
- Hacer limpieza y anonimización (Clean) - Checar opciones de anonimización
- Exportar (Export) en dos formatos: 
	- Con nombre como backup para pacientes
	- Anonimizado para investigación

***Videotutorial***

[![Importación DICOM](http://img.youtube.com/vi/sTndWTDefVw/0.jpg)](http://www.youtube.com/watch?v=sTndWTDefVw "DICOM anoniminzation")
* * *
## BIDS conversion

### Requisitos
- ANACONDA
	- BIDScoin
	- dcm2niix

Toda la información y documentación se puede encontrar en el siguiente link

https://bidscoin.readthedocs.io/en/stable/

### Pasos 
1. Instalación de librerías

En windows

```console
pip install bidscoin
conda install -c conda-forge dcm2niix
```
En linux
```console
pip install bidscoin
apt install dcm2niix
```
3. Descomprimir archivos tar.gz o ZIP. Dependerá del sistema de compresión que se use para compartir el participante.
4. Organizar folders en version serie/folder
	1. Utilizar la opción de `-e .dcm` para que la extensión sea siempre en minúscula
```console
dicomsort [folder de paciente] -e .dcm
```
4. Renombrar carpeta con prefijo sub- y borrar folder DICOM y DICOMDIR
5. Generar el archivo yaml que será el template para todo el proyecto. Solo se genera un archivo para todo el proyecto teniendo en cuenta que solo si se cambian los valores de adquisición i.e el nombre de secuencia de T1TFE a T13dTFE se deberá cambiar este archivo yaml.

```console
bidsmapper rawfolder BIDSfolder 
```
El resultado es un archivo yaml

6. Con el archivo YAML creado es posible editarlo con `bidseditor` para adaptarlo al sitio del proyecto o institución. Tenga en cuenta que este archivo YAML solo servirá para su institución.
7. Editar el archivo YAML para renombrar y organizar los archivos que requiere su proyecto.
7.1 Para el siguiente ejemplo se tendran en cuenta 5 secuencias: T1, T2, SWI, fMRI, DTI
7.2 Inicie `bidseditor` para cambiar las especificaciones de YAML 
```console 
bidseditor BIDSfolder -b bidsmap.yaml
Example:
bidseditor BIDS -b BIDS\code\bidscoin\bidsmap.yaml
```