## Recomendaciones generales

Esta página pretende realizar una breve introducción a la manipulación y procesamiento de imágenes médicas, principalmente esta enfocada a neuroimagenes. La idea es poder brindar información sobre aspectos como conversión, anonimización, formato BIDS, y preprocesamiento de imágenes estructurales y funcionales. La página esta en continua actualización y espero ir corrigiendo los errores que vayan saliendo.

Existen algunas recomendaciones generales como sistemas operativos y hardware. Estas son mis recomendaciones que han surgido en mi experiencia. Es claro que no pretendo que se tomen como recomendaciones únicas o las mejores; pero son elementos que me han ayudado a comprender a procesar imágenes en estos años.  

- OS: Ubuntu / Debian

- Hardware mínimo: CPU i5 o i7, 8Gb en RAM y un disco duro de 1Tb.

Las maquinas virtuales en windows si bien pueden servir para aprender el funcionamiento, tienen un bajo rendimiento. WLS2 en windows permite ejecutar Ubuntu directamente, tiene algunas desventajas en rendimiento aun, pero es claro que la comunidad esta trabajando fuertemente en ello.

El procesamiento de neuroimágenes generalmente hace uso de manera intensiva de librerías, aplicaciones y programas en su mayoría con licencias Open. Ahora bien, con respecto a la pregunta inicial de qué sistema operativo usar mi recomendación es usar GNU/Linux principalmente de variantes Debian, bien puede ser Debian es su versión mas pura o variantes como Ubuntu, Ubuntu Mate, Pop o similares. Variantes basadas en arch tienen poco desarrollo en la comunidad así que requerirá de un mayor trabajo.

- MACOS: Es de aclarar que en MAC con chips tipo intel las aplicaciones corren muy bien; sin embargo, con el cambio a ARM con M1 algunas de las aplicaciones prototípicas son ahora emuladas y otras no lo hacen tan bien. En la siguiente página se ilustra una evaluación con diferentes programas: [Apple silicon for neuroimaging](https://github.com/neurolabusc/AppleSiliconForNeuroimaging), para que pueda tomar una mejor decisión.

## Programas básicos

- [FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki)

- [ANTs by stnava](http://stnava.github.io/ANTs/)

- [Python](https://www.python.org/)

- [ITK-SNAP ](http://www.itksnap.org/pmwiki/pmwiki.php)

- [MRIcroGL: Tool/Resource Info](https://www.nitrc.org/projects/mricrogl/)

- Repositorio [Debian Neuroscience Package Repository](https://neuro.debian.net/) (tiene algunas versiones desactualizadas en paquetes)

- [dcm2niix](https://github.com/rordenlab/dcm2niix)

## Competencias básicas

Si desea tener una introducción a neuroimágenes que sea mas fluida existen un conjunto de competencias que le serán de mucha utilidad

- Conocer y usar la terminal (es pantalla negrita que poco se usa).

- Aprender a realizar scripts en bash.

- Conocimientos generales sobre cómo se adquieren y procesan imágenes médicas.

- Paciencia ya que algunos procesos son largos e incluso de varias horas.

- Tolerancia a la frustración porque un pequeño fallo como una coma o paréntesis mal puesto pueden acarrear tiempos de revisión que generalmente no se contemplan.
