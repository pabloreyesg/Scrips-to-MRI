## Recomendaciones generales

Esta página pretende realizar una breve introducción a la manipulación y procesamiento de imágenes médicas, principalmente esta enfocada a neuroimagenes. La idea es poder brindar información sobre aspectos como conversión, anonimización, formato BIDS, y preprocesamiento de imágenes estructurales y funcionales. La página esta en continua actualización y espero ir corrigiendo los errores que vayan saliendo.

Existen algunas recomendaciones generales como sistemas operativos y hardware. Estas son mis recomendaciones que han surgido en mi experiencia. Es claro que no pretendo que se tomen como recomendaciones únicas o las mejores; pero son elementos que me han ayudado a comprender a procesar imágenes en estos años.  

- OS: Ubuntu / Debian

- Hardware mínimo: CPU i5 o i7, 8Gb en RAM y un disco duro de 1Tb.

Las maquinas virtuales en windows si bien pueden servir para aprender el funcionamiento, tienen un bajo rendimiento. WLS2 en windows permite ejecutar Ubuntu directamente, tiene algunas desventajas en rendimiento aun, pero es claro que la comunidad esta trabajando fuertemente en ello.

El procesamiento de neuroimágenes generalmente hace uso de manera intensiva de librerías, aplicaciones y programas en su mayoría con licencias Open. Ahora bien, con respecto a la pregunta inicial de qué sistema operativo usar mi recomendación es usar GNU/Linux principalmente de variantes Debian, bien puede ser Debian es su versión mas pura o variantes como Ubuntu, Ubuntu Mate, Pop o similares. Variantes basadas en arch tienen poco desarrollo en la comunidad así que requerirá de un mayor trabajo.

- MACOS: Es de aclarar que en MAC con chips tipo intel las aplicaciones corren muy bien; sin embargo, con el cambio a ARM con M1 algunas de las aplicaciones prototípicas son ahora emuladas y otras no lo hacen tan bien. En la siguiente página se ilustra una evaluación con diferentes programas: [Apple silicon for neuroimaging](https://github.com/neurolabusc/AppleSiliconForNeuroimaging), para que pueda tomar una mejor decisión.

Es importante resaltar que el procesamiento de neuroimágenes para estudios sencillos pueden ser abordados con computadoras comunes y de medianas o altas prestaciones. Sin embargo, si usted tiene acceso a HCP, clusters o similares muy posiblemente podrá abordar problemas de mayor complejidad computacional; tal vez este sea un futuro a mediano plazo en las neurociencias, donde por medio de interfaces web, usted accede a clusters de computadoras y envia su solicitud similar a la propuesta de [Brainlife.](https://brainlife.io)

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

- Conocer y usar la terminal (es pantalla negrita que poco se usa).

- Aprender a realizar scripts en bash.

- Conocimientos generales sobre cómo se adquieren y procesan imágenes médicas.

- Paciencia ya que algunos procesos son largos e incluso de varias horas.

- Tolerancia a la frustración porque un pequeño fallo como una coma o paréntesis mal puesto pueden acarrear tiempos de revisión que generalmente no se contemplan.

- Ser autodidacta, si bien existen manuales y guías que le ayudaran en el proceso es importante tener un gran sentido de búsqueda. Algunas respuestas estarán en foros, listas de correos  o en páginas web bien sea que esten actualizadas o no.

- Realice siempre los ejemplos que dan los programas y compare sus resultados con el esperado.

- No invente la rueda, las neuroimágenes son un campo con un alto desarrollo y permanente actualización; es posible que exista ya un toolbox, libreria o similar que contemple su propuesta. Siempre revise qué se ha hecho.

## ¿Dónde aprender?

Si usted desea realmente aprender cómo funcionan los análisis de neuroimágenes porque desea investigar en este tema, es altamente recomendable realizar un curso introductorio, aquí hay algunos ejemplos de cursos. No se limite a unicamente observar el curso, sino a replicar los métodos de análisis que se dan. La observación sin ejecución realmente no le servirá de mucho. 

- Principios de fMRI -1  [Youtube](https://www.youtube.com/channel/UC_BIby85hZmcItMrkAlc8eA)

- Principios de fMRI - 2 [Coursera](https://www.coursera.org/learn/functional-mri-2)

- Curso de FSL [FSL Course](https://open.win.ox.ac.uk/pages/fslcourse/website/)

- El Blog de Andy [Welcome to Andy’s Brain Book! ](https://andysbrainbook.readthedocs.io/en/latest/index.html)

- Cursos de SPM [London SPM Courses](https://www.fil.ion.ucl.ac.uk/spm/course/london/)

No tema preguntar en foros de discusión, aunque previamente revise si ya alguien hizo la misma pregunta (lo cual es muy probable).
