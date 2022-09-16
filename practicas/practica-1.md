Práctica 1. Introducción a software SIG y lenguajes de programación de
código abierto (QGIS R + Python)
================
José Ramón Martínez Batlle
30-08-2022

# Fecha de entrega

-   18 de septiembre de 2022

# Introducción

En biogeografía, dos herramientas son fundamentales:

1.  Las aplicaciones y lenguajes de programación con capacidades de
    sistemas de información geográfica (SIG). Los usamos para analizar
    espacialmente la distribución de nuestros datos.

2.  Las técnicas estadísticas y el análisis espacial para resolver
    problemas de ecología numérica y análisis de biodiversidad.

Me propongo ofrecerte una introducción a ambas herramientas en esta
materia. Concretamente, en esta práctica, voy a introducir el punto 1,
aplicaciones y lenguajes con capacidades SIG. El punto 2 no lo verás en
esta práctica, pero lo desarrollarás en las siguientes.

Desde su origen en el siglo pasado (sin considerar momentáneamente los
orígenes de la cartografía), los sistemas de información geográfica
(SIG) han experimentado una densa evolución. Diría que la confusión más
común entre usuarios ha sido el asociar SIG con el software que nos dan
acceso a ellos propiamente. Aunque el software es una pieza (importante)
de los SIG, no es lo único ni lo que los define, puesto que también se
incluyen los usuarios, los datos y modelos, el hardware, las fuentes,
entre otros elementos (Olaya, 2020).

Lo que hoy conocemos como software SIG está en crisis. La irrupción del
software como servicio en el mercado, ha provocado que muchas
aplicaciones se ofrezcan alternativa o únicamente en la nube, relegando
así la tradicional aplicación de escritorio o ejecutada localmente en la
consola. Trabajar en la nube tiene muchas ventajas, una de las más
importantes es que se reduce el riesgo de fallos en la aplicación (o al
menos se pueden corregir con mayor facilidad) y se elimina la necesidad
de una instalación previa (el “infierno de dependencias” desaparece).
También, las aplicaciones en la nube, ofrecen la posibilidad de conectar
con grandes y diversas bases de datos grandes (“*big data*”). Entre las
desventajas, las más importante es que, como usuarios, perdemos
libertad, puesto que cada vez estamos más atados a la nube para hacer
nuestro trabajo, y dependemos más de la voluntad de los proveedores.
Asimismo, estos servicios en la nube terminan convirtiéndose en una
cuota mensual más que se añade a nuestra factura.

Mientras nos preparamos para ese “promisorio futuro,” todavía tenemos la
posibilidad de hacer análisis en la PC propia. Así que, ¡adelante!

En esta práctica, instalarás y probarás una aplicación SIG con interfaz
gráfica (QGIS) y dos lenguajes de programación con capacidades SIG y de
ecología numérica (R y Python). Comenzar desde lo básico, instalando,
parecería algo rutinario y simple. No obstante, instalar software puede
ser desafiante y, por tal razón, te asigno puntuación por el simple
hecho de lograrlo adecuadamente. Una vez los instales, realizarás
operaciones sencillas, tanto con QGIS como con R y Python.

# Objetivos de aprendizaje

Al terminar esta práctica deberías ser capaz de:

-   Instalar y poner en marcha software y lenguajes de programación para
    SIG y ecología numérica en una PC.

-   Cargar una capa de prueba.

# Lecturas previas recomendadas, preparación, recursos disponibles

