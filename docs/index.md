# ¿Por dónde comenzar?


## Recomendaciones generales

Esta página pretende realizar una breve introducción a la manipulación y procesamiento de imágenes médicas, principalmente esta enfocada a neuroimagenes. La idea es poder brindar información sobre aspectos como conversión, anonimización, formato BIDS, y preprocesamiento de imágenes estructurales y funcionales. La página esta en continua actualización y espero ir corrigiendo los errores que vayan saliendo.

Existen algunas recomendaciones generales como sistemas operativos y hardware. Estas son mis recomendaciones que han surgido en mi experiencia. Es claro que no pretendo que se tomen como recomendaciones únicas o las mejores; pero son elementos que me han ayudado a comprender a procesar imágenes en estos años.  

- OS: Ubuntu / Debian

- Hardware mínimo: CPU i5 o i7, 8Gb en RAM y un disco duro de 1Tb.

Las maquinas virtuales en windows si bien pueden servir para aprender el funcionamiento, tienen un bajo rendimiento. WLS2 en windows permite ejecutar Ubuntu directamente, tiene algunas desventajas en rendimiento aun, pero es claro que la comunidad esta trabajando fuertemente en ello.

El procesamiento de neuroimágenes generalmente hace uso de manera intensiva de librerías, aplicaciones y programas en su mayoría con licencias Open. Ahora bien, con respecto a la pregunta inicial de qué sistema operativo usar mi recomendación es usar GNU/Linux principalmente de variantes Debian, bien puede ser Debian es su versión mas pura o variantes como Ubuntu, Ubuntu Mate, Pop o similares. Variantes basadas en arch tienen poco desarrollo en la comunidad así que requerirá de un mayor trabajo.

