Práctica 2. Descargar y visualizar datos de GBIF con R, Python y QGIS
================
José Ramón Martínez Batlle
11-10-2022

# Fecha de entrega

-   21 de octubre de 2022

# Introducción

GBIF, o “Infraestructura Mundial de Información en Biodiversidad” (*What
is GBIF?*, n.d.), es una organización que proporciona datos de seres
vivos abiertamente a cualquier persona. En octubre de 2022, la base de
datos disponía de más de 2000 millones de registros biológicos, más de
76000 conjuntos de datos, casi 2000 instituciones publicaban datos en
ella y se había publicado casi 8000 artículos científicos.
Indiscutiblemente, GBIF es una fuente a considerar en estudios de
biodiversidad. Te propongo que en, esta asignación, aprendas formas
básicas de acceder a este importante recurso.

# Objetivos de aprendizaje

Al terminar esta práctica deberías ser capaz de:

-   Descargar registros de presencia desde GBIF usando R y Python.

-   Desplegarlos en QGIS.

-   Citar apropiadamente.

-   Relacionarlos con el territorio dominicano.

-   Construir una matriz de comunidad.

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

| Concepto                                                                                                                    | Porcentaje |
|:----------------------------------------------------------------------------------------------------------------------------|:-----------|
| Redacción, que incluye organización de las ideas, gramática, ortografía                                                     | 60%        |
| Presentación, que incluye uso apropiado de estilos, tablas y figuras (legibilidad, uso de *caption*), numeración de páginas | 40%        |

# Ejercicios

## Ejercicio 1. Descarga datos de GBIF usando R

¿Qué necesitarás?

-   Conexión a internet.

-   Una PC con R. Tendrás que instalar, si no los tienes aún, los
    paquetes que verás en la subsección “Paquetes” a continuación.

-   Archivo `rd.gpkg`, que debes descargar desde la [carpeta `data`,
    subcarpeta `d002` del repo de material de
    apoyo](https://github.com/biogeografia-202202/material-de-apoyo/tree/master/data/d002).
    IMPORTANTE: toma nota de la ruta en tu PC donde guardes este
    archivo, porque más adelante la necesitarás.

-   Cuenta en GBIF

-   Cuenta en Zenodo

### Paquetes

``` r
library(rgbif)
library(terra)
library(geodata)
library(sf)
library(dplyr)
library(h3jsr)
options(stringsAsFactors = FALSE)
```

### Descargar registros

``` r
reg_pres <- occ_data(scientificName = 'Polygonaceae',
                   hasCoordinate = T, country = 'DO', limit = 100000)
table(reg_pres$data$species)
length(unique(reg_pres$data$species))
```

### Súbelos a Zenodo

``` r
conteos_conjunto <- reg_pres$data %>% count(datasetKey, sort=TRUE) 
write.table(x = conteos_conjunto, file = "~/conteos_por_conjuntos_de_datos.txt",
            col.names=FALSE, row.names=FALSE,sep=",")
```

<div id="hello" class="greeting message" style="color: red;">

IMPORTANTE: controla el lugar donde descargas tu archivo `rd.gpkg`, y
usa dicha ruta en la sentencia `st_read`. De entrada te adelanto lo
siguiente: no coincidirá con la ruta que ves arriba.

</div>

``` r
rd <- st_read('../data/d002/rd.gpkg', layer = 'pais')
# Otras capas disponibles: regiones, provincias, municipios
```

# Python

``` python
```

# Representar en QGIS

# Referencias

<div id="refs" class="references csl-bib-body hanging-indent"
line-spacing="2">

<div id="ref-whatis" class="csl-entry">

*What is GBIF?* (n.d.). Retrieved from
<https://www.gbif.org/what-is-gbif>

</div>

</div>
