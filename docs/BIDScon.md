## BIDS conversion
Posterior a la anonimizazión es recomendable realizar una conversión a versiones NIFTI. Existen amplias herramientas para realizar esta conversión como dcm2nii, mricronGL, SPM entre otros que se vieron en el anterior apartado. Sin embargo, es recomendable utilizar el formato estandar [BIDS](https://bids.neuroimaging.io) que incluye no solo la conversión a formatos NIFTI sino una estructura estandar de etiquetación para los nombres de archivos.
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
	- dicomsort (instalado con BIDScoin)
	- dicomsorter (en caso de fallos con disomsort)

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

 - Genere dos folders uno para las imagenes RAW y otro para las imagenes BIDS. 
 - Descomprimir archivos tar.gz o ZIP en el folder RAW. Dependerá del sistema de compresión que se use para compartir el participante.
 - Organizar folders en version serie/folder

```console
## pip install dicomsort 
dicomsort [folder de paciente]
## Example
dicomsort original
## los archivos ordenados quedaran dentro de la misma carpeta de entrada
```
---

Dicomsort requiere pydicom por encima de la versión 2. En Linux pueden ocurrir errores por la versión de pydicom. Si estos errores persisten use dicomsorter que es un paquete similar y mucho mas robusto. Dicomsorter no hace parte de las librerías instaladas por BIDScoin y por ello se debe 

```console
pip install dicomsorter
dicomsorter [folderin] [foldersalida]
## Example
mkdir sub-001
dicomsorter original sub-001
## los archivos ordenados quedarán en sub001
```

---

![sorting](img/sorting.png)

 - Si ha usado `dicomsort` se requiere renombrar la carpeta original con prefijo **sub-** y borrar el folder DICOM y DICOMDIR. Si ha usado `dicomsorter` el ordenamiento ha requerido un carpeta de salida.
 - Para que `bidscoin` funcione sobre la carpeta raw, ésta debe contener al menos una subcarpeta que comience con **sub-** sino se haya una subcarpeta **sub-xxx** el sistema parará. En formatos **BIDS** los sujetos comienzan siempre con el prefijo **sub-**. Este paso se requiere para todos los casos.
 - El siguiente paso solo requiere ser hecho una vez y es la generación del archivo yaml que será el template para todo el proyecto. Solo si se cambian los valores de adquisición i.e el nombre de secuencia de T1TFE a T13dTFE se deberá cambiar este archivo yaml. Para poder hacer un archivo template se requiere usar `bisdmapper`, el cual a partir del archivo dicom buscará los nombres de las series y les asignará un nuevo nombre en formato BIDS.


```console
bidsmapper rawfolder BIDSfolder 
## example
bidsmapper raw BIDS
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