-   Olaya (2020), páginas 1-28 de la versión PDF. En el [Drive de la
    asignatura](https://drive.google.com/drive/folders/1orlvmg86kad08FznStkmYaesxaTbzAQD?usp=sharing),
    bajo el nombre “OLAYA-Sistemas-de-Informacion-Geografica.pdf.”

-   QGIS Development Team (2022). En el [Drive de la
    asignatura](https://drive.google.com/drive/folders/1orlvmg86kad08FznStkmYaesxaTbzAQD?usp=sharing),
    bajo el nombre
    “QGIS-Guia-de-usuario-version-escritorio-de-QGIS-3.22.pdf.”

-   Wickham & Grolemund (2019). Capítulos 1 a 7. Ver vínculo en
    [Referencias](#referencias)

-   Martínez-Batlle (2022). Específicamente, leer el tutorial
    “Introducción a R, simple features y análisis exploratorio de datos
    espaciales (ESDA)” (vínculo en [Referencias](#referencias)).

-   Demostraciones en aula.

# Informe

Entregarás tu informe en formato PDF, el cual podrás elaborar con tu
procesador de texto favorito (por ejemplo, LibreOffice Writer, LaTeX,
Word) o mediante entornos de desarrollo integrado (e.g. Atom, Visual
Studio Code, Jupyter Notebooks, RMarkdown-RStudio). Características del
documento:

-   Número máximo de páginas: 10.

-   En la primera página, deberás incluir nombre, matrícula, asignatura,
    nombre de la práctica, fecha.

-   Para evitar la proliferación de tipografías y formatos, debes usar
    estilos, para lo cual te recomiendo utilizar plantillas. Hay muchos
    recursos en la web sobre cómo usar estilos (término de búsqueda
    recomendado: estilos en procesadores de texto).

-   Debes incluir tu código informático en las respuestas de los
    ejercicios donde uses lenguajes de programación (e.g. R, Python). El
    código debe ser incluido como texto, no como imagen.

-   Realiza doble revisión de ortografía y gramática.

-   Las páginas deben estar numeradas secuencialmente.

-   Si aplica, incluir ilustraciones y tablas de apoyo (a ambas debes
    incluirles título, “*caption*”), así como lista de referencias
    bibliográficas.

-   Puedes usar un apéndice para incluir información complementaria que
    no te quepa en las 10 páginas centrales.

-   Podré solicitar los archivos fuente empleados para elaborar el PDF y
    los resultados intermedios generados en cada ejercicio.

# Criterios de evaluación

| Concepto                                                                                                                                                             | Porcentaje |
|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------|
| Instalación adecuada de aplicaciones y lenguajes de programación. Si decides usar aplicaciones en la nube, sólo se evaluarán los dos restantes sobre la base de 100% | 30%        |
| Redacción, que incluye organización de las ideas, gramática, ortografía                                                                                              | 40%        |
| Presentación, que incluye uso apropiado de estilos, tablas y figuras (legibilidad, uso de *caption*), numeración de páginas                                          | 30%        |

# Ejercicios

## Ejercicio 1. Instala y prueba QGIS, R + RStudio y Python

En este ejercicio demostrarás que sabes instalar y poner en marcha una
aplicación y dos lenguajes de programación útiles en SIG. Con ellos,
cargarás una capa vectorial sólo para probar las instalaciones. Instalar
software en tu PC es, probablemente, una tarea que realizarás poco en el
futuro, puesto que el software en la nube se está convirtiendo en
estándar. Sin embargo, instalar aplicaciones localmente siempre será
necesario, sobre todo si tu trabajo es muy especializado. Las
aplicaciones QGIS, así como los lenguajes R (con su IDE RStudio) y
Python, ofrecen muchas funcionalidades de SIG que no encontrarás en otro
software.

Instalar las aplicaciones localmente (en tu PC) tiene como principal
ventaja el que no necesitas entornos intermediarios entre las
aplicaciones y tu escritorio (no necesitas Internet). Por otra parte, la
desventaja más común es que podrían no satisfacerse todas las
dependencias en tu PC.

> IMPORTANTE. Nunca instales software de fuentes no seguras. Identifica
> en cada caso el sitio web del proveedor de la aplicación o del
> lenguaje que vayas a instalar. Si tienes dudas, escríbeme.

No obstante, ten presente que existen al menos tres opciones distintas
para instalar o usar software SIG (al menos algunos de ellos), y que son
alternativas válidad también.

1.  Instalar una máquina virtual, a la cual le instalarías las
    aplicaciones, o elegirías una que ya los tenga (por ejemplo,
    OSGeoLive). Ventaja: no tendrías que preocuparte por dependencias.
    Desventaja: tendrías que habilitar la virtualización en tu PC,
    instalar un gestor de máquinas virtuales (e.g. Oracle Virtual Box) y
    familiarizarte con dicha tecnología.

2.  Instalar contenedores Docker ya preconfigurados con las
    aplicaciones. Ventaja: no tendrías que preocuparte por dependencias.
    Desventaja: tendrías que instalar Docker y familizarizarte con esa
    tecnología.

3.  Usar servicios en la nube. No instalas aplicaciones ni lenguajes,
    simplemente usas el navegador para conectarte al servicio en
    cuestión. Ventajas: cero instalación. Desventajas: necesitas
    conexión a internet estable, no todos los flujos de trabajo se
    pueden realizar con estos servicios y no todas las aplicaciones se
    ofrecen en línea.

De todas formas, para este práctica, asumiré que usas software instalado
localmente y en tu PC física, es decir, sin virtualizaciones ni
servicios en la nube.

### 1A. Instala y prueba QGIS

> Capas asignadas. Nota: el símbolo “/” separa subdirectorios. La ruta
> de partida, es decir, lo que está antes de `data` es la raíz de este
> repo.

<table>
<thead>
<tr>
<th style="text-align:left;">
Nombre completo
</th>
<th style="text-align:left;">
e1
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Isaac De La Rosa Caraballo
</td>
<td style="text-align:left;">
data/d001/VJQg5DHG.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Jael Javier Olivares
</td>
<td style="text-align:left;">
data/d001/cQeZ7aMQ.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Yokaira Mariel Ramírez Peña
</td>
<td style="text-align:left;">
data/d001/3GOprcmM.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Yoel Pérez Adames
</td>
<td style="text-align:left;">
data/d001/PhpElMX5.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Abel Giordano Otañez Peña
</td>
<td style="text-align:left;">
data/d001/AtQkpxgV.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Aironeli Fabian Vallejo
</td>
<td style="text-align:left;">
data/d001/HE0jF91U.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Melany Hernández Portes
</td>
<td style="text-align:left;">
data/d001/6nLwFTBa.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Ana Mercedes De La Cruz Martinez
</td>
<td style="text-align:left;">
data/d001/SSOV17TO.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Leandra Elizabeth Marte Feliz
</td>
<td style="text-align:left;">
data/d001/plZR5D4X.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Marian De Leon
</td>
<td style="text-align:left;">
data/d001/dW2XNxFC.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Miranda Diaz Hernandez
</td>
<td style="text-align:left;">
data/d001/rSDcC1nH.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Yenny Mabel Santana
</td>
<td style="text-align:left;">
data/d001/AAUiaWNp.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Miguel Landestoy Tejeda
</td>
<td style="text-align:left;">
data/d001/FXk1L3MP.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Yesirenia Ramírez
</td>
<td style="text-align:left;">
data/d001/utyTgQmq.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Rosively Casilla Diaz
</td>
<td style="text-align:left;">
data/d001/BWhuGnch.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Jorge David Mustonen Peña
</td>
<td style="text-align:left;">
data/d001/6KKZCDdL.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Gladys Maite Santana Apolito
</td>
<td style="text-align:left;">
data/d001/rwt2lEJH.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Lewis Jose Cueto Montero
</td>
<td style="text-align:left;">
data/d001/ir6YeE4v.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Saderis Carmona Marte
</td>
<td style="text-align:left;">
data/d001/9oPb4usC.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Marcos Cabrera Parra
</td>
<td style="text-align:left;">
data/d001/49KB9Iw6.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Wilson Rosario R
</td>
<td style="text-align:left;">
data/d001/iWPPlGly.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
José Ramón Martínez Batlle
</td>
<td style="text-align:left;">
data/d001/faYlkhzS.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Adalberto Martinez Ramos
</td>
<td style="text-align:left;">
data/d001/7ETLK7QT.gpkg
</td>
</tr>
<tr>
<td style="text-align:left;">
Gregorio Rivas
</td>
<td style="text-align:left;">
data/d001/WcsgiB44.gpkg
</td>
</tr>
</tbody>
</table>

1.  Para mantener el orden de archivos, te recomiendo que crees una
    carpeta, por ejemplo `practica1` dentro de “Mis Documentos,” donde
    colocarás tu informe entregable y copiarás los datos fuente (por
    ejemplo, puedes clonar este repo completo allí). En dicha carpeta,
    también alojarás los proyectos de R y Python de los incisos
    siguientes.

2.  Instala QGIS. Prefiere la versión más reciente (la 3.26 cuando
    escribí esta práctica).
    [Este](https://www.youtube.com/watch?v=7aK1nT7iBlc) tutorial podría
    servirte.

3.  Carga la capa vectorial asignada.

4.  Añade fuentes de referencia, como OpenStreetMap, GoogleSatellite,
    Bing Maps. Te será de utilidad el plugin QuickMapServices.

5.  Captura la pantalla y pégala en tu informe.

6.  Pregunta, reflexión.

    1.  Sobre el proceso de instalación. Descríbelo.

    2.  Sobre la capa: descríbela y explica qué representa en el
        contexto territorial donde se encuentra, y escribe cuál crees
        que es la fuente de esta capa.

### 1B. Instala y prueba R y RStudio

> Capas asignadas: las mismas que en 1A. Tal como indiqué arriba, no
> olvides incluir el código que emplees en las respuestas.

1.  Instala R, RStudio.
    [Este](https://www.youtube.com/watch?v=_2sewGCA0y4) tutorial podría
    servirte.

2.  Inicia de R o de RStudio, instala el paquete `sf`.

3.  Carga la capa vectorial asignada y represéntala.

4.  Captura la pantalla y pégala en tu informe.

5.  Pregunta, reflexión. ¿Qué fortalezas entiendes que tiene R+RStudio?

### 1C. Instala y prueba Python mediante Conda

> Capas asignadas: las mismas que en 1A. Tal como indiqué arriba, no
> olvides incluir el código que emplees en las respuestas.

1.  En Windows, Conda ofrece la alternativa idónea para instalar Python3
    con un único instalador. Recomiendo Miniconda, que ocupa poco
    espacio y garanntiza que las dependencias se satisfagan. Al
    finalizar, instala los paquetes requeridos para esta práctica (si
    usas Linux, sigue los pasos descritos en [este
    script](crear_activar_entorno_virtual.sh)). El proceso seguirá los
    siguientes pasos:

-   Instala Miniconda, visita la [web de
    Conda](https://docs.conda.io/en/latest/) y localiza el instalador.
    En septiembre de 2022, la página de descargas de distintas versiones
    de Python3 y arquitecturas, se encontraba
    [aquí](https://docs.conda.io/en/latest/miniconda.html) y [este era
    el link de
    descarga](https://repo.anaconda.com/miniconda/Miniconda3-py39_4.12.0-Windows-x86_64.exe)
    del instalador de Miniconda Python 3.9 para Windows (versión más
    reciente). Instala sólo para ti (`Just for me`), y NO marques la
    opción `Add to path`.

-   Abre una ventana del Anaconda Prompt, escribiendo en la barra de
    búsquedas (estará disponible en el Menú Inicio). Esta ventana se
    abrirá en `C:\Users\NOMBREDEUSUARIO`, donde `NOMBREDEUSUARIO` es un
    comodín que significa “tu nombre de usuario.”

-   Crea un entorno virtual, con el nombre que desees, por ejemplo
    `mientorno` (que no comience por números, y que no tengas caracteres
    especiales ni espacios). Para crearlo, en el Anaconda Prompt,
    ejecuta la sentencia `conda create --name mientorno`

-   Activa tu entorno con `conda activate mientorno`. Si todo va bien,
    el nombre de tu entorno aparecerá entre paréntesis tal que
    `(mientorno)` al inicio del Anaconda Prompt.

-   Instala Geopandas, Geoplot, Jupyterlab y todas sus dependencias
    ejecutando, en el Anaconda Prompt, la sentencia
    `conda install -c conda-forge python=3.9 fiona shapely rasterio pyproj pandas jupyterlab geopandas geoplot`

-   Si todo va bien, prueba que Jupyter funciona ejecutando la sentencia
    `jupyter notebook` en el Anaconda Prompt. Esto abrirá una ventana
    del navegador en la ruta `http://localhost:8888`; si no se abre
    automáticamente, navega a esa dirección. En Jupyter podrás realizar
    la práctica con comodidad.

> Para prácticas futuras que requieran de Geopandas y Geoplot, tendrás
> que ejecutar estas dos sentencias **en el Anaconda Prompt**:

> `conda activate mientorno`

> `jupyter notebook`

2.  Localiza tu capa asignada en GitHub y descárgala. Asegúrate de saber
    dónde la guardaste y con qué nombre. Deberías poderla localizar en
    el servidor Jupyter.

3.  Localiza y descarga [este](mapa_de_mi_capa.ipynb) cuaderno de
    Jupyter, adaptándolo a tu capa asignada (la ruta deberás escribirla
    dentro de la función de lectura `gpd.read_file('')`, por ejemplo
    `gpd.read_file('Downloads/TUCAPA.gpkg')`. IMPORTANTE: Windows
    probablemente le cambie la extensión al cuaderno de Jupyter (por
    ejemplo, quizá le añada una extensión `.txt`). En caso de que esto
    ocurra, haz visibles las extensiones de archivo y asegúrate que de
    que el cuaderno tiene la extensión `.ipynb`. Localiza el cuaderno
    desde Jupyter y ábrelo. Limpia las salidas mediante el menú
    `Cell>All Output>Clear` y ejecuta las celdas, preferiblemente una a
    una, para que tengas control del resultado.

4.  Captura la pantalla y pégala en tu informe.

5.  Describe lo que has realizado. Obviando los pasos de instalación,
    creación y activación de entorno virtual e instalación de paquetes,
    resume los pasos necesarios para representar tu capa asignada
    (remítete a los pasos dados en el cuaderno de Jupyter).

6.  Reflexiona. ¿Qué fortalezas entiendes que tiene Python?

# Referencias

<div id="refs" class="references csl-bib-body hanging-indent"
line-spacing="2">

<div id="ref-jose_ramon_martinez_batlle_2022_7028143" class="csl-entry">

Martínez-Batlle, J. R. (2022). <span
class="nocase">maestria-geotel-master/material-de-apoyo: First
release</span> (Version v0.0.0.9000).
<https://doi.org/10.5281/zenodo.7028143>

</div>

<div id="ref-olaya2020sistemas" class="csl-entry">

Olaya, V. (2020). *<span class="nocase">Sistemas de Informaci<span
class="nocase">ó</span>n Geogr<span class="nocase">á</span>fica. Un
libro libre de V<span class="nocase">í</span>ctor Olaya</span>*. Versión
en línea: <https://volaya.github.io/libro-sig/>. Versión PDF:
<https://github.com/volaya/libro-sig/releases/download/v3.0/Sistemas.de.Informacion.Geografica.pdf>.

</div>

<div id="ref-qgis2022qgis" class="csl-entry">

QGIS Development Team. (2022). *QGIS Desktop 3.22 User Guide*. Versión
en línea: <https://docs.qgis.org/3.22/es/docs/user_manual/>. Versón PDF:
<https://docs.qgis.org/3.22/pdf/es/QGIS-3.22-DesktopUserGuide-es.pdf>.

</div>

<div id="ref-Wickham2019Res" class="csl-entry">

Wickham, H., & Grolemund, G. (2019). *R para ciencia de datos*.
Retrieved from <https://es.r4ds.hadley.nz/>

</div>

</div>