- MACOS: Es de aclarar que en MAC con chips tipo intel las aplicaciones corren muy bien; sin embargo, con el cambio a ARM con M1 algunas de las aplicaciones prototípicas son ahora emuladas y otras no lo hacen tan bien. En la siguiente página se ilustra una evaluación con diferentes programas: [Apple silicon for neuroimaging](https://github.com/neurolabusc/AppleSiliconForNeuroimaging), para que pueda tomar una mejor decisión.

Es importante resaltar que el procesamiento de neuroimágenes para estudios sencillos pueden ser abordados con computadoras comunes y de medianas o altas prestaciones. Sin embargo, si usted tiene acceso a HCP, clusters o similares muy posiblemente podrá abordar problemas de mayor complejidad computacional; tal vez este sea un futuro a mediano plazo en las neurociencias, donde por medio de interfaces web, usted accede a clusters de computadoras y envía su solicitud similar a la propuesta de [Brainlife.](https://brainlife.io)

## Programas básicos

Antes de comenzar, es importante contar con un buen numero de programas instalados para poder manipular y procesar las imágenes.

Estos serían los programas indispensables:

- [FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki)

- [ANTs by stnava](http://stnava.github.io/ANTs/)

- [Python](https://www.python.org/)

- [Docker](https://docs.docker.com/engine/install/)

- [ITK-SNAP ](http://www.itksnap.org/pmwiki/pmwiki.php)

- [MRIcroGL: Tool/Resource Info](https://www.nitrc.org/projects/mricrogl/)

- [Weasis Medical Viewer](https://nroduit.github.io/en/)

- Repositorio [Debian Neuroscience Package Repository](https://neuro.debian.net/) (tiene algunas versiones desactualizadas, pero es una excelente opción)

- [dcm2niix](https://github.com/rordenlab/dcm2niix)

Existe un paquete ampliamente usado y es [SPM](https://www.fil.ion.ucl.ac.uk/spm/). Este paquete es realmente excelente; sin embargo, requiere de Matlab para funcionar, el cual requiere de licencia; menciono esto como limitación dado que en Latinoamérica no todas las universidades o centros de investigación tienen opciones de comprar licencias para investigación de Matlab. Una opción ante esta dificultad es la versión standalone aunque tiene algunas restricciones como la dificultad de instalar nuevos paquetes o *toolboxes*. Cabe anotar que si en su universidad existe Matlab SPM es una de las mejores herramientas.

## Competencias básicas

Si desea tener una introducción a neuroimágenes que sea mas fluida existen un conjunto de competencias que le serán de mucha utilidad

- Aprender a usar Linux (puede usar cualquier tutorial básico de Youtube para esto)

- Conocer y usar la terminal (al principio cuesta, pero luego se disfruta enormemente).

- Aprender a realizar scripts en bash.

- Conocimientos generales sobre cómo se adquieren y procesan imágenes médicas.

- Paciencia, ya que algunos procesos son largos e incluso de varias horas.

- Tolerancia a la frustración porque un pequeño fallo como una coma o paréntesis mal puesto pueden acarrear tiempos de revisión que generalmente no se contemplan.

- Ser autodidacta, si bien existen manuales y guías que le ayudaran en el proceso, es importante tener un gran sentido de búsqueda. Algunas respuestas estarán en foros, listas de correos  o en páginas web bien sea que estén actualizadas o no.

- Realice siempre los ejemplos que dan los programas y compare sus resultados con el esperado.

- No invente la rueda, las neuroimágenes son un campo con un alto desarrollo y permanente actualización; es posible que exista ya un toolbox, librería o similar que contemple su propuesta. Siempre revise qué se ha hecho.

## Contenedores
Dado que la instalación y compilación de algunos paquetes requiere de una buena cantidad de tiempo; se ha comenzado a usar el sistema de contenedores para poder tener todas las librerías de manera rápida. Existen dos tipos de contenedores ampliamente usados [Docker](https://docs.docker.com/get-docker/) y Singularity; siendo Docker el mas usado. Una de las ventajas de Docker es que permite el despliegue de un gran conjunto de herramientas en poco pasos. [Neurodocker](https://www.repronim.org/neurodocker/); es uno de los mejores ejemplos de esta propuesta. Igualmente si usted se adhiere a la propuesta BIDS; existen un conjunto de [apps](https://bids-apps.neuroimaging.io/) para Docker que funcionan directamente con BIDS y le permiten por ejemplo; control de calidad, grosor cortical, análisis funcionales o de conectividad entre muchos otros. Le recomendaría iniciar de manera sencilla con programas como SPM y FSL y una vez tenga mas conocimientos de los flujos de procesamiento se pase a contenedores docker sobretodo si va analizar masivamente datos.

## ¿Dónde aprender?

Si usted desea realmente aprender cómo funcionan los análisis de neuroimágenes porque desea investigar en este tema, es altamente recomendable realizar un curso introductorio, aquí hay algunos ejemplos de cursos. No se limite a unicamente observar el curso, sino a replicar los métodos de análisis que se dan. La observación sin ejecución realmente no le servirá de mucho.

- Principios de fMRI -1  [Youtube](https://www.youtube.com/channel/UC_BIby85hZmcItMrkAlc8eA)

- Principios de fMRI - 2 [Coursera](https://www.coursera.org/learn/functional-mri-2)

- Curso de FSL [FSL Course](https://open.win.ox.ac.uk/pages/fslcourse/website/)

- El Blog de Andy [Welcome to Andy’s Brain Book! ](https://andysbrainbook.readthedocs.io/en/latest/index.html)

- Cursos de SPM [London SPM Courses](https://www.fil.ion.ucl.ac.uk/spm/course/london/)

No tema preguntar en foros de discusión, aunque previamente revise si ya alguien hizo la misma pregunta (lo cual es muy probable).

## Visualizadores
**Dicom**

La imágenes salen del scanner en formato DICOM, este formato si bien es útil para transmitir imágenes convservando detalles del paciente y de la máquina; tienen serios problemas para ser manipulados en ambientes de investigación. En general para análisis de neuroimágenes se prefiere covertir estos archivos dicom a NIFTI.

1. <a href="https://www.osirix-viewer.com">Osirix</a> : Visor médico con amplias funcionalidades de imágenes DICOM, solo funciona sobre MAC.
2. <a href="https://nroduit.github.io/en/">Weasis</a> : Visor médico de acceso libre.

**NifTI**
Existen multiples programas que permiten visualizar imágenes NIFTI, algunos de ellos estan para MATLAB, Python o pueden funcionar de manera independiente.

1. <a href="http://www.itksnap.org/pmwiki/pmwiki.php">ITK-Snap</a> : Visualiza imágenes en diferentes formatos, tanto NIFTI como otras un poco mas antiguas como HDR/IMG, y formatos VTK. Una de sus principales ventajas es la posibilidad de sobreponer máscaras, asi como también realizar segmentaciones de regiones de manera manual o semiautomática.
2. <a href="https://www.mccauslandcenter.sc.edu/mricrogl/">MRIcroGL</a> : Similar al anterior pero enfocado en renderización (3D), también permite sobreponer máscaras y realizar segmentaciones de manera manual.
3. <a href="http://ric.uthscsa.edu/mango/papaya.html">Papaya</a> : Se trata de un visor basado en JavaScript que permite convertir a otros formatos e incluye algunas formas de preanálisis básicas como segmentación de cráneo.

## Paquetes principales de análisis
El análisis de neuroimágenes conlleva al menos tres pasos: 1) preprocesamiento, 2) procesamiento, 3) análisis estadístico. Según el tipo de imagen y software seleccionado se pueden plantear pasos adicionales.

**Imágenes estructurales**
Los tipos de análisis sobre imágenes estructurales dependen del objetivo del estudio.

**T1 y T2**
1. Segmentación (delimitar una región)
2. Estimación de grosor cortical
3. Comparación de grupos
4. Comparación de casos vs grupo


**Principales paquetes de análisis**

| Software        | Estructural          | Funcional |  Difusión |  OS|
|:-------------|:------------------|:------|:--------- |:---|
| FSL           | SI | SI  | SI | Mac, Linux|
| SPM | SI   | SI  | SI | Matlab |
| AFNI           | NO      | SI  |NO | Mac,Linux|
| Freesurfer   | SI | SI  | SI | Mac, Linux |
| ANTs | SI | SI | SI | Mac, Linux |
| CAMINO | NO | NO | SI | Linux |
| TrackVis |  NO | NO | SI | Linux |
| MRtrix |  NO | NO | SI | Linux, R |


**Apoya mi trabajo**
Si deseas apoyar mi trabajo o tener alguna asesoria extra puedes hacerlo en el siguiente link:

<a href="https://www.buymeacoffee.com/pabloreyesg" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
