## BIDS conversion
Posterior a la anonimizazión es recomendable realizar una conversión a versiones NIFTI. Existen amplaias herramientas para realizar esta conversión como dcm2nii, mricronGL, SPM entre otros. Sin embargo, es recomendable utilizar el formato estandar BIDS que incluye no solo la conversión a formatos NIFTI sino una estructura estandar de etiquetación para los nombres de archivos.
La conversión a formatos BIDS requiere la elaboración de una plantilla inicial que se aplicará a todos los estudios. Exisaten pocos programas que tengan interfaz gráfica para la conversion BIDS. [BIDScoin](https://bidscoin.readthedocs.io/en/stable/) es una herramienta en python que presenta algunas intefaces gráficas que permiten un manejo ágil.

Toda la información sobre la instalación y uso se puede encontrar en la siguiente página.
[https://bidscoin.readthedocs.io/en/stable/](https://bidscoin.readthedocs.io/en/stable/)

Para el siguiente tutorial se ejemplificará el uso de BIDScoin
En la figura se ilustra un ejemplo de un archivo DICOM a un archivo BIDS

![Bids Format](img/bidsformat.png)

### Requisitos (en windows)

- ANACONDA
	- BIDScoin
	- dcm2niix

### Pasos 

 - Instalación de librerías

En windows por medio de la consola de ANACONDA (prompt)

```console
pip install bidscoin
conda install -c conda-forge dcm2niix
```
En linux

```console
pip install bidscoin
apt install dcm2niix
```

 - Descomprimir archivos tar.gz o ZIP. Dependerá del sistema de compresión que se use para compartir el participante.
 - Organizar folders en version serie/folder
	- Utilizar la opción de `-e .dcm` para que la extensión sea siempre en minúscula
```console
dicomsort [folder de paciente] -e .dcm
```
 - Renombrar carpeta con prefijo sub- y borrar folder DICOM y DICOMDIR
 - Generar el archivo yaml que será el template para todo el proyecto. Solo se genera un archivo para todo el proyecto teniendo en cuenta que solo si se cambian los valores de adquisición i.e el nombre de secuencia de T1TFE a T13dTFE se deberá cambiar este archivo yaml.


```console
bidsmapper rawfolder BIDSfolder 
```

El resultado es un archivo yaml que si bien podria editarlo con un notepad, lo recomendable es usar el aplicativo BIDSeditor

 - Con el archivo YAML creado es posible editarlo con `bidseditor` para adaptarlo al sitio del proyecto o institución. Tenga en cuenta que este archivo YAML solo servirá para su institución.
 - Editar el archivo YAML para renombrar y organizar los archivos que requiere su proyecto.
   - Para el siguiente ejemplo se tendran en cuenta 5 secuencias: T1, T2, SWI, fMRI, DTI
   - Inicie `bidseditor` para cambiar las especificaciones de YAML 
   
```console 
bidseditor BIDSfolder -b bidsmap.yaml
Example:
bidseditor BIDS -b BIDS\code\bidscoin\bidsmap.yaml
```

![editor](img/bidscoin_editor.png)

