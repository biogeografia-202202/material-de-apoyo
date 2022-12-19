Práctica 99. Resultados de tu manuscrito. Cactaceae, ordenación y
ecología espacial.
================
José Ramón Martínez Batlle
26-11-2022

NOTA. Este cuaderno es una aplicación a datos de Cactaceae en GBIF, a
partir de una simple adaptación del cuaderno general
[practica-99-tu-manuscrito-3-resultados.md (basado en un análisis
demostrativo de la familia
Polygonaceae)](../practica-99-tu-manuscrito-3-resultados.md). Si
comparas este archivo con el original, notarás que, básicamente, edité
el nombre del archivo fuente de la matriz de comunidad (para adaptarlo a
este grupo) y otros detalles menores. Por lo tanto, aunque el código y
los gráficos sí se refieren a Cactaceae, probablemente el texto no.

# ¿Qué contiene la sección “Resultados”?

Te recomiendo releer las normas para autores/as del [Anuario de
Investigaciones Científicas de la
UASD](../docs/instrucciones-para-autores-anuario-investigaciones-cientificas-UASD.pdf)
y adherirte a las especificaciones sobre la sección “Resultados” que
allí se indican. Aunque en las referidas normas no se incluyen muchas
pautas significativas, si escribieras para una revista específica,
deberás considerar sus normas y recomendaciones de publicación. Además,
te recomiendo que consultes la sección “Resultados” de algunos
manuscritos publicados en el Anuario.

En los resultados expones el contenido analítico central. Es “el qué”
del manuscrito, en complemento de “el cómo” (metodología) y “el por qué”
(introducción) de tu investigación. En los resultados muestras lo que
encontraste luego de que colectaste (aunque en este caso, no fuiste al
terreno) y analizaste, con tus métodos, los datos fuente.

Algunas recomendaciones generales:

- “Resultados” se supone que es la sección más corta del manuscrito,
  siempre que se usen apropiadamente los recursos gráficos, las tablas y
  la información suplementaria.

- Comienza por realizar tus análisis. Necesitarás una matriz de
  comunidad y una ambiental. La de comunidad la habrás generado en la
  práctica 2; la ambiental explico cómo generarla en este mismo cuaderno
  (ver abajo). En general, la matriz ambiental la producirás mediante
  estadísticos zonales del territorio dominicano. Para aprender más
  sobre la fuente de estadística zonal de República Dominicana, que
  contiene un conjunto de más de 100 variables resumidas por celdas H3,
  visita [este repo](https://github.com/geofis/zonal-statistics). Debes
  visitar dicho repo para poder citarlo apropiadamente.

- Cuando tengas análisis realizados, antes de comenzar a escribir, te
  recomiendo que escribas un guión de tu sección “Resultados”.

- Guión en mano, redacta tu sección “Resultados”, siguiendo también
  estos consejos:

- En esta sección, se espera que presentes lo que has obtenido de manera
  “objetiva”, evitando explicaciones, comentarios, opiniones,
  perspectivas o limitaciones. En teoría, tu redacción es “fría”, lo
  cual no necesariamente significa que tenga que ser aburrida.

- Esta es la sección por excelencia donde usarás *tablas y/o gráficos*.
  Lo más importante a tener en cuenta cuando los uses es que no debes
  duplicar el contenido que muestran dichos recursos en el texto. La
  tabla o gráfico son apoyos que te ayudarán a no entrar en densidades
  innecesarias dentro de los párrafos. Por lo tanto, si colocas una
  tabla o figura, no caigas en la tentación de describirla en párrafos
  de forma exhausitva. Estos recursos deben servir para apoyar el o los
  párrafos donde destacas los principales patrones encontrados.

- *Importante también*: si insertas una tabla o gráfico, debes referirla
  en el texto (e.g. “ver figura X”). De nada sirve incluir una figura o
  una tabla si no la refieres, porque con ello estarás sugiriendo que
  dicho recurso era completamente prescindible.

- El tiempo verbal preferido (por defecto) es el pasado, por ejemplo “…,
  donde se **encontró** una asociación significativa entre … y …”. Sin
  embargo, hay excepciones, como por ejemplo, cuando te refieres a una
  tabla o una figura. Un caso típico es la expresión “tal como se
  muestra en la tabla 1”, donde el verbo está conjugado en presente.

A continuación, te pongo enlaces a referencias que considero útiles,
sobre cómo redactar los resultados (algunas son generales, sobre
artículos en general):

- [Breves pautas, en
  inglés](https://www.editage.com/insights/the-secret-to-writing-the-results-and-discussion-section-of-a-manuscript).
  Puedes usar el traductor [DeepL](https://www.deepl.com/translator),
  porque produce frases más naturales.

Cinco guías, en inglés, que considero están bien elaboradas, sobre cómo
redactar un artículo científico (consulta la sección sobre cómo redactar
los *resultados* en cada una):

- [Demystifying the Journal
  Article](https://www.insidehighered.com/advice/2017/05/09/how-write-effective-journal-article-and-get-it-published-essay)

- [How to write a scientific manuscript for
  publication](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3626472/)

- [11 steps to structuring a science paper editors will take
  seriously](https://www.elsevier.com/connect/11-steps-to-structuring-a-science-paper-editors-will-take-seriously)

- [Cómo escribir un artículo científico por primera
  vez](https://www.sciencedirect.com/science/article/abs/pii/S1134593417300040)
  (necesitarás usar [SciHub](https://sci-hub.se/) para descargarlo)

- Una muy breve pero con consejos útiles: [Tips for writing the perfect
  IMRAD
  manuscript](https://www.editage.com/insights/tips-for-writing-the-perfect-imrad-manuscript)

# Scripts de ejemplo

Una nota, a título informativo. Cada una se las siguientes secciones
(e.g. “Análisis de agrupamiento”, “Ordenación restringida”), es
reproducible de forma autónoma, es decir, sin dependencia de líneas de
código anteriores. Esto siginifica que las dependencias de una sección
se resuelven dentro de ella misma, sin dependencia de líneas anteriores.

Por esta razón, varias secciones comparten texto y código común, pero
sólo al inicio, porque al avanzar cada una se hace propia. Notarás, por
lo tanto, que el texto “se repite a sí mismo” por esta razón; la otra
opción que tenía era alojar el código común en un único archivo, pero
entonces esto te obligaba a navegar por archivos separados, haciendo
menos didáctico este cuaderno.

## Técnicas de ordenación

Me basaré en los scripts que comienzan por `to_` de este
[repo](https://github.com/biogeografia-master/scripts-de-analisis-BCI),
los cuales explico en los vídeos de “Técnicas de ordenación” de la lista
de reproducción [“Ecología Numérica con R” de mi
canal](https://www.youtube.com/playlist?list=PLDcT2n8UzsCRDqjqSeqHI1wsiNOqpYmsJ).

### Ordenación restringida

> INICIA texto+código común entre secciones

Fijar un directorio de trabajo no es recomendable, mejor trabaja por
proyecto. En cualquier caso, si no quieres o no puedes crear un
proyecto, usa la sentencia que verás abajo, cambiando `TU_DIRECTORIO`
por la ruta del directorio donde tengas almacenados tus datos y tus
scripts.

``` r
if(interactive()) {
  tryCatch(
    setwd(dirname(rstudioapi::getSourceEditorContext()$path)),
    error = function(e) {
      cat('Probablemente ya el directorio de trabajo está fijado correctamente',
          'o quizá el directorio no existe. Este fue el error devuelto:\n')
      e
    })
}
```

Cargar paquetes.

``` r
library(vegan)
library(sf)
library(tidyverse)
library(tmap)
library(kableExtra)
library(foreach)
library(leaps)
library(caret)
gh_content <- 'https://raw.githubusercontent.com/'
gh_zonal_stats <- paste0(gh_content,
                         'geofis/zonal-statistics/0b2e95aaee87bf326cf132d28f4bd15220bb4ec7/out/')
repo_analisis <- 'biogeografia-master/scripts-de-analisis-BCI/master'
repo_sem202202 <- 'biogeografia-202202/material-de-apoyo/master/practicas/'
devtools::source_url(paste0(gh_content, repo_analisis, '/biodata/funciones.R'))
devtools::source_url(paste0(gh_content, repo_sem202202, 'train.R'))
devtools::source_url(paste0(gh_content, repo_sem202202, 'funciones.R'))
```

Carga tu matriz de comunidad, que habrás generado en la práctica 2, y
elige un umbral para especies raras o rangos de registros de presencia
para seleccionar especies en una nueva matriz de comunidad.

``` r
res <- 6 #Resolución H3, puedes elegir entre 4, 5, 6 o 7, pero cuidado con valores >=6
# IMPORTANTE: la resolución de las celdas H3, debe coincidir con la resolución
# a la cual generaste tu matriz de comunidad. De lo contrario, obtendrás error. Si tu 
# archivo RDS de matriz de comunidad se denomina "matriz_de_comunidad.RDS", y lo creaste
# usando resolución 4, cámbiale el nombre a "matriz_de_comunidad_res_5.RDS". Recuerda,
# puedes usar cualquier resolución, lo único importante es que las resolución usada en la
# creación de la matriz de comunidad, debe ser la misma que en la ambiental.
mc_orig <- readRDS('matriz_de_comunidad_cactaceae.RDS')
nrow(mc_orig) #Número de filas, equivale a número de hexágonos con registros de presencia
```

    ## [1] 155

``` r
ncol(mc_orig)  #Número de columnas, equivale a número de especies, riqueza
```

    ## [1] 44

``` r
data.frame(Especies = names(mc_orig)) %>% 
  kable(booktabs=T) %>%
  kable_styling(latex_options = c("HOLD_position", "scale_down")) %>%
  gsub(' NA ', '', .) #Lista de especies
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Especies
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Rhipsalis parasitica subsp. parasitica
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria quisqueyana (Alain) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Cylindropuntia caribaea (Britton & Rose) F.M.Knuth
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus hexagonus (L.) Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus polygonus (Lam.) Byles & G.D.Rowley
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus paniculatus (Lam.) D.R.Hunt
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera (Mill.) Haw.
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus triangularis (L.) D.R.Hunt
</td>
</tr>
<tr>
<td style="text-align:left;">
Stenocereus fimbriatus (Lam.) Lourteig
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea macracantha (Griseb.) Berger
</td>
</tr>
<tr>
<td style="text-align:left;">
Harrisia divaricata (Lam.) Backeb.
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis (L.) A.Berger
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus conoideus Buining & Brederoo
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera subsp. prolifera
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei (Monv. ex Lem.) Miq.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia taylorii Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus subsp. domingensis Areces
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus undulosus (DC.) D.Barrios & Majure
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta (Haw.) Haw.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia cochenillifera Karst.
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus undatus (Haw.) D.R.Hunt
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria bleo (Kunth) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus (Mill.) Urb.
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus (Berger) Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus megalanthus (Schum. ex Vaupel) Moran
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria portulacifolia (L.) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria marcanoi (Areces) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. lemairei
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ×cubensis Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. praerupticola (Areces) Guiggi
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia repens Bello
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea Lem.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ficus-indica (L.) Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Cactaceae
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus royenii (L.) Byles & G.D.Rowley
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia aculeata Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis subsp. moniliformis
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus jamacaru DC.
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus (A.Berger) Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Epiphyllum phyllanthus (L.) Haw.
</td>
</tr>
</tbody>
</table>

``` r
unique(word(names(mc_orig), 1, 1)) #Géneros representados
```

    ##  [1] "Rhipsalis"      "Leuenbergeria"  "Cylindropuntia" "Cereus"        
    ##  [5] "Pilosocereus"   "Leptocereus"    "Mammillaria"    "Selenicereus"  
    ##  [9] "Stenocereus"    "Consolea"       "Harrisia"       "Melocactus"    
    ## [13] "Opuntia"        "Cactaceae"      "Pereskia"       "Epiphyllum"

``` r
table(word(names(mc_orig), 1, 1)) #Número de especies por género
```

    ## 
    ##      Cactaceae         Cereus       Consolea Cylindropuntia     Epiphyllum 
    ##              1              2              4              1              1 
    ##       Harrisia    Leptocereus  Leuenbergeria    Mammillaria     Melocactus 
    ##              1              4              4              2              6 
    ##        Opuntia       Pereskia   Pilosocereus      Rhipsalis   Selenicereus 
    ##              8              2              2              1              4 
    ##    Stenocereus 
    ##              1

``` r
data.frame(`Número de hexágonos` = sort(colSums(mc_orig), decreasing = T), check.names = F) %>% 
  kable(booktabs=T) %>%
  kable_styling(latex_options = c("HOLD_position", "scale_down")) %>%
  gsub(' NA ', '', .) # Número de hexágonos en los que está presente cada especie
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">
Número de hexágonos
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Rhipsalis parasitica subsp. parasitica
</td>
<td style="text-align:right;">
30
</td>
</tr>
<tr>
<td style="text-align:left;">
Cylindropuntia caribaea (Britton & Rose) F.M.Knuth
</td>
<td style="text-align:right;">
21
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis (L.) A.Berger
</td>
<td style="text-align:right;">
19
</td>
</tr>
<tr>
<td style="text-align:left;">
Stenocereus fimbriatus (Lam.) Lourteig
</td>
<td style="text-align:right;">
17
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. lemairei
</td>
<td style="text-align:right;">
13
</td>
</tr>
<tr>
<td style="text-align:left;">
Harrisia divaricata (Lam.) Backeb.
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera subsp. prolifera
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus polygonus (Lam.) Byles & G.D.Rowley
</td>
<td style="text-align:right;">
11
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus paniculatus (Lam.) D.R.Hunt
</td>
<td style="text-align:right;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea macracantha (Griseb.) Berger
</td>
<td style="text-align:right;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei (Monv. ex Lem.) Miq.
</td>
<td style="text-align:right;">
9
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia taylorii Britton & Rose
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus subsp. domingensis Areces
</td>
<td style="text-align:right;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia cochenillifera Karst.
</td>
<td style="text-align:right;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria quisqueyana (Alain) Lodé
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera (Mill.) Haw.
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus triangularis (L.) D.R.Hunt
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria portulacifolia (L.) Lodé
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus hexagonus (L.) Mill.
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta (Haw.) Haw.
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus royenii (L.) Byles & G.D.Rowley
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis subsp. moniliformis
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus undulosus (DC.) D.Barrios & Majure
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus undatus (Haw.) D.R.Hunt
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus (Mill.) Urb.
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ×cubensis Britton & Rose
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Cactaceae
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia aculeata Mill.
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria bleo (Kunth) Lodé
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria marcanoi (Areces) Lodé
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. praerupticola (Areces) Guiggi
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia repens Bello
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea Lem.
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia Mill.
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus conoideus Buining & Brederoo
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus (Berger) Britton & Rose
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus megalanthus (Schum. ex Vaupel) Moran
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ficus-indica (L.) Mill.
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia Mill.
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus jamacaru DC.
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus (A.Berger) Britton & Rose
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Epiphyllum phyllanthus (L.) Haw.
</td>
<td style="text-align:right;">
1
</td>
</tr>
</tbody>
</table>

``` r
# Usa el vector anterior para determinar un umbral o rango de registros para filtrar tu matriz
# ¿En cuántos hexágonos está cada especie? Filtra tus datos usando tu propio criterio.
# Especies que aparecen en pocos hexágonos se consideran "raras". Por ejemplo, si una especie sólo
# aparece en un hexágono en todo el país, es un "singleton", si en dos, "doubleton", y así.
# Estas especies podrían contribuir a generar "ruido" en análisis posteriores, se recomienda excluirlas.
# Elige un valor mínimo (representado por único número entero) o por un rango de enteros (e.g. de 10 a 20),
# para seleccionar las especies que estén mejor representadas de acuerdo a tu criterio.
# Por ejemplo, si usas el valor m, el script considerará a este valor como "el número mínimo de hexágonos
# en los que está representada una especie, y creará una matriz de comunidad de especies seleccionadas
# que están presentes en m hexágonos o más. Si eliges un rango, por ejemplo [m,n], el script generará
# una matriz de comunidad que representadas un mínimo de m hexágonos y un máximo de n hexágonos.
# (ambos extremos inclusive).
en_cuantos_hex <- 2
# Explicación: "en_cuantos_hex <- X", donde X es el número de hexágonos mínimo donde cada especie
# debe estar presente. IMPORTANTE: elige TU PROPIO umbral.
{if(length(en_cuantos_hex)==1) selector <- en_cuantos_hex:max(colSums(mc_orig)) else
  if(length(en_cuantos_hex)==2)
    selector <- min(en_cuantos_hex):max(en_cuantos_hex) else
      stop('Debes indicar uno o dos valores numéricos')}
selector
```

    ##  [1]  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
    ## [26] 27 28 29 30

``` r
mc_orig_seleccionadas <- mc_orig[, colSums(mc_orig) %in% selector]

# Mínimo número de especies por hexágono
data.frame(`Número de especies por hexágono` = sort(rowSums(mc_orig), decreasing = T), check.names = F) %>% 
  kable(booktabs=T) %>%
  kable_styling(latex_options = c("HOLD_position", "scale_down")) %>%
  gsub(' NA ', '', .) # Número de hexágonos en los que está presente cada especie
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">
Número de especies por hexágono
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
864cd6acfffffff
</td>
<td style="text-align:right;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b0fffffff
</td>
<td style="text-align:right;">
9
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2c97ffffff
</td>
<td style="text-align:right;">
9
</td>
</tr>
<tr>
<td style="text-align:left;">
86672534fffffff
</td>
<td style="text-align:right;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd605fffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2517ffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd252fffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6387ffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b07ffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b5fffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd648fffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6767ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6c17ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b37ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2567ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd66e7ffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
866725a27ffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d0fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0dafffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b1fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42cfffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd60cfffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c2fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b6fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864c882cfffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd665fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b2fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2577ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0cc7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2c8fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725267ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5bafffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42dfffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2937ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b47ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725bb7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725ba7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
86672524fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2537ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd20b7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d5fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6497ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b47ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6317ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89cf7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b0fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2c9fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b77ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89c87ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd44b7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b67ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6017ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0897ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4537ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89a2fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
8667258efffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4c97ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6637ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725a67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2cd7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4247ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672535fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd649fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd60afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd600fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd679fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2cf7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4c2fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2097ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b17ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd661fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd219fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8926fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd64afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd28a7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd298fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd666fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725347ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6ca7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd421fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89d77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8bad7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c1fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf269fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672586fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0cf7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b1fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672526fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6697ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672584fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2d37ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42e7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c898efffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2cdfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89977ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd694fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c882c7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd092fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c890f7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2197ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89c8fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c88357ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d8fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c37ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc611fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd40cfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd674fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89bafffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd62b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6677ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd676fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8925fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc64dfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672580fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd638fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf37afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c898f7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6b17ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd28b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd469fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d1fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4647ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89b6fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89b47ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8b327ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc66afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd58cfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725a77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6327ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0da7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89b07ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6217ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8ba8fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8822fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672585fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89347ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd47b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6d77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd46c7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b6fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd41a7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4a57ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4087ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725acfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6a67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2d47ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf334fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89ca7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c898d7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2997ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8908fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5127ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
</tbody>
</table>

``` r
min_especies_por_hex <- 1
# Explicación: "min_especies_por_hex <- Y", donde Y es el número mínimo (inclusive) de especies
# que debe existir en cada hexágono. Por debajo de dicho valor, el hexágono es excluido.
mi_fam <- mc_orig_seleccionadas[rowSums(mc_orig_seleccionadas)>=min_especies_por_hex, ]
nrow(mi_fam)
```

    ## [1] 151

``` r
# mi_fam <- mc_orig_seleccionadas[!rowSums(mc_orig_seleccionadas)==0, ] #Elimina filas sin registros
# rowSums(mi_fam) #Riqueza por hexágonos con especies seleccionadas. Comentado por extenso
all(rowSums(mi_fam)>0) #Debe ser TRUE: todos los hexágonos tienen al menos 1 registro
```

    ## [1] TRUE

``` r
ncol(mi_fam) #Riqueza de especies
```

    ## [1] 36

``` r
# Usar nombres cortos o abreviados para las especies
nombres_largos <- colnames(mi_fam)
(colnames(mi_fam) <- make.cepnames(word(colnames(mi_fam), 1, 2)))
```

    ##  [1] "Rhippara"   "Leuequis"   "Cylicari"   "Cerehexa"   "Pilopoly"  
    ##  [6] "Leptpani"   "Mammprol"   "Seletria"   "Stenfimb"   "Consmacr"  
    ## [11] "Harrdiva"   "Consmoni"   "Mammprol.1" "Melolema"   "Opuntayl"  
    ## [16] "Melointo"   "Leptundu"   "Opunstri"   "Opuncoch"   "Seleunda"  
    ## [21] "Leuebleo"   "Melointo.1" "Leptwein"   "Leueport"   "Leuemarc"  
    ## [26] "Melolema.1" "Opuncube"   "Melolema.2" "Opunrepe"   "Opunstri.1"
    ## [31] "ConsLem"    "OpunMill"   "NA."        "Piloroye"   "Pereacul"  
    ## [36] "Consmoni.1"

``` r
(df_equivalencias <- data.frame(
  nombre_original = nombres_largos,
  abreviado = colnames(mi_fam)))
```

    ##                                                  nombre_original  abreviado
    ## 1                         Rhipsalis parasitica subsp. parasitica   Rhippara
    ## 2                         Leuenbergeria quisqueyana (Alain) Lodé   Leuequis
    ## 3             Cylindropuntia caribaea (Britton & Rose) F.M.Knuth   Cylicari
    ## 4                                    Cereus hexagonus (L.) Mill.   Cerehexa
    ## 5               Pilosocereus polygonus (Lam.) Byles & G.D.Rowley   Pilopoly
    ## 6                        Leptocereus paniculatus (Lam.) D.R.Hunt   Leptpani
    ## 7                             Mammillaria prolifera (Mill.) Haw.   Mammprol
    ## 8                        Selenicereus triangularis (L.) D.R.Hunt   Seletria
    ## 9                         Stenocereus fimbriatus (Lam.) Lourteig   Stenfimb
    ## 10                         Consolea macracantha (Griseb.) Berger   Consmacr
    ## 11                            Harrisia divaricata (Lam.) Backeb.   Harrdiva
    ## 12                           Consolea moniliformis (L.) A.Berger   Consmoni
    ## 13                        Mammillaria prolifera subsp. prolifera Mammprol.1
    ## 14                      Melocactus lemairei (Monv. ex Lem.) Miq.   Melolema
    ## 15                               Opuntia taylorii Britton & Rose   Opuntayl
    ## 16                 Melocactus intortus subsp. domingensis Areces   Melointo
    ## 17                Leptocereus undulosus (DC.) D.Barrios & Majure   Leptundu
    ## 18                                   Opuntia stricta (Haw.) Haw.   Opunstri
    ## 19                                 Opuntia cochenillifera Karst.   Opuncoch
    ## 20                          Selenicereus undatus (Haw.) D.R.Hunt   Seleunda
    ## 21                               Leuenbergeria bleo (Kunth) Lodé   Leuebleo
    ## 22                              Melocactus intortus (Mill.) Urb. Melointo.1
    ## 23 Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose   Leptwein
    ## 24                        Leuenbergeria portulacifolia (L.) Lodé   Leueport
    ## 25                          Leuenbergeria marcanoi (Areces) Lodé   Leuemarc
    ## 26                           Melocactus lemairei subsp. lemairei Melolema.1
    ## 27                              Opuntia ×cubensis Britton & Rose   Opuncube
    ## 28      Melocactus lemairei subsp. praerupticola (Areces) Guiggi Melolema.2
    ## 29                                          Opuntia repens Bello   Opunrepe
    ## 30          Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson Opunstri.1
    ## 31                                                 Consolea Lem.    ConsLem
    ## 32                                                 Opuntia Mill.   OpunMill
    ## 33                                                     Cactaceae        NA.
    ## 34                  Pilosocereus royenii (L.) Byles & G.D.Rowley   Piloroye
    ## 35                                       Pereskia aculeata Mill.   Pereacul
    ## 36                     Consolea moniliformis subsp. moniliformis Consmoni.1

Transforma la matriz de comunidad. Este paso es importante, lo explico
[aquí](https://www.youtube.com/watch?v=yQ10lp0-nHc&list=PLDcT2n8UzsCRDqjqSeqHI1wsiNOqpYmsJ&index=10)

``` r
mi_fam_t <- decostand(mi_fam, 'hellinger') #Hellinger
# Otras transformaciones posibles con datos de presencia/ausencia
# mi_fam_t <- decostand(mi_fam, 'normalize') #Chord
# mi_fam_t <- decostand(log1p(mi_fam), 'normalize') #Chord
# mi_fam_t <- decostand(mi_fam, 'chi.square') #Chi-square
```

Genera la matriz ambiental a partir del archivo de estadística zonal por
celdas H3 de República Dominicana, de acuerdo con la resolución que
prefieras. Para el ejemplo, usé la resolución 5, pero puedes usar/probar
con otra, para lo cual, sólo tendrías que cambiar el objeto `res <- X`,
donde `X` puede ser un número cualquiera entre 4 y 7.

Para aprender más sobre la fuente de estadística zonal de República
Dominicana, que contiene un conjunto de más de 100 variables resumidas
por celdas H3, visita [este
repo](https://github.com/geofis/zonal-statistics). Debes visitar dicho
repo para poder citarlo apropiadamente.

``` r
#Matriz ambiental
tmpfile <- tempfile()
download.file(
  url = paste0(gh_zonal_stats, 'list_with_all_sources_all_resolution.RDS'),
  tmpfile, method = if(Sys.info()[['sysname']]=='Windows') 'curl' else 'libcurl')
tmprds <- readRDS(tmpfile)
za <- tmprds[[paste0('H3 resolution: ', res)]]
# Las siguientes líneas están comentadas, porque producen muchos mapas. Descoméntalas y ejecútalas si quieres verlos
# za %>% st_as_sf('geom') %>%
#   pivot_longer(cols = -matches('base|hex_id|geom')) %>% 
#   tm_shape() + tm_fill(col = 'value') +
#   tm_facets(by = 'name', free.scales = T)
za_intermedia <- za %>%
  st_drop_geometry() %>% 
  select(-matches(c(' base'))) %>% 
  column_to_rownames('hex_id')
env <- za_intermedia[match(rownames(mi_fam), rownames(za_intermedia)), ]
all(rownames(mi_fam) == rownames(env)) #Si es TRUE, sigue adelante
```

    ## [1] TRUE

Se puede probar con un subconjunto de variables, generando una matriz
ambiental que seleccione variables según el grupo al que pertenecen, con
ayuda del prefijo.

``` r
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^ESA '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^G90-GEOM '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^CH-BIO '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^GHH '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^GSL '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^CGL '))
```

> FINALIZA texto+código común entre secciones

A continuación, el análisis de ordenación propiamente. La parte más
importante es el entrenamiento: la función `train` del paquete `caret`,
contenida en la función `my_train`, simplifica la selección de
variables. Lo más importante: prueba con todas las variables primero,
observa las variables que recomienda el modelo final
(`print_my_train(mod)`) y ensaya varias combinaciones de subconjuntos de
variables.

``` r
mi_fam_t_sel <- mi_fam_t %>%
  # select(matches('uvif|dive', ignore.case = T)) %>% #Serviría para filtrar la matriz de comunidad con esto
  rename_all(~ paste('ESPECIE', .x))
env_spp <- env %>% bind_cols(mi_fam_t_sel)
spp <- paste0('`', grep('^ESPECIE', colnames(env_spp), value = T), '`', collapse = ' + ')
my_formula <- as.formula(paste(spp, '~ .'))
set.seed(1); mod <- my_train(
  formula = my_formula, 
  preproceso = 'scale',
  data = env_spp %>%
    # select(matches('^GSL |^ESA |^ESPECIE ')) %>% #Sólo GSL y ESA, pero se debe explorar con todas
    select(matches('^ESA |^CH-BIO |^ESPECIE ')) %>% #Sólo ESA y CH-BIO, pero se debe explorar con todas
    select_all())
```

    ## Reordering variables and trying again:
    ## Reordering variables and trying again:
    ## Reordering variables and trying again:
    ## Reordering variables and trying again:

``` r
print_my_train(mod)
```

    ## $resumen_variables
    ## Subset selection object
    ## 28 Variables  (and intercept)
    ##                                                                         Forced in
    ## `ESA Trees`                                                                 FALSE
    ## `ESA Shrubland`                                                             FALSE
    ## `ESA Grassland`                                                             FALSE
    ## `ESA Cropland`                                                              FALSE
    ## `ESA Built-up`                                                              FALSE
    ## `ESA Barren / sparse vegetation`                                            FALSE
    ## `ESA Open water`                                                            FALSE
    ## `ESA Herbaceous wetland`                                                    FALSE
    ## `CH-BIO bio01 mean annual air temperature`                                  FALSE
    ## `CH-BIO bio02 mean diurnal air temperature range`                           FALSE
    ## `CH-BIO bio03 isothermality`                                                FALSE
    ## `CH-BIO bio04 temperature seasonality`                                      FALSE
    ## `CH-BIO bio05 mean daily maximum air temperature of the warmest month`      FALSE
    ## `CH-BIO bio06 mean daily minimum air temperature of the coldest month`      FALSE
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`      FALSE
    ## `CH-BIO bio09 mean daily mean air temperatures of the driest quarter`       FALSE
    ## `CH-BIO bio10 mean daily mean air temperatures of the warmest quarter`      FALSE
    ## `CH-BIO bio11 mean daily mean air temperatures of the coldest quarter`      FALSE
    ## `CH-BIO bio12 annual precipitation amount`                                  FALSE
    ## `CH-BIO bio13 precipitation amount of the wettest month`                    FALSE
    ## `CH-BIO bio14 precipitation amount of the driest month`                     FALSE
    ## `CH-BIO bio15 precipitation seasonality`                                    FALSE
    ## `CH-BIO bio16 mean monthly precipitation amount of the wettest quarter`     FALSE
    ## `CH-BIO bio17 mean monthly precipitation amount of the driest quarter`      FALSE
    ## `CH-BIO bio18 mean monthly precipitation amount of the warmest quarter`     FALSE
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`     FALSE
    ## `ESA Mangroves`                                                             FALSE
    ## `CH-BIO bio07 annual range of air temperature`                              FALSE
    ##                                                                         Forced out
    ## `ESA Trees`                                                                  FALSE
    ## `ESA Shrubland`                                                              FALSE
    ## `ESA Grassland`                                                              FALSE
    ## `ESA Cropland`                                                               FALSE
    ## `ESA Built-up`                                                               FALSE
    ## `ESA Barren / sparse vegetation`                                             FALSE
    ## `ESA Open water`                                                             FALSE
    ## `ESA Herbaceous wetland`                                                     FALSE
    ## `CH-BIO bio01 mean annual air temperature`                                   FALSE
    ## `CH-BIO bio02 mean diurnal air temperature range`                            FALSE
    ## `CH-BIO bio03 isothermality`                                                 FALSE
    ## `CH-BIO bio04 temperature seasonality`                                       FALSE
    ## `CH-BIO bio05 mean daily maximum air temperature of the warmest month`       FALSE
    ## `CH-BIO bio06 mean daily minimum air temperature of the coldest month`       FALSE
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`       FALSE
    ## `CH-BIO bio09 mean daily mean air temperatures of the driest quarter`        FALSE
    ## `CH-BIO bio10 mean daily mean air temperatures of the warmest quarter`       FALSE
    ## `CH-BIO bio11 mean daily mean air temperatures of the coldest quarter`       FALSE
    ## `CH-BIO bio12 annual precipitation amount`                                   FALSE
    ## `CH-BIO bio13 precipitation amount of the wettest month`                     FALSE
    ## `CH-BIO bio14 precipitation amount of the driest month`                      FALSE
    ## `CH-BIO bio15 precipitation seasonality`                                     FALSE
    ## `CH-BIO bio16 mean monthly precipitation amount of the wettest quarter`      FALSE
    ## `CH-BIO bio17 mean monthly precipitation amount of the driest quarter`       FALSE
    ## `CH-BIO bio18 mean monthly precipitation amount of the warmest quarter`      FALSE
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`      FALSE
    ## `ESA Mangroves`                                                              FALSE
    ## `CH-BIO bio07 annual range of air temperature`                               FALSE
    ## 1 subsets of each size up to 6
    ## Selection Algorithm: 'sequential replacement'
    ##          `ESA Trees` `ESA Shrubland` `ESA Grassland` `ESA Cropland`
    ## 1  ( 1 ) " "         "*"             " "             " "           
    ## 2  ( 1 ) " "         "*"             " "             " "           
    ## 3  ( 1 ) " "         "*"             " "             " "           
    ## 4  ( 1 ) " "         "*"             "*"             " "           
    ## 5  ( 1 ) "*"         "*"             " "             " "           
    ## 6  ( 1 ) "*"         "*"             " "             " "           
    ##          `ESA Built-up` `ESA Barren / sparse vegetation` `ESA Open water`
    ## 1  ( 1 ) " "            " "                              " "             
    ## 2  ( 1 ) " "            " "                              " "             
    ## 3  ( 1 ) "*"            " "                              " "             
    ## 4  ( 1 ) "*"            " "                              " "             
    ## 5  ( 1 ) "*"            " "                              "*"             
    ## 6  ( 1 ) "*"            " "                              "*"             
    ##          `ESA Herbaceous wetland` `ESA Mangroves`
    ## 1  ( 1 ) " "                      " "            
    ## 2  ( 1 ) " "                      " "            
    ## 3  ( 1 ) " "                      " "            
    ## 4  ( 1 ) " "                      " "            
    ## 5  ( 1 ) " "                      " "            
    ## 6  ( 1 ) "*"                      " "            
    ##          `CH-BIO bio01 mean annual air temperature`
    ## 1  ( 1 ) " "                                       
    ## 2  ( 1 ) " "                                       
    ## 3  ( 1 ) " "                                       
    ## 4  ( 1 ) " "                                       
    ## 5  ( 1 ) " "                                       
    ## 6  ( 1 ) " "                                       
    ##          `CH-BIO bio02 mean diurnal air temperature range`
    ## 1  ( 1 ) " "                                              
    ## 2  ( 1 ) " "                                              
    ## 3  ( 1 ) " "                                              
    ## 4  ( 1 ) " "                                              
    ## 5  ( 1 ) " "                                              
    ## 6  ( 1 ) " "                                              
    ##          `CH-BIO bio03 isothermality` `CH-BIO bio04 temperature seasonality`
    ## 1  ( 1 ) " "                          " "                                   
    ## 2  ( 1 ) " "                          "*"                                   
    ## 3  ( 1 ) " "                          "*"                                   
    ## 4  ( 1 ) " "                          "*"                                   
    ## 5  ( 1 ) " "                          " "                                   
    ## 6  ( 1 ) " "                          " "                                   
    ##          `CH-BIO bio05 mean daily maximum air temperature of the warmest month`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ## 5  ( 1 ) " "                                                                   
    ## 6  ( 1 ) " "                                                                   
    ##          `CH-BIO bio06 mean daily minimum air temperature of the coldest month`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ## 5  ( 1 ) " "                                                                   
    ## 6  ( 1 ) " "                                                                   
    ##          `CH-BIO bio07 annual range of air temperature`
    ## 1  ( 1 ) " "                                           
    ## 2  ( 1 ) " "                                           
    ## 3  ( 1 ) " "                                           
    ## 4  ( 1 ) " "                                           
    ## 5  ( 1 ) " "                                           
    ## 6  ( 1 ) " "                                           
    ##          `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ## 5  ( 1 ) " "                                                                   
    ## 6  ( 1 ) " "                                                                   
    ##          `CH-BIO bio09 mean daily mean air temperatures of the driest quarter`
    ## 1  ( 1 ) " "                                                                  
    ## 2  ( 1 ) " "                                                                  
    ## 3  ( 1 ) " "                                                                  
    ## 4  ( 1 ) " "                                                                  
    ## 5  ( 1 ) " "                                                                  
    ## 6  ( 1 ) " "                                                                  
    ##          `CH-BIO bio10 mean daily mean air temperatures of the warmest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ## 5  ( 1 ) " "                                                                   
    ## 6  ( 1 ) " "                                                                   
    ##          `CH-BIO bio11 mean daily mean air temperatures of the coldest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ## 5  ( 1 ) " "                                                                   
    ## 6  ( 1 ) " "                                                                   
    ##          `CH-BIO bio12 annual precipitation amount`
    ## 1  ( 1 ) " "                                       
    ## 2  ( 1 ) " "                                       
    ## 3  ( 1 ) " "                                       
    ## 4  ( 1 ) " "                                       
    ## 5  ( 1 ) " "                                       
    ## 6  ( 1 ) " "                                       
    ##          `CH-BIO bio13 precipitation amount of the wettest month`
    ## 1  ( 1 ) " "                                                     
    ## 2  ( 1 ) " "                                                     
    ## 3  ( 1 ) " "                                                     
    ## 4  ( 1 ) " "                                                     
    ## 5  ( 1 ) " "                                                     
    ## 6  ( 1 ) " "                                                     
    ##          `CH-BIO bio14 precipitation amount of the driest month`
    ## 1  ( 1 ) " "                                                    
    ## 2  ( 1 ) " "                                                    
    ## 3  ( 1 ) " "                                                    
    ## 4  ( 1 ) " "                                                    
    ## 5  ( 1 ) " "                                                    
    ## 6  ( 1 ) " "                                                    
    ##          `CH-BIO bio15 precipitation seasonality`
    ## 1  ( 1 ) " "                                     
    ## 2  ( 1 ) " "                                     
    ## 3  ( 1 ) " "                                     
    ## 4  ( 1 ) " "                                     
    ## 5  ( 1 ) " "                                     
    ## 6  ( 1 ) " "                                     
    ##          `CH-BIO bio16 mean monthly precipitation amount of the wettest quarter`
    ## 1  ( 1 ) " "                                                                    
    ## 2  ( 1 ) " "                                                                    
    ## 3  ( 1 ) " "                                                                    
    ## 4  ( 1 ) " "                                                                    
    ## 5  ( 1 ) " "                                                                    
    ## 6  ( 1 ) " "                                                                    
    ##          `CH-BIO bio17 mean monthly precipitation amount of the driest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ## 5  ( 1 ) "*"                                                                   
    ## 6  ( 1 ) "*"                                                                   
    ##          `CH-BIO bio18 mean monthly precipitation amount of the warmest quarter`
    ## 1  ( 1 ) " "                                                                    
    ## 2  ( 1 ) " "                                                                    
    ## 3  ( 1 ) " "                                                                    
    ## 4  ( 1 ) " "                                                                    
    ## 5  ( 1 ) " "                                                                    
    ## 6  ( 1 ) " "                                                                    
    ##          `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`
    ## 1  ( 1 ) " "                                                                    
    ## 2  ( 1 ) " "                                                                    
    ## 3  ( 1 ) " "                                                                    
    ## 4  ( 1 ) " "                                                                    
    ## 5  ( 1 ) " "                                                                    
    ## 6  ( 1 ) " "                                                                    
    ## 
    ## $resultados_nvmax
    ##   nvmax      RMSE  Rsquared       MAE     RMSESD RsquaredSD      MAESD
    ## 1     3 0.4023220 0.1667695 0.2952664 0.05672992 0.09499785 0.03195691
    ## 2     4 0.4021300 0.1592439 0.2881928 0.05524277 0.05680534 0.02943545
    ## 3     5 0.4007994 0.1698108 0.2901195 0.05560612 0.06218959 0.03643602
    ## 4     6 0.4017760 0.1691842 0.2856750 0.04556561 0.06527483 0.03316279
    ## 5     7 0.4035721 0.1763594 0.2883047 0.03875666 0.06880913 0.02740811
    ## 
    ## $mejor_ajuste
    ##   nvmax
    ## 3     5

``` r
(covar <- grep(
  pattern = '\\(Intercept\\)',
  x = names(coef(mod$finalModel,unlist(mod$bestTune))),
  invert = T, value = T))
```

    ## [1] "`ESA Trees`"                                                            
    ## [2] "`ESA Shrubland`"                                                        
    ## [3] "`ESA Built-up`"                                                         
    ## [4] "`ESA Open water`"                                                       
    ## [5] "`CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`"

``` r
mi_fam_t_rda <- rda(mi_fam_t_sel %>% rename_all(~ gsub('^ESPECIE ', '', .)) ~ .,
                    env %>% select_at(all_of(gsub('\\`', '', covar))), scale = T)
summary(mi_fam_t_rda)
```

    ## 
    ## Call:
    ## rda(formula = mi_fam_t_sel %>% rename_all(~gsub("^ESPECIE ",      "", .)) ~ `ESA Trees` + `ESA Shrubland` + `ESA Built-up` +      `ESA Open water` + `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`,      data = env %>% select_at(all_of(gsub("\\`", "", covar))),      scale = T) 
    ## 
    ## Partitioning of correlations:
    ##               Inertia Proportion
    ## Total          36.000    1.00000
    ## Constrained     2.636    0.07323
    ## Unconstrained  33.364    0.92677
    ## 
    ## Eigenvalues, and their contribution to the correlations 
    ## 
    ## Importance of components:
    ##                          RDA1    RDA2    RDA3     RDA4     RDA5     PC1     PC2
    ## Eigenvalue            1.02670 0.61438 0.41965 0.295970 0.279471 1.69291 1.61209
    ## Proportion Explained  0.02852 0.01707 0.01166 0.008221 0.007763 0.04703 0.04478
    ## Cumulative Proportion 0.02852 0.04559 0.05724 0.065464 0.073227 0.12025 0.16503
    ##                           PC3     PC4     PC5    PC6     PC7     PC8    PC9
    ## Eigenvalue            1.45823 1.38636 1.33742 1.2241 1.18013 1.15978 1.1414
    ## Proportion Explained  0.04051 0.03851 0.03715 0.0340 0.03278 0.03222 0.0317
    ## Cumulative Proportion 0.20554 0.24405 0.28120 0.3152 0.34798 0.38020 0.4119
    ##                          PC10    PC11    PC12    PC13    PC14    PC15   PC16
    ## Eigenvalue            1.08819 1.06637 1.04994 1.03859 1.02070 1.00894 1.0008
    ## Proportion Explained  0.03023 0.02962 0.02916 0.02885 0.02835 0.02803 0.0278
    ## Cumulative Proportion 0.44213 0.47175 0.50092 0.52977 0.55812 0.58615 0.6139
    ##                         PC17    PC18   PC19    PC20    PC21    PC22    PC23
    ## Eigenvalue            0.9898 0.96885 0.9466 0.90394 0.89521 0.88088 0.85242
    ## Proportion Explained  0.0275 0.02691 0.0263 0.02511 0.02487 0.02447 0.02368
    ## Cumulative Proportion 0.6414 0.66836 0.6947 0.71976 0.74463 0.76910 0.79277
    ##                          PC24    PC25   PC26    PC27    PC28   PC29   PC30
    ## Eigenvalue            0.82573 0.81860 0.7957 0.73921 0.68553 0.6337 0.6155
    ## Proportion Explained  0.02294 0.02274 0.0221 0.02053 0.01904 0.0176 0.0171
    ## Cumulative Proportion 0.81571 0.83845 0.8606 0.88109 0.90013 0.9177 0.9348
    ##                          PC31    PC32    PC33    PC34     PC35    PC36
    ## Eigenvalue            0.56414 0.50270 0.47568 0.39402 0.335405 0.07415
    ## Proportion Explained  0.01567 0.01396 0.01321 0.01095 0.009317 0.00206
    ## Cumulative Proportion 0.95050 0.96447 0.97768 0.98862 0.997940 1.00000
    ## 
    ## Accumulated constrained eigenvalues
    ## Importance of components:
    ##                         RDA1   RDA2   RDA3   RDA4   RDA5
    ## Eigenvalue            1.0267 0.6144 0.4197 0.2960 0.2795
    ## Proportion Explained  0.3895 0.2331 0.1592 0.1123 0.1060
    ## Cumulative Proportion 0.3895 0.6225 0.7817 0.8940 1.0000
    ## 
    ## Scaling 2 for species and site scores
    ## * Species are scaled proportional to eigenvalues
    ## * Sites are unscaled: weighted dispersion equal on all dimensions
    ## * General scaling constant of scores:  8.572321 
    ## 
    ## 
    ## Species scores
    ## 
    ##                 RDA1      RDA2      RDA3      RDA4     RDA5      PC1
    ## Rhippara   -0.651272 -0.390857 -0.344210  0.081878  0.12802 -0.04642
    ## Leuequis   -0.197989  0.021814  0.079516  0.031448 -0.02047  0.02707
    ## Cylicari    0.401569  0.056333  0.104979 -0.093975  0.04977  0.32982
    ## Cerehexa   -0.294497  0.349588 -0.129594 -0.055445  0.07253 -0.09168
    ## Pilopoly    0.101283  0.091157  0.104688 -0.005356  0.07316  0.39496
    ## Leptpani    0.300075  0.052375 -0.033132  0.125122 -0.16782 -0.13281
    ## Mammprol    0.097401 -0.104263  0.058466  0.110695  0.13724 -0.10734
    ## Seletria   -0.059425  0.315002  0.278794  0.033186  0.21690  0.17910
    ## Stenfimb    0.199872  0.267688  0.007991  0.187830 -0.19117  0.39566
    ## Consmacr    0.009184 -0.098347  0.182445  0.154167 -0.05269 -0.15844
    ## Harrdiva    0.219357  0.068117 -0.177954  0.033526 -0.22282  0.28696
    ## Consmoni    0.479728  0.087964 -0.218723  0.123954 -0.02954  0.68193
    ## Mammprol.1  0.266112 -0.084556  0.183411 -0.033728  0.10013 -0.32868
    ## Melolema    0.234572 -0.072103  0.103614  0.088988  0.01915 -0.52513
    ## Opuntayl   -0.007271  0.018515  0.095364  0.097516  0.15241  0.07388
    ## Melointo    0.069929  0.040580 -0.059689  0.039074 -0.17803  0.42506
    ## Leptundu    0.129106 -0.070734  0.083620  0.203561  0.12615  0.44477
    ## Opunstri    0.256992  0.131543 -0.178869  0.007652 -0.09645  0.30201
    ## Opuncoch   -0.298900  0.325441 -0.137190  0.112993 -0.01609 -0.16985
    ## Seleunda   -0.279053  0.509335  0.027126 -0.280531  0.09846 -0.16807
    ## Leuebleo   -0.141007  0.522658 -0.007905  0.113104 -0.07435 -0.30779
    ## Melointo.1  0.086299 -0.002664  0.077090 -0.119680 -0.18491  0.26617
    ## Leptwein   -0.071683 -0.021405  0.322653  0.048659  0.04250  0.45149
    ## Leueport    0.327095 -0.012311  0.006181 -0.212557  0.01899 -0.11506
    ## Leuemarc    0.008986 -0.122868  0.227615 -0.281011 -0.12959 -0.01582
    ## Melolema.1  0.306880  0.003336 -0.189479 -0.167950  0.15575 -0.51444
    ## Opuncube    0.172990  0.103435  0.023687  0.080589  0.21340  0.66724
    ## Melolema.2 -0.089275 -0.141632  0.020884 -0.219538 -0.06002  0.02576
    ## Opunrepe    0.183042 -0.004383 -0.121308 -0.131458  0.09795 -0.26472
    ## Opunstri.1  0.139227 -0.038945  0.067834 -0.046820  0.02090 -0.27404
    ## ConsLem     0.144251 -0.017599 -0.077648 -0.183571  0.06881 -0.02765
    ## OpunMill   -0.177957  0.007350 -0.079739 -0.025389  0.07503  0.19362
    ## NA.         0.430063  0.065404 -0.251770  0.036589  0.29234  0.33220
    ## Piloroye   -0.023168 -0.085222  0.213671  0.181549  0.07573  0.15168
    ## Pereacul   -0.091110 -0.074504  0.079287 -0.021743 -0.11144 -0.07013
    ## Consmoni.1 -0.036289  0.141405  0.190955 -0.042443 -0.01003  0.24107
    ## 
    ## 
    ## Site scores (weighted sums of species scores)
    ## 
    ##                     RDA1      RDA2     RDA3     RDA4      RDA5       PC1
    ## 864cd4537ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.046591
    ## 864c89a2fffffff -0.76905 -0.093106  0.55480  0.10026 -0.425686  0.086745
    ## 8667258efffffff  0.55570 -0.010231  0.51967 -0.83330  0.136383  0.200286
    ## 864cd4c97ffffff -1.23174  1.803690 -1.06351 -0.85693  0.691731 -0.095158
    ## 864cd5b2fffffff -0.56682  1.111260 -0.07467  0.48037  0.217753  0.219062
    ## 864cd6637ffffff  0.53566  0.028624 -0.18520  0.90088 -1.782086 -0.372291
    ## 864cd66e7ffffff  0.64798  0.164597  0.58577  0.92860 -0.002345  0.122148
    ## 866725b5fffffff  0.15050  0.191696  2.67964  1.12379  2.330912 -0.560668
    ## 866725a27ffffff  0.31011  0.963401  1.46081  1.40671  1.157159  0.291604
    ## 864cd648fffffff  1.08565  0.036654 -0.09048 -0.11470 -1.740360 -0.324169
    ## 864cd6767ffffff  1.33077  0.668327 -0.44561  1.24964 -1.712800  0.435395
    ## 866725b0fffffff  1.93151  0.488984 -0.40230 -0.54111 -0.822177  0.034852
    ## 86672534fffffff  1.91621  0.658267 -1.64629  2.58709  0.996271  1.819782
    ## 866725a67ffffff  0.06543  0.243664  0.75493 -0.25277  0.551769  0.404456
    ## 864cd2cd7ffffff  0.07296 -0.726387  0.45798  0.97548  1.323600 -0.513531
    ## 864cd2577ffffff  0.22902 -0.379715  1.28180  0.27738  1.559321 -0.530394
    ## 864cd0cc7ffffff  1.13086  0.182472 -0.52326  0.07284 -0.149562  0.670190
    ## 864cd0d0fffffff  0.75852  0.216252 -0.26503  0.21383 -0.212708 -0.740696
    ## 864cd0dafffffff  0.54135  0.133428  0.04294  0.16592 -0.313527  0.326485
    ## 866725b1fffffff  0.89107 -0.546973  0.35591 -0.77011  1.195556 -1.564106
    ## 86672535fffffff -0.01757  0.007963 -0.41303  0.20274 -2.159843  0.588039
    ## 864cd605fffffff  1.43215  0.344989 -0.58462 -0.18459  0.085021  0.091673
    ## 864cd2517ffffff  1.41755  1.125918 -2.23654  1.26377 -3.648869  1.234351
    ## 864cd649fffffff  0.53566  0.028624 -0.18520  0.90088 -1.782086 -0.572356
    ## 864cd60afffffff  0.30836 -0.467271  0.59677  0.50251 -0.059114 -0.935126
    ## 864cd600fffffff  0.53566  0.028624 -0.18520  0.90088 -1.782086 -0.484061
    ## 864cd42cfffffff -1.89846  6.010423 -0.38638 -0.60201 -0.413792 -1.304979
    ## 864cd679fffffff  0.55570 -0.010231  0.51967 -0.83330  0.136383  0.044144
    ## 864cd2cf7ffffff  0.43788 -0.545284  1.13818 -0.49095  0.697347 -0.781943
    ## 864cd4c2fffffff -1.44099  3.515481  0.30948 -4.43978  1.356960 -0.174755
    ## 864cd252fffffff  1.56618  0.919551 -0.02101  3.80921  2.355170  2.949771
    ## 864cd2c8fffffff  0.76473 -0.432716  0.02371 -1.39474  1.400371 -1.266733
    ## 864cd2097ffffff -0.20253 -0.596725  1.11607  1.11340 -0.694325 -0.472616
    ## 866725b17ffffff  0.30836 -0.467271  0.59677  0.50251 -0.059114 -1.072708
    ## 866725267ffffff  0.20504 -0.065593  0.33323 -1.27839 -3.822102  0.854995
    ## 864cd661fffffff  0.55570 -0.010231  0.51967 -0.83330  0.136383  0.154668
    ## 864cd219fffffff  0.20830  0.776660  0.06268  1.21328 -1.741837  0.251884
    ## 864cd5bafffffff  0.91929  0.918835 -1.05910 -0.14018 -0.968661  0.949882
    ## 864c8926fffffff -1.23174  1.803690 -1.06351 -0.85693  0.691731 -0.119896
    ## 864cd0c67ffffff  0.20830  0.776660  0.06268  1.21328 -1.741837  0.361752
    ## 864cd42dfffffff -1.79668  3.841274 -0.54159 -3.66271  1.539392 -0.600011
    ## 864cd64afffffff  0.30836 -0.467271  0.59677  0.50251 -0.059114 -0.959215
    ## 864cd2937ffffff -0.85165  3.501333  0.70701  2.51668 -1.799790 -1.302907
    ## 864cd28a7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.218657
    ## 864cd298fffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.219248
    ## 864cd666fffffff  0.20830  0.776660  0.06268  1.21328 -1.741837  0.277881
    ## 866725347ffffff  0.43143 -0.794334  1.06059  3.39123  2.137514  1.059976
    ## 864cd2c97ffffff  2.16549  1.328646 -0.26603  0.63458 -0.125794  2.186622
    ## 864cd6c17ffffff  0.18700  0.061663  3.00597 -0.11010  0.880804  1.428021
    ## 866725b37ffffff  0.87177  1.069423  0.66947  0.38043 -1.011174  1.002343
    ## 864cd5b47ffffff -1.34786  0.225007 -1.33845  0.76910  0.088372 -0.452879
    ## 864cd421fffffff -0.76905 -0.093106  0.55480  0.10026 -0.425686  0.114687
    ## 864cd60cfffffff  0.83264  0.292778  0.61410  0.03910 -0.471200  0.149175
    ## 866725bb7ffffff  0.56890 -0.527490  0.83110 -1.02500 -0.389175 -0.581026
    ## 864c89d77ffffff -0.20253 -0.596725  1.11607  1.11340 -0.694325 -0.243106
    ## 866725ba7ffffff  1.49191  0.560944 -1.54260 -1.85636 -1.347783  0.137103
    ## 864c8bad7ffffff -0.18769 -1.047408  2.33686 -4.25463 -2.199578 -0.166727
    ## 864cd0c1fffffff  0.30836 -0.467271  0.59677  0.50251 -0.059114 -0.910265
    ## 864cf269fffffff -0.99888  1.214683 -0.84864  0.81527 -0.372159 -0.233261
    ## 86672586fffffff  0.30836 -0.467271  0.59677  0.50251 -0.059114 -1.065250
    ## 86672524fffffff  0.98003  0.261273 -1.67277  0.73377 -1.898329  0.653595
    ## 864cd0cf7ffffff  0.20830  0.776660  0.06268  1.21328 -1.741837  0.197026
    ## 864cd5b1fffffff -0.99888  1.214683 -0.84864  0.81527 -0.372159 -0.562961
    ## 86672526fffffff -0.01757  0.007963 -0.41303  0.20274 -2.159843  0.532047
    ## 864cd2537ffffff  2.25683  0.479516 -3.27982  1.01628  3.789673  1.012969
    ## 864cc6697ffffff -0.76905 -0.093106  0.55480  0.10026 -0.425686 -0.183388
    ## 864cd5b67ffffff -0.76905 -0.093106  0.55480  0.10026 -0.425686 -0.118602
    ## 864cd20b7ffffff  0.88521  0.738888 -0.84639  1.52000 -1.477664  0.793986
    ## 864cd0d5fffffff  0.63345  0.621999  0.40338  0.35131 -1.044479  0.388468
    ## 864cd6497ffffff  1.13086  0.182472 -0.52326  0.07284 -0.149562  0.692033
    ## 86672584fffffff  0.53566  0.028624 -0.18520  0.90088 -1.782086 -0.559471
    ## 866725b47ffffff  1.13086  0.182472 -0.52326  0.07284 -0.149562  0.555861
    ## 864cd2d37ffffff  0.30836 -0.467271  0.59677  0.50251 -0.059114 -0.943946
    ## 864cd42e7ffffff -0.99888  1.214683 -0.84864  0.81527 -0.372159 -0.367150
    ## 864c898efffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.008759
    ## 864cd2567ffffff  0.16545 -0.265863  2.23590  1.87032  0.603398  0.892071
    ## 864cd2cdfffffff  0.55570 -0.010231  0.51967 -0.83330  0.136383  0.238591
    ## 864c89977ffffff  0.51177 -0.179879 -1.09277 -1.59835  1.154739 -0.677915
    ## 864cd694fffffff -0.59645 -1.177851  0.23285 -3.36754 -1.136323  0.116739
    ## 864c882c7ffffff  0.65400 -0.228438 -1.40504 -2.38954  1.509080 -0.860605
    ## 864cd6387ffffff -0.35481  0.268201  3.95769  1.92290  2.715045  0.387112
    ## 864cd6317ffffff  0.91755 -0.208671 -1.77463 -2.73724  1.974353 -1.516219
    ## 864cd092fffffff -0.24583 -0.104925  0.68645  0.76637  1.379528  0.015368
    ## 864c890f7ffffff -0.24583 -0.104925  0.68645  0.76637  1.379528  0.093558
    ## 864c89cf7ffffff  0.66605 -0.084911 -1.42124 -2.14925 -0.858048  0.137585
    ## 864cd0c77ffffff  0.28741 -0.432824  0.63118 -0.79732  0.063555 -0.802398
    ## 864cd2197ffffff  0.28741 -0.432824  0.63118 -0.79732  0.063555 -0.766250
    ## 864cd0c2fffffff  0.80420 -0.482044  0.06318 -0.94699  0.829636 -1.523782
    ## 864c89c8fffffff  0.46770 -0.334505 -0.89205 -3.25774  0.994946 -0.299147
    ## 864cd6acfffffff  0.42708  0.378350  2.80895  1.95283  3.738627  1.583657
    ## 864c88357ffffff  0.34239  0.101211 -1.10600  0.10139 -2.336747  0.363474
    ## 864cd0d8fffffff  0.34239  0.101211 -1.10600  0.10139 -2.336747  0.144036
    ## 864cd0c37ffffff  0.34239  0.101211 -1.10600  0.10139 -2.336747  0.209255
    ## 864cd5b0fffffff -1.51252  0.641497 -1.49038 -0.41333  0.840656 -0.425856
    ## 864cd2c9fffffff  2.25683  0.479516 -3.27982  1.01628  3.789673  0.999589
    ## 864cc611fffffff  0.06543  0.243664  0.75493 -0.25277  0.551769  0.624649
    ## 864cd40cfffffff -0.01757  0.007963 -0.41303  0.20274 -2.159843  0.739119
    ## 864cd674fffffff  0.43788 -0.545284  1.13818 -0.49095  0.697347 -0.478478
    ## 864c89bafffffff -1.17997 -0.127360 -1.02652 -0.67207  1.259900  0.672495
    ## 864cd62b7ffffff  0.20830  0.776660  0.06268  1.21328 -1.741837  0.284704
    ## 864cd6677ffffff  0.17570 -0.213938  0.89618 -2.12750 -3.373764  0.676225
    ## 864cd676fffffff  0.43788 -0.545284  1.13818 -0.49095  0.697347 -0.827698
    ## 864c8925fffffff -0.99888  1.214683 -0.84864  0.81527 -0.372159 -0.218293
    ## 864cc64dfffffff -0.20253 -0.596725  1.11607  1.11340 -0.694325 -0.255580
    ## 86672580fffffff  0.87523 -0.262470  0.07116 -2.67981  0.015609 -0.390983
    ## 864cd638fffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.243882
    ## 864cf37afffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.041717
    ## 864cd5b77ffffff -1.18535 -0.699740 -0.34607  0.26351  0.050522 -0.207539
    ## 864c898f7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.022350
    ## 864cd6b17ffffff -0.59645 -1.177851  0.23285 -3.36754 -1.136323  0.100409
    ## 864cd28b7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.192896
    ## 864cd469fffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.100135
    ## 864cd0d1fffffff  0.55570 -0.010231  0.51967 -0.83330  0.136383  0.161107
    ## 864cd4647ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.109775
    ## 864c89b6fffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.162496
    ## 864c89b47ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.145750
    ## 864c8b327ffffff -0.18769 -1.047408  2.33686 -4.25463 -2.199578  0.033363
    ## 864cd5b6fffffff -0.62239  0.543535  5.11342  2.08847  2.710809  1.056001
    ## 864cc66afffffff -0.56513 -0.657971  0.74432 -0.48100 -1.747208 -0.352899
    ## 864cd58cfffffff -0.56513 -0.657971  0.74432 -0.48100 -1.747208 -0.299544
    ## 866725a77ffffff -0.32332 -0.797203  2.23716  2.47125  0.960787  0.159691
    ## 864cd6327ffffff  0.07296 -0.726387  0.45798  0.97548  1.323600 -0.483642
    ## 864c89c87ffffff  0.76473 -0.432716  0.02371 -1.39474  1.400371 -0.968360
    ## 864cd0da7ffffff -0.38234  0.830816  2.04496 -0.83754 -0.378835  0.517567
    ## 864c89b07ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.125652
    ## 864cd6217ffffff -0.20253 -0.596725  1.11607  1.11340 -0.694325 -0.466742
    ## 864c8822fffffff  0.51177 -0.179879 -1.09277 -1.59835  1.154739 -0.828403
    ## 86672585fffffff  0.87523 -0.262470  0.07116 -2.67981  0.015609 -0.506037
    ## 864c89347ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.098595
    ## 864cd47b7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.018549
    ## 864cd6d77ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.001487
    ## 864cd46c7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.102308
    ## 864cd5b07ffffff -1.02930  0.917212  3.07342  0.27723  2.436511  1.325346
    ## 864c882cfffffff  1.20967  0.283538 -1.07378  0.19657 -1.384952  1.050564
    ## 864cd44b7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.059597
    ## 866725b6fffffff  0.51177 -0.179879 -1.09277 -1.59835  1.154739 -1.056394
    ## 866725b67ffffff  0.76473 -0.432716  0.02371 -1.39474  1.400371 -0.943917
    ## 864cd41a7ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.025139
    ## 864cc6017ffffff -1.04116 -1.099160 -0.21206 -0.14751 -0.883935 -0.009038
    ## 864cd4a57ffffff  0.91174  0.155074 -1.24777  0.81947 -0.476235  1.007007
    ## 864cd4087ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796  0.075898
    ## 866725acfffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.116998
    ## 864cd6a67ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.111342
    ## 864cd2d47ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.163805
    ## 864cf334fffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.026296
    ## 864c89ca7ffffff -0.24583 -0.104925  0.68645  0.76637  1.379528 -0.162085
    ## 864cd0897ffffff  0.21581  0.660293  1.80506 -1.09884 -0.080690  0.571113
    ## 864c898d7ffffff  0.07296 -0.726387  0.45798  0.97548  1.323600 -0.196149
    ## 864cd2997ffffff -1.03913 -1.009688 -1.03232  0.15555  0.368796 -0.167235
    ## 864cd665fffffff  0.24337 -0.463415  1.44255  2.46708 -0.489997 -0.060941
    ## 864cd5127ffffff -0.45746  1.865261  2.68764  0.25071  2.897026  0.342361
    ## 
    ## 
    ## Site constraints (linear combinations of constraining variables)
    ## 
    ##                     RDA1      RDA2     RDA3       RDA4      RDA5       PC1
    ## 864cd4537ffffff -1.02151 -0.527855 -1.18910 -4.554e-03  0.444613  0.046591
    ## 864c89a2fffffff -1.00420  0.639482 -0.25590 -4.514e-01  0.611982  0.086745
    ## 8667258efffffff  0.44748  0.358084  0.54120 -8.204e-01 -0.087562  0.200286
    ## 864cd4c97ffffff -0.91081 -0.314866 -0.73804 -4.948e-01  0.259898 -0.095158
    ## 864cd5b2fffffff -0.40867 -0.075698  0.62670 -1.674e-01 -0.008089  0.219062
    ## 864cd6637ffffff  0.58876 -0.359675  0.53475 -8.474e-01 -0.158041 -0.372291
    ## 864cd66e7ffffff  0.51990 -0.193229  0.18972  2.981e-01  0.365813  0.122148
    ## 866725b5fffffff  0.66643 -0.098858  0.23593  1.734e-01  0.416464 -0.560668
    ## 866725a27ffffff  0.88355 -0.116675  0.03751  5.331e-01  0.610941  0.291604
    ## 864cd648fffffff  0.69981  0.420692 -0.24538  1.243e-01 -0.515754 -0.324169
    ## 864cd6767ffffff  1.39416  0.170851 -0.66703 -1.185e-01  0.834548  0.435395
    ## 866725b0fffffff  1.28258  0.341634 -0.64840 -1.843e-02  0.123445  0.034852
    ## 86672534fffffff  1.04718  0.006965 -0.34463  4.597e-01  0.795844  1.819782
    ## 866725a67ffffff  0.10339 -0.451878  0.73366  9.756e-01  0.269344  0.404456
    ## 864cd2cd7ffffff  0.53563 -0.227876  0.18978  5.270e-01  0.465890 -0.513531
    ## 864cd2577ffffff -0.03613 -0.529508  0.98648  1.086e+00  0.166280 -0.530394
    ## 864cd0cc7ffffff  0.27031  0.551782 -0.54349  4.259e-01 -1.477110  0.670190
    ## 864cd0d0fffffff -0.03395 -0.418424  0.31674  4.456e-01  0.241448 -0.740696
    ## 864cd0dafffffff  0.13265  0.007108 -0.09467  3.507e-01 -0.266578  0.326485
    ## 866725b1fffffff  1.54426  0.187530 -0.60241 -2.129e-01  0.795714 -1.564106
    ## 86672535fffffff  0.10732  0.395467  0.54981 -4.079e-01 -0.458870  0.588039
    ## 864cd605fffffff  1.40298  0.187311 -0.60822 -2.041e-01  0.758243  0.091673
    ## 864cd2517ffffff  0.75527  0.644672 -0.81020  5.705e-01 -1.018242  1.234351
    ## 864cd649fffffff  0.20710  0.811615 -0.58487  9.762e-01 -2.177533 -0.572356
    ## 864cd60afffffff -0.02906 -0.532420  1.02044  5.500e-01 -0.019140 -0.935126
    ## 864cd600fffffff  0.09923 -0.448738  0.70109  9.628e-01  0.277307 -0.484061
    ## 864cd42cfffffff -1.10440  3.591317  0.01908  1.911e-01  0.567739 -1.304979
    ## 864cd679fffffff  1.22944  0.214761 -0.25820 -4.949e-01  0.586538  0.044144
    ## 864cd2cf7ffffff  0.14660 -0.412619  0.55776  9.405e-01  0.341557 -0.781943
    ## 864cd4c2fffffff -0.71714 -0.478783 -0.35572 -2.340e+00 -0.532282 -0.174755
    ## 864cd252fffffff  0.39107 -0.319260  0.41293  8.251e-01  0.425487  2.949771
    ## 864cd2c8fffffff  0.92340 -0.035915 -0.30311  5.105e-01  0.763751 -1.266733
    ## 864cd2097ffffff -0.19265 -0.541010  0.87629  1.075e+00  0.109762 -0.472616
    ## 866725b17ffffff  1.12559  0.234081 -0.43076 -3.112e-01 -0.165626 -1.072708
    ## 866725267ffffff  0.28496  0.290806 -0.16710 -2.316e-01 -1.473930  0.854995
    ## 864cd661fffffff  0.62700  0.047773  0.29814 -4.938e-01  0.255304  0.154668
    ## 864cd219fffffff  0.01386  0.509989 -0.54051  5.964e-01 -1.744581  0.251884
    ## 864cd5bafffffff -0.11460  0.476779 -0.36438  2.591e-01 -1.417625  0.949882
    ## 864c8926fffffff -1.15044  0.773433 -0.52811 -4.827e-01  0.749282 -0.119896
    ## 864cd0c67ffffff -0.33593  1.264323  1.12987 -3.572e-01  0.575263  0.361752
    ## 864cd42dfffffff -1.25978  3.541195  0.79620 -3.886e-02  1.409665 -0.600011
    ## 864cd64afffffff  0.01838 -0.528608  0.96474  6.929e-01  0.052136 -0.959215
    ## 864cd2937ffffff -0.18332  1.089564 -0.07641  7.143e-01 -1.035700 -1.302907
    ## 864cd28a7ffffff -0.35938 -0.519088  0.44652  9.445e-01  0.187496 -0.218657
    ## 864cd298fffffff -0.36580 -0.555753  0.48003  9.770e-01  0.245956 -0.219248
    ## 864cd666fffffff -0.12566  1.353497  0.49559  5.188e-02 -0.160108  0.277881
    ## 866725347ffffff  0.31957 -0.347608  0.52219  8.609e-01  0.378794  1.059976
    ## 864cd2c97ffffff  1.52715  0.252181 -0.91276  1.863e-02  1.018728  2.186622
    ## 864cd6c17ffffff -0.05784 -0.667447  1.10356 -1.374e+00 -0.742937  1.428021
    ## 866725b37ffffff  0.37717  0.349606 -0.10600 -5.153e-02 -1.549502  1.002343
    ## 864cd5b47ffffff -0.18176  0.418802 -0.26613  7.002e-01 -1.027616 -0.452879
    ## 864cd421fffffff -0.57801 -0.252719  0.17518 -1.017e+00 -0.147875  0.114687
    ## 864cd60cfffffff  1.08700  0.107127 -0.25481 -1.226e-01  0.632012  0.149175
    ## 866725bb7ffffff  0.74377 -0.231963  0.26313 -4.112e-01  0.156063 -0.581026
    ## 864c89d77ffffff -0.38195 -0.011785 -0.70444 -6.913e-01 -0.969989 -0.243106
    ## 866725ba7ffffff  1.38339  0.259038 -0.40954 -5.552e-01  0.655704  0.137103
    ## 864c8bad7ffffff  0.14709 -0.492413  0.70914 -4.477e-01 -0.199778 -0.166727
    ## 864cd0c1fffffff  0.66817  0.036859 -0.02310 -9.239e-01  0.221391 -0.910265
    ## 864cf269fffffff -1.00976 -0.060307 -0.80942  9.287e-02  0.599451 -0.233261
    ## 86672586fffffff  0.71064  0.416656 -0.37509  1.570e-01 -0.915672 -1.065250
    ## 86672524fffffff  0.35447  0.726705 -0.65428  7.224e-01 -1.751511  0.653595
    ## 864cd0cf7ffffff  0.33685  0.631790 -0.63724  5.207e-01 -1.286166  0.197026
    ## 864cd5b1fffffff -0.06251  0.953046 -0.94199  7.860e-01 -1.870399 -0.562961
    ## 86672526fffffff  0.41853  0.273552 -0.17740 -2.725e-01 -1.081737  0.532047
    ## 864cd2537ffffff  1.65401  0.290053 -0.99339 -2.736e-02  1.062979  1.012969
    ## 864cc6697ffffff -0.22538 -0.173361  0.13398  9.555e-01 -0.428922 -0.183388
    ## 864cd5b67ffffff -0.28493 -0.568180  0.63223  6.431e-01  0.096655 -0.118602
    ## 864cd20b7ffffff -0.07701  0.154755 -0.09369  8.807e-01 -1.054275  0.793986
    ## 864cd0d5fffffff  0.29718 -0.248797  0.28010  3.846e-01  0.355883  0.388468
    ## 864cd6497ffffff  0.30960  0.101103  0.47526  3.064e-01 -0.210415  0.692033
    ## 86672584fffffff  0.61993  0.527754 -0.47452  3.694e-01 -1.257668 -0.559471
    ## 866725b47ffffff  1.36803  0.502276 -0.51789 -2.296e-01  0.923528  0.555861
    ## 864cd2d37ffffff -0.17813 -0.548799  0.77382  9.266e-01  0.161667 -0.943946
    ## 864cd42e7ffffff -1.00852  1.747554  0.55205  9.071e-02  1.076184 -0.367150
    ## 864c898efffffff -0.98637 -0.480344 -1.06274  3.793e-01  0.555214 -0.008759
    ## 864cd2567ffffff -0.10616 -0.527940  0.97790  8.232e-01  0.078313  0.892071
    ## 864cd2cdfffffff  0.01016 -0.546443  0.92138 -2.485e-02 -0.175610  0.238591
    ## 864c89977ffffff -0.96669  0.039317 -1.97976 -2.139e-01 -0.356112 -0.677915
    ## 864cd694fffffff -0.43509 -0.606612  0.04733 -8.881e-01 -0.238195  0.116739
    ## 864c882c7ffffff  0.31800 -0.165567 -0.32084 -1.046e+00  0.027561 -0.860605
    ## 864cd6387ffffff  0.14396 -0.412304  0.52758  8.699e-01  0.328690  0.387112
    ## 864cd6317ffffff  1.44023  0.188894 -0.79879  1.225e-01  0.972380 -1.516219
    ## 864cd092fffffff -0.82433  1.003663  0.48286  2.931e-01  0.817045  0.015368
    ## 864c890f7ffffff -0.35330 -0.531070  0.33200 -3.584e-01 -0.242315  0.093558
    ## 864c89cf7ffffff  0.46291 -0.162545 -0.17102 -1.006e+00  0.108863  0.137585
    ## 864cd0c77ffffff  0.64437 -0.087986  0.02620 -7.884e-01  0.178898 -0.802398
    ## 864cd2197ffffff -0.09730 -0.437122  0.91015  1.340e-01 -0.083609 -0.766250
    ## 864cd0c2fffffff  0.74355 -0.097388 -0.29010  2.534e-01  0.626471 -1.523782
    ## 864c89c8fffffff  0.72586 -0.013552 -0.44598 -6.288e-01  0.425405 -0.299147
    ## 864cd6acfffffff -0.04830  1.374109  0.63309 -1.922e-01  0.881919  1.583657
    ## 864c88357ffffff  0.35378 -0.174270 -0.33898 -1.118e+00  0.113555  0.363474
    ## 864cd0d8fffffff  0.03332  0.749978 -0.89716  8.142e-01 -1.939402  0.144036
    ## 864cd0c37ffffff -0.02701 -0.436657  0.39360  8.762e-01  0.346035  0.209255
    ## 864cd5b0fffffff -0.09733  0.881625 -0.88556  6.170e-01 -1.784698 -0.425856
    ## 864cd2c9fffffff  1.65094  0.293969 -1.08489  1.104e-01  1.138712  0.999589
    ## 864cc611fffffff -0.76487  0.772372  0.45550 -1.243e-01  0.561262  0.624649
    ## 864cd40cfffffff -0.80948 -0.543290 -0.65165  5.080e-01  0.443400  0.739119
    ## 864cd674fffffff  0.13465 -0.614862  0.97500 -1.693e+00 -0.757265 -0.478478
    ## 864c89bafffffff -0.87854 -0.501405 -0.85883  3.439e-02  0.375007  0.672495
    ## 864cd62b7ffffff  0.19229 -0.075380  0.26109  2.527e-01 -0.685611  0.284704
    ## 864cd6677ffffff -0.05896 -0.309804  1.00447 -7.460e-01 -0.693462  0.676225
    ## 864cd676fffffff  0.44661 -0.293923  0.36204  8.248e-01  0.461120 -0.827698
    ## 864c8925fffffff -0.91240 -0.548563 -0.92473  7.377e-02  0.381350 -0.218293
    ## 864cc64dfffffff -0.33253 -0.330609  0.59610 -6.679e-01 -0.194600 -0.255580
    ## 86672580fffffff  0.62475 -0.295219  0.41578 -1.023e+00 -0.137509 -0.390983
    ## 864cd638fffffff -0.21046 -0.567684  0.81621  8.845e-01  0.120830 -0.243882
    ## 864cf37afffffff -1.08572 -0.536642 -1.36313  1.803e-01  0.551462  0.041717
    ## 864cd5b77ffffff -0.21192  0.118422 -0.01202  6.664e-01 -0.718862 -0.207539
    ## 864c898f7ffffff -0.90681 -0.539176 -0.90245  3.698e-01  0.475122 -0.022350
    ## 864cd6b17ffffff -0.31740 -0.587192  0.12870 -9.624e-01 -0.267696  0.100409
    ## 864cd28b7ffffff -0.43724 -0.555329  0.30341  8.939e-01  0.279405 -0.192896
    ## 864cd469fffffff -0.54856 -0.092016  0.34450  1.011e-02  0.215887 -0.100135
    ## 864cd0d1fffffff -0.02707 -0.342273  0.31014  7.263e-01  0.375567  0.161107
    ## 864cd4647ffffff -0.68692 -0.543183 -0.33374  6.795e-01  0.404786 -0.109775
    ## 864c89b6fffffff -1.36148 -0.524634 -2.06871 -3.115e-01  0.607380  0.162496
    ## 864c89b47ffffff -1.26035 -0.505026 -1.79045 -3.905e-01  0.509345  0.145750
    ## 864c8b327ffffff -0.07135 -0.543230  1.20941 -1.921e+00 -0.892539  0.033363
    ## 864cd5b6fffffff -0.31418 -0.561588  0.61900  1.037e+00  0.229168  1.056001
    ## 864cc66afffffff -0.28093 -0.199841  0.04598  7.766e-01 -0.404257 -0.352899
    ## 864cd58cfffffff -0.24594 -0.193029  0.57662  1.683e-01 -0.339091 -0.299544
    ## 866725a77ffffff  0.10010 -0.476638  0.74155  5.314e-01  0.109689  0.159691
    ## 864cd6327ffffff  0.43310 -0.240958  0.29414  4.196e-01  0.379675 -0.483642
    ## 864c89c87ffffff  0.04505  0.052339  0.31999 -8.386e-01  0.080719 -0.968360
    ## 864cd0da7ffffff -0.12448 -0.128583  0.53775 -2.536e-01  0.072277  0.517567
    ## 864c89b07ffffff -1.23851 -0.510621 -1.73852 -2.554e-01  0.534845  0.125652
    ## 864cd6217ffffff -0.21262 -0.562564  0.84138  1.077e+00  0.177068 -0.466742
    ## 864c8822fffffff  0.02398 -0.379918  0.06168 -6.067e-01 -0.001565 -0.828403
    ## 86672585fffffff  0.85311  0.033869 -0.03169 -5.029e-01 -0.279685 -0.506037
    ## 864c89347ffffff -0.78439 -0.599168 -0.64031 -9.180e-01 -0.063717  0.098595
    ## 864cd47b7ffffff -0.88367 -0.555488 -0.86369 -2.839e-02  0.326534  0.018549
    ## 864cd6d77ffffff -0.17379 -0.571256  0.84929 -1.328e+00 -0.717880 -0.001487
    ## 864cd46c7ffffff -0.68993 -0.549119 -0.34708  6.239e-01  0.387832 -0.102308
    ## 864cd5b07ffffff -0.63579  1.228567  0.75528 -4.479e-01  0.257730  1.325346
    ## 864c882cfffffff -0.10652 -0.550843  0.35407 -1.059e+00 -0.334646  1.050564
    ## 864cd44b7ffffff -0.75594  0.289412  0.09343 -1.212e+00  0.087409  0.059597
    ## 866725b6fffffff  1.16782 -0.001297 -0.20292 -6.230e-01  0.405816 -1.056394
    ## 866725b67ffffff  0.30133 -0.312141  0.73026 -1.390e+00 -0.980203 -0.943917
    ## 864cd41a7ffffff -0.93658 -0.508063 -0.95654  4.372e-01  0.528592 -0.025139
    ## 864cc6017ffffff -0.46534 -0.434226  0.17288 -1.625e+00 -0.429340 -0.009038
    ## 864cd4a57ffffff -0.56580 -0.592230 -0.05168 -4.434e-01 -0.066412  1.007007
    ## 864cd4087ffffff -0.89967 -0.291771 -0.69147 -6.765e-01  0.199038  0.075898
    ## 866725acfffffff -0.08694 -0.631358  1.03943 -4.479e-01 -0.406028 -0.116998
    ## 864cd6a67ffffff -0.44534 -0.542151  0.04634  2.261e-01  0.155436 -0.111342
    ## 864cd2d47ffffff -0.26907 -0.572054  0.61021  3.128e-01 -0.003254 -0.163805
    ## 864cf334fffffff -0.84689 -0.551711 -0.75438  2.857e-01  0.397718 -0.026296
    ## 864c89ca7ffffff  1.04210  0.115418 -1.22253 -4.442e-01  0.853139 -0.162085
    ## 864cd0897ffffff -0.48311  0.904844  1.20094  3.701e-05  0.462901  0.571113
    ## 864c898d7ffffff -0.55033 -0.380582 -0.27736 -3.259e-01  0.160689 -0.196149
    ## 864cd2997ffffff -0.33591 -0.578549  0.50673  4.754e-01  0.073852 -0.167235
    ## 864cd665fffffff -0.13318 -0.511679  0.64595  6.151e-01  0.127600 -0.060941
    ## 864cd5127ffffff -0.97482  2.900422  1.42907 -8.845e-01  0.989329  0.342361
    ## 
    ## 
    ## Biplot scores for constraining variables
    ## 
    ##                                                                             RDA1
    ## `ESA Trees`                                                             -0.56628
    ## `ESA Shrubland`                                                          0.89199
    ## `ESA Built-up`                                                          -0.34047
    ## `ESA Open water`                                                         0.07793
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter` -0.77607
    ##                                                                             RDA2
    ## `ESA Trees`                                                             -0.52719
    ## `ESA Shrubland`                                                          0.08247
    ## `ESA Built-up`                                                           0.84754
    ## `ESA Open water`                                                         0.43314
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter` -0.15766
    ##                                                                            RDA3
    ## `ESA Trees`                                                              0.1699
    ## `ESA Shrubland`                                                         -0.2375
    ## `ESA Built-up`                                                           0.2516
    ## `ESA Open water`                                                        -0.2711
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter` -0.5375
    ##                                                                            RDA4
    ## `ESA Trees`                                                              0.4657
    ## `ESA Shrubland`                                                         -0.1169
    ## `ESA Built-up`                                                          -0.1431
    ## `ESA Open water`                                                         0.2632
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter` -0.1198
    ##                                                                            RDA5
    ## `ESA Trees`                                                              0.3946
    ## `ESA Shrubland`                                                          0.3571
    ## `ESA Built-up`                                                           0.2863
    ## `ESA Open water`                                                        -0.8146
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`  0.2639
    ##                                                                         PC1
    ## `ESA Trees`                                                               0
    ## `ESA Shrubland`                                                           0
    ## `ESA Built-up`                                                            0
    ## `ESA Open water`                                                          0
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`   0

``` r
RsquareAdj(mi_fam_t_rda)$adj.r.squared
```

    ## [1] 0.04126945

``` r
vif.cca(mi_fam_t_rda)
```

    ##                                                             `ESA Trees` 
    ##                                                                3.255219 
    ##                                                         `ESA Shrubland` 
    ##                                                                2.612008 
    ##                                                          `ESA Built-up` 
    ##                                                                1.280805 
    ##                                                        `ESA Open water` 
    ##                                                                2.287137 
    ## `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter` 
    ##                                                                1.480785

``` r
escalado <- 1
plot(mi_fam_t_rda,
     scaling = escalado,
     display = c("sp", "lc", "cn"),
     main = paste("Triplot de RDA especies ~ var. GSL + ESA, escalamiento", escalado)
)
mi_fam_t_rda_sc1 <- scores(mi_fam_t_rda,
         choices = 1:2,
         scaling = escalado,
         display = "sp"
  )
text(mi_fam_t_rda, "species", col="red", cex=0.8, scaling=escalado)
arrows(0, 0,
       mi_fam_t_rda_sc1[, 1] * 0.9,
       mi_fam_t_rda_sc1[, 2] * 0.9,
       length = 0,
       lty = 1,
       col = "red"
)
```

![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

## Ecología espacial

Me basaré en el script que comienza por `ee_` de este
[repo](https://github.com/biogeografia-master/scripts-de-analisis-BCI),
el cual explico en el vídeo de “Ecología espacial” (vídeos 21) de la
lista de reproducción [“Ecología Numérica con R” de mi
canal](https://www.youtube.com/playlist?list=PLDcT2n8UzsCRDqjqSeqHI1wsiNOqpYmsJ).

> INICIA texto+código común entre secciones

Fijar un directorio de trabajo no es recomendable, mejor trabaja por
proyecto. En cualquier caso, si no quieres o no puedes crear un
proyecto, usa la sentencia que verás abajo, cambiando `TU_DIRECTORIO`
por la ruta del directorio donde tengas almacenados tus datos y tus
scripts.

``` r
if(interactive()) {
  tryCatch(
    setwd(dirname(rstudioapi::getSourceEditorContext()$path)),
    error = function(e) {
      cat('Probablemente ya el directorio de trabajo está fijado correctamente',
          'o quizá el directorio no existe. Este fue el error devuelto:\n')
      e
    })
}
```

Cargar paquetes.

``` r
library(vegan)
library(sf)
library(tidyverse)
library(tmap)
library(kableExtra)
library(foreach)
library(leaps)
library(caret)
gh_content <- 'https://raw.githubusercontent.com/'
gh_zonal_stats <- paste0(gh_content,
                         'geofis/zonal-statistics/0b2e95aaee87bf326cf132d28f4bd15220bb4ec7/out/')
repo_analisis <- 'biogeografia-master/scripts-de-analisis-BCI/master'
repo_sem202202 <- 'biogeografia-202202/material-de-apoyo/master/practicas/'
devtools::source_url(paste0(gh_content, repo_analisis, '/biodata/funciones.R'))
devtools::source_url(paste0(gh_content, repo_sem202202, 'train.R'))
devtools::source_url(paste0(gh_content, repo_sem202202, 'funciones.R'))
```

Carga tu matriz de comunidad, que habrás generado en la práctica 2, y
elige un umbral para especies raras o rangos de registros de presencia
para seleccionar especies en una nueva matriz de comunidad.

``` r
res <- 6 #Resolución H3, puedes elegir entre 4, 5, 6 o 7, pero cuidado con valores >=6
# IMPORTANTE: la resolución de las celdas H3, debe coincidir con la resolución
# a la cual generaste tu matriz de comunidad. De lo contrario, obtendrás error. Si tu 
# archivo RDS de matriz de comunidad se denomina "matriz_de_comunidad.RDS", y lo creaste
# usando resolución 4, cámbiale el nombre a "matriz_de_comunidad_res_5.RDS". Recuerda,
# puedes usar cualquier resolución, lo único importante es que las resolución usada en la
# creación de la matriz de comunidad, debe ser la misma que en la ambiental.
mc_orig <- readRDS('matriz_de_comunidad_cactaceae.RDS')
nrow(mc_orig) #Número de filas, equivale a número de hexágonos con registros de presencia
```

    ## [1] 155

``` r
ncol(mc_orig)  #Número de columnas, equivale a número de especies, riqueza
```

    ## [1] 44

``` r
data.frame(Especies = names(mc_orig)) %>% 
  kable(booktabs=T) %>%
  kable_styling(latex_options = c("HOLD_position", "scale_down")) %>%
  gsub(' NA ', '', .) #Lista de especies
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Especies
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Rhipsalis parasitica subsp. parasitica
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria quisqueyana (Alain) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Cylindropuntia caribaea (Britton & Rose) F.M.Knuth
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus hexagonus (L.) Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus polygonus (Lam.) Byles & G.D.Rowley
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus paniculatus (Lam.) D.R.Hunt
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera (Mill.) Haw.
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus triangularis (L.) D.R.Hunt
</td>
</tr>
<tr>
<td style="text-align:left;">
Stenocereus fimbriatus (Lam.) Lourteig
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea macracantha (Griseb.) Berger
</td>
</tr>
<tr>
<td style="text-align:left;">
Harrisia divaricata (Lam.) Backeb.
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis (L.) A.Berger
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus conoideus Buining & Brederoo
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera subsp. prolifera
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei (Monv. ex Lem.) Miq.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia taylorii Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus subsp. domingensis Areces
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus undulosus (DC.) D.Barrios & Majure
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta (Haw.) Haw.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia cochenillifera Karst.
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus undatus (Haw.) D.R.Hunt
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria bleo (Kunth) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus (Mill.) Urb.
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus (Berger) Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus megalanthus (Schum. ex Vaupel) Moran
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria portulacifolia (L.) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria marcanoi (Areces) Lodé
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. lemairei
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ×cubensis Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. praerupticola (Areces) Guiggi
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia repens Bello
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea Lem.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ficus-indica (L.) Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Cactaceae
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus royenii (L.) Byles & G.D.Rowley
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia aculeata Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis subsp. moniliformis
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia Mill.
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus jamacaru DC.
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus (A.Berger) Britton & Rose
</td>
</tr>
<tr>
<td style="text-align:left;">
Epiphyllum phyllanthus (L.) Haw.
</td>
</tr>
</tbody>
</table>

``` r
unique(word(names(mc_orig), 1, 1)) #Géneros representados
```

    ##  [1] "Rhipsalis"      "Leuenbergeria"  "Cylindropuntia" "Cereus"        
    ##  [5] "Pilosocereus"   "Leptocereus"    "Mammillaria"    "Selenicereus"  
    ##  [9] "Stenocereus"    "Consolea"       "Harrisia"       "Melocactus"    
    ## [13] "Opuntia"        "Cactaceae"      "Pereskia"       "Epiphyllum"

``` r
table(word(names(mc_orig), 1, 1)) #Número de especies por género
```

    ## 
    ##      Cactaceae         Cereus       Consolea Cylindropuntia     Epiphyllum 
    ##              1              2              4              1              1 
    ##       Harrisia    Leptocereus  Leuenbergeria    Mammillaria     Melocactus 
    ##              1              4              4              2              6 
    ##        Opuntia       Pereskia   Pilosocereus      Rhipsalis   Selenicereus 
    ##              8              2              2              1              4 
    ##    Stenocereus 
    ##              1

``` r
data.frame(`Número de hexágonos` = sort(colSums(mc_orig), decreasing = T), check.names = F) %>% 
  kable(booktabs=T) %>%
  kable_styling(latex_options = c("HOLD_position", "scale_down")) %>%
  gsub(' NA ', '', .) # Número de hexágonos en los que está presente cada especie
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">
Número de hexágonos
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Rhipsalis parasitica subsp. parasitica
</td>
<td style="text-align:right;">
30
</td>
</tr>
<tr>
<td style="text-align:left;">
Cylindropuntia caribaea (Britton & Rose) F.M.Knuth
</td>
<td style="text-align:right;">
21
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis (L.) A.Berger
</td>
<td style="text-align:right;">
19
</td>
</tr>
<tr>
<td style="text-align:left;">
Stenocereus fimbriatus (Lam.) Lourteig
</td>
<td style="text-align:right;">
17
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. lemairei
</td>
<td style="text-align:right;">
13
</td>
</tr>
<tr>
<td style="text-align:left;">
Harrisia divaricata (Lam.) Backeb.
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera subsp. prolifera
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus polygonus (Lam.) Byles & G.D.Rowley
</td>
<td style="text-align:right;">
11
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus paniculatus (Lam.) D.R.Hunt
</td>
<td style="text-align:right;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea macracantha (Griseb.) Berger
</td>
<td style="text-align:right;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei (Monv. ex Lem.) Miq.
</td>
<td style="text-align:right;">
9
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia taylorii Britton & Rose
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus subsp. domingensis Areces
</td>
<td style="text-align:right;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia cochenillifera Karst.
</td>
<td style="text-align:right;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria quisqueyana (Alain) Lodé
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Mammillaria prolifera (Mill.) Haw.
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus triangularis (L.) D.R.Hunt
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria portulacifolia (L.) Lodé
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus hexagonus (L.) Mill.
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta (Haw.) Haw.
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Pilosocereus royenii (L.) Byles & G.D.Rowley
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea moniliformis subsp. moniliformis
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus undulosus (DC.) D.Barrios & Majure
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus undatus (Haw.) D.R.Hunt
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus intortus (Mill.) Urb.
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ×cubensis Britton & Rose
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Cactaceae
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia aculeata Mill.
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria bleo (Kunth) Lodé
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Leuenbergeria marcanoi (Areces) Lodé
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus lemairei subsp. praerupticola (Areces) Guiggi
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia repens Bello
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Consolea Lem.
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia Mill.
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Melocactus conoideus Buining & Brederoo
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus (Berger) Britton & Rose
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Selenicereus megalanthus (Schum. ex Vaupel) Moran
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Opuntia ficus-indica (L.) Mill.
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Pereskia Mill.
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Cereus jamacaru DC.
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Leptocereus (A.Berger) Britton & Rose
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Epiphyllum phyllanthus (L.) Haw.
</td>
<td style="text-align:right;">
1
</td>
</tr>
</tbody>
</table>

``` r
# Usa el vector anterior para determinar un umbral o rango de registros para filtrar tu matriz
# ¿En cuántos hexágonos está cada especie? Filtra tus datos usando tu propio criterio.
# Especies que aparecen en pocos hexágonos se consideran "raras". Por ejemplo, si una especie sólo
# aparece en un hexágono en todo el país, es un "singleton", si en dos, "doubleton", y así.
# Estas especies podrían contribuir a generar "ruido" en análisis posteriores, se recomienda excluirlas.
# Elige un valor mínimo (representado por único número entero) o por un rango de enteros (e.g. de 10 a 20),
# para seleccionar las especies que estén mejor representadas de acuerdo a tu criterio.
# Por ejemplo, si usas el valor m, el script considerará a este valor como "el número mínimo de hexágonos
# en los que está representada una especie, y creará una matriz de comunidad de especies seleccionadas
# que están presentes en m hexágonos o más. Si eliges un rango, por ejemplo [m,n], el script generará
# una matriz de comunidad que representadas un mínimo de m hexágonos y un máximo de n hexágonos.
# (ambos extremos inclusive).
en_cuantos_hex <- 2
# Explicación: "en_cuantos_hex <- X", donde X es el número de hexágonos mínimo donde cada especie
# debe estar presente. IMPORTANTE: elige TU PROPIO umbral.
{if(length(en_cuantos_hex)==1) selector <- en_cuantos_hex:max(colSums(mc_orig)) else
  if(length(en_cuantos_hex)==2)
    selector <- min(en_cuantos_hex):max(en_cuantos_hex) else
      stop('Debes indicar uno o dos valores numéricos')}
selector
```

    ##  [1]  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
    ## [26] 27 28 29 30

``` r
mc_orig_seleccionadas <- mc_orig[, colSums(mc_orig) %in% selector]

# Mínimo número de especies por hexágono
data.frame(`Número de especies por hexágono` = sort(rowSums(mc_orig), decreasing = T), check.names = F) %>% 
  kable(booktabs=T) %>%
  kable_styling(latex_options = c("HOLD_position", "scale_down")) %>%
  gsub(' NA ', '', .) # Número de hexágonos en los que está presente cada especie
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">
Número de especies por hexágono
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
864cd6acfffffff
</td>
<td style="text-align:right;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b0fffffff
</td>
<td style="text-align:right;">
9
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2c97ffffff
</td>
<td style="text-align:right;">
9
</td>
</tr>
<tr>
<td style="text-align:left;">
86672534fffffff
</td>
<td style="text-align:right;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd605fffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2517ffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd252fffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6387ffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b07ffffff
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b5fffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd648fffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6767ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6c17ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b37ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2567ffffff
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd66e7ffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
866725a27ffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d0fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0dafffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b1fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42cfffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd60cfffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c2fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b6fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864c882cfffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd665fffffff
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b2fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2577ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0cc7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2c8fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725267ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5bafffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42dfffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2937ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b47ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725bb7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725ba7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
86672524fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2537ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd20b7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d5fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6497ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b47ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6317ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89cf7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b0fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2c9fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b77ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89c87ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd44b7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b67ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6017ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0897ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4537ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89a2fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
8667258efffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4c97ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6637ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725a67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2cd7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4247ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672535fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd649fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd60afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd600fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd679fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2cf7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4c2fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2097ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b17ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd661fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd219fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8926fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd64afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd28a7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd298fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd666fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725347ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6ca7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd421fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89d77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8bad7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c1fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf269fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672586fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0cf7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b1fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672526fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6697ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5b67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672584fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2d37ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42e7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c898efffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2cdfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89977ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd694fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c882c7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd092fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c890f7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2197ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89c8fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c88357ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d8fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0c37ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc611fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd40cfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd674fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89bafffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd62b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6677ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd676fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8925fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc64dfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672580fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd638fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf37afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c898f7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6b17ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd28b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd469fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0d1fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4647ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89b6fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89b47ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8b327ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc66afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd58cfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725a77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6327ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0da7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89b07ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6217ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8ba8fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8822fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
86672585fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89347ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd47b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6d77ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd46c7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725b6fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd41a7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4a57ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4087ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
866725acfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd6a67ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2d47ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf334fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89ca7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c898d7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd2997ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8908fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5127ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
</tbody>
</table>

``` r
min_especies_por_hex <- 1
# Explicación: "min_especies_por_hex <- Y", donde Y es el número mínimo (inclusive) de especies
# que debe existir en cada hexágono. Por debajo de dicho valor, el hexágono es excluido.
mi_fam <- mc_orig_seleccionadas[rowSums(mc_orig_seleccionadas)>=min_especies_por_hex, ]
nrow(mi_fam)
```

    ## [1] 151

``` r
# mi_fam <- mc_orig_seleccionadas[!rowSums(mc_orig_seleccionadas)==0, ] #Elimina filas sin registros
# rowSums(mi_fam) #Riqueza por hexágonos con especies seleccionadas. Comentado por extenso
all(rowSums(mi_fam)>0) #Debe ser TRUE: todos los hexágonos tienen al menos 1 registro
```

    ## [1] TRUE

``` r
ncol(mi_fam) #Riqueza de especies
```

    ## [1] 36

``` r
# Usar nombres cortos o abreviados para las especies
nombres_largos <- colnames(mi_fam)
(colnames(mi_fam) <- make.cepnames(word(colnames(mi_fam), 1, 2)))
```

    ##  [1] "Rhippara"   "Leuequis"   "Cylicari"   "Cerehexa"   "Pilopoly"  
    ##  [6] "Leptpani"   "Mammprol"   "Seletria"   "Stenfimb"   "Consmacr"  
    ## [11] "Harrdiva"   "Consmoni"   "Mammprol.1" "Melolema"   "Opuntayl"  
    ## [16] "Melointo"   "Leptundu"   "Opunstri"   "Opuncoch"   "Seleunda"  
    ## [21] "Leuebleo"   "Melointo.1" "Leptwein"   "Leueport"   "Leuemarc"  
    ## [26] "Melolema.1" "Opuncube"   "Melolema.2" "Opunrepe"   "Opunstri.1"
    ## [31] "ConsLem"    "OpunMill"   "NA."        "Piloroye"   "Pereacul"  
    ## [36] "Consmoni.1"

``` r
(df_equivalencias <- data.frame(
  nombre_original = nombres_largos,
  abreviado = colnames(mi_fam)))
```

    ##                                                  nombre_original  abreviado
    ## 1                         Rhipsalis parasitica subsp. parasitica   Rhippara
    ## 2                         Leuenbergeria quisqueyana (Alain) Lodé   Leuequis
    ## 3             Cylindropuntia caribaea (Britton & Rose) F.M.Knuth   Cylicari
    ## 4                                    Cereus hexagonus (L.) Mill.   Cerehexa
    ## 5               Pilosocereus polygonus (Lam.) Byles & G.D.Rowley   Pilopoly
    ## 6                        Leptocereus paniculatus (Lam.) D.R.Hunt   Leptpani
    ## 7                             Mammillaria prolifera (Mill.) Haw.   Mammprol
    ## 8                        Selenicereus triangularis (L.) D.R.Hunt   Seletria
    ## 9                         Stenocereus fimbriatus (Lam.) Lourteig   Stenfimb
    ## 10                         Consolea macracantha (Griseb.) Berger   Consmacr
    ## 11                            Harrisia divaricata (Lam.) Backeb.   Harrdiva
    ## 12                           Consolea moniliformis (L.) A.Berger   Consmoni
    ## 13                        Mammillaria prolifera subsp. prolifera Mammprol.1
    ## 14                      Melocactus lemairei (Monv. ex Lem.) Miq.   Melolema
    ## 15                               Opuntia taylorii Britton & Rose   Opuntayl
    ## 16                 Melocactus intortus subsp. domingensis Areces   Melointo
    ## 17                Leptocereus undulosus (DC.) D.Barrios & Majure   Leptundu
    ## 18                                   Opuntia stricta (Haw.) Haw.   Opunstri
    ## 19                                 Opuntia cochenillifera Karst.   Opuncoch
    ## 20                          Selenicereus undatus (Haw.) D.R.Hunt   Seleunda
    ## 21                               Leuenbergeria bleo (Kunth) Lodé   Leuebleo
    ## 22                              Melocactus intortus (Mill.) Urb. Melointo.1
    ## 23 Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose   Leptwein
    ## 24                        Leuenbergeria portulacifolia (L.) Lodé   Leueport
    ## 25                          Leuenbergeria marcanoi (Areces) Lodé   Leuemarc
    ## 26                           Melocactus lemairei subsp. lemairei Melolema.1
    ## 27                              Opuntia ×cubensis Britton & Rose   Opuncube
    ## 28      Melocactus lemairei subsp. praerupticola (Areces) Guiggi Melolema.2
    ## 29                                          Opuntia repens Bello   Opunrepe
    ## 30          Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson Opunstri.1
    ## 31                                                 Consolea Lem.    ConsLem
    ## 32                                                 Opuntia Mill.   OpunMill
    ## 33                                                     Cactaceae        NA.
    ## 34                  Pilosocereus royenii (L.) Byles & G.D.Rowley   Piloroye
    ## 35                                       Pereskia aculeata Mill.   Pereacul
    ## 36                     Consolea moniliformis subsp. moniliformis Consmoni.1

Transforma la matriz de comunidad. Este paso es importante, lo explico
[aquí](https://www.youtube.com/watch?v=yQ10lp0-nHc&list=PLDcT2n8UzsCRDqjqSeqHI1wsiNOqpYmsJ&index=10)

``` r
mi_fam_t <- decostand(mi_fam, 'hellinger') #Hellinger
# Otras transformaciones posibles con datos de presencia/ausencia
# mi_fam_t <- decostand(mi_fam, 'normalize') #Chord
# mi_fam_t <- decostand(log1p(mi_fam), 'normalize') #Chord
# mi_fam_t <- decostand(mi_fam, 'chi.square') #Chi-square
```

Genera la matriz ambiental a partir del archivo de estadística zonal por
celdas H3 de República Dominicana, de acuerdo con la resolución que
prefieras. Para el ejemplo, usé la resolución 5, pero puedes usar/probar
con otra, para lo cual, sólo tendrías que cambiar el objeto `res <- X`,
donde `X` puede ser un número cualquiera entre 4 y 7.

Para aprender más sobre la fuente de estadística zonal de República
Dominicana, que contiene un conjunto de más de 100 variables resumidas
por celdas H3, visita [este
repo](https://github.com/geofis/zonal-statistics). Debes visitar dicho
repo para poder citarlo apropiadamente.

``` r
#Matriz ambiental
tmpfile <- tempfile()
download.file(
  url = paste0(gh_zonal_stats, 'list_with_all_sources_all_resolution.RDS'),
  tmpfile, method = if(Sys.info()[['sysname']]=='Windows') 'curl' else 'libcurl')
tmprds <- readRDS(tmpfile)
za <- tmprds[[paste0('H3 resolution: ', res)]]
# Las siguientes líneas están comentadas, porque producen muchos mapas. Descoméntalas y ejecútalas si quieres verlos
# za %>% st_as_sf('geom') %>%
#   pivot_longer(cols = -matches('base|hex_id|geom')) %>% 
#   tm_shape() + tm_fill(col = 'value') +
#   tm_facets(by = 'name', free.scales = T)
za_intermedia <- za %>%
  st_drop_geometry() %>% 
  select(-matches(c(' base'))) %>% 
  column_to_rownames('hex_id')
env <- za_intermedia[match(rownames(mi_fam), rownames(za_intermedia)), ]
all(rownames(mi_fam) == rownames(env)) #Si es TRUE, sigue adelante
```

    ## [1] TRUE

Se puede probar con un subconjunto de variables, generando una matriz
ambiental que seleccione variables según el grupo al que pertenecen, con
ayuda del prefijo.

``` r
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^ESA '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^G90-GEOM '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^CH-BIO '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^GHH '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^GSL '))
# env_selecionada <- env %>%
#   st_drop_geometry() %>%
#   dplyr::select(matches('^CGL '))
```

> FINALIZA texto+código común entre secciones

Desde aquí, la parte correspondiente a ecología espacial propiamente.

Dado que Has elegido trabajar con ecología espacial, te tengo algunas
observaciones de bienvenida:

1.  Una de las aplicaciones más comunes, dentro de esta rama, es la
    generación de modelos de distribución de especies. Aclaro que no he
    incluido esta herramienta en esta sección, y he preferido
    presentarte material sobre el análisis de “núcleo duro” de patrones
    espaciales de especies y variables ambientales.

2.  Considera trabajar a distintas resoluciones de hexágonos H3, por
    ejemplo, a resoluciones 4 y 5, porque verás patrones claramente
    diferenciados, y descubrirás efectos que probablemente podrías
    ocultar o sobreexponer si trabajaras sólo con una resolución. Crea
    resultados para dos resoluciones, y compara las salidas.

3.  Para evitar discontinuidades y garantizar la integridad de la
    vecindad, es necesario trabajar con un objeto espacial que cubra
    todo el país, con independencia de que contenga hexágonos sin
    registros de presencia de GBIF. La continuidad en los análisis de
    ecología espacial, es fundamental para garantizar la vecindad. Un
    hexágono sin registros de presencia es un hábitat potencial de las
    especies de la comunidad, no un vacío de discontinuidades. En esta
    sección, “el territorio manda”, por lo que oportunamente le
    adosaremos una columna con los registros de presencia al objeto de
    estadística zonal (`za`) traído del repo correspondiente.

4.  Nota que los objetos `min_especies_por_hex` y `en_cuantos_hex`
    tienen asignados valor 1 (sólo en esta sección de ecología
    espacial), lo cual significa que, en pocas palabras, el objeto
    `mi_fam`, que es con el que hacemos la mayor parte de los análisis
    en secciones anteriores, es exactamente igual a la matriz de
    comunidad original (si ejecutas `all(mc_orig == mi_fam)` recibirás
    `TRUE`, es decir, iguales). En otras secciones, filtramos la matriz
    original para quitar hexágonos con pocos registros o especies que
    están poco representadas. y así producir una matriz de comunidad de
    la cual poder extraer patrones específicos, algo necesario en los
    análisis anteriores. En este caso, nos interesa conservar la matriz
    íntegra.

5.  Nos interesa conservar los nombres largos en la matriz de comunidad
    `mi_fam`, así que los restablezco aquí:

``` r
colnames(mi_fam) <- colnames(mc_orig_seleccionadas)
colnames(mi_fam_t) <- colnames(mc_orig_seleccionadas)
```

Cargaré algunos paquetes específicos:

``` r
library(ape)
library(spdep)
library(ade4)
library(adegraphics)
library(adespatial)
library(gridExtra)
library(grid)
library(gtable)
source('https://raw.githubusercontent.com/maestria-geotel-master/unidad-3-asignacion-1-vecindad-autocorrelacion-espacial/master/lisaclusters.R')
```

Comienza el análisis espacial. Lo primero que necesitamos es crear un
objeto de vecindad. Como ya señalé, necesitamos una superficie continua
del territorio en cuestión, además de que la transformaremos a objeto
clase `sp`.

``` r
# Transformar matriz ambiental en objeto sp, clase del paquete sp, para generar vecindad.
# Este paquete será retirado del CRAN en 2023; es importante tenerlo presente.
# Retomo el objeto za de arriba, y genero objetos de clase sf y sp a partir de él
za_sf <- za %>%
  select(-matches(c(' base'))) %>% 
  column_to_rownames('hex_id') %>% st_as_sf
riq_hex <- mi_fam %>% mutate(riqueza = rowSums(.)) %>%
  rownames_to_column('hex_id') %>% select (riqueza, hex_id)
env_sf <- za_sf %>%
  rownames_to_column('hex_id') %>% 
  left_join(riq_hex, by = 'hex_id')
env_sp <- env_sf %>% as_Spatial
(vecindad <- env_sp %>% poly2nb)
```

    ## Neighbour list object:
    ## Number of regions: 2018 
    ## Number of nonzero links: 11528 
    ## Percentage nonzero weights: 0.2830816 
    ## Average number of links: 5.712587 
    ## 1 region with no links:
    ## 1934

``` r
islas <- which(card(vecindad)==0)
if(length(islas) > 0) {
  cat('\nHay islas, en concreto, la(s) fila(s)', islas, 'de env_sf\n')
  env_sf <- env_sf[-islas, ]
  env_sp <- env_sf %>% as_Spatial
  (vecindad <- env_sp %>% poly2nb)
  islas <- which(card(vecindad)==0)
  cat('\nIsla(s) eliminada(s)\n')
}
```

    ## 
    ## Hay islas, en concreto, la(s) fila(s) 1934 de env_sf
    ## 
    ## Isla(s) eliminada(s)

``` r
if(length(islas) == 0) cat('No hay isla(s). Proseguir con el script')
```

    ## No hay isla(s). Proseguir con el script

``` r
(pesos_b <- nb2listw(vecindad, style = 'B'))
```

    ## Characteristics of weights list object:
    ## Neighbour list object:
    ## Number of regions: 2017 
    ## Number of nonzero links: 11528 
    ## Percentage nonzero weights: 0.2833624 
    ## Average number of links: 5.715419 
    ## 
    ## Weights style: B 
    ## Weights constants summary:
    ##      n      nn    S0    S1     S2
    ## B 2017 4068289 11528 23056 268408

``` r
plot(env_sp)
centroides <- env_sf %>% st_centroid
env_xy <- centroides %>% st_coordinates %>% as.data.frame
plot(vecindad, coords = env_xy, add =T , col = 'red')
```

![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

Igualmente, será necesario una matriz de comunidad transformada
“espacial”, con la cual hacer los cálculos de autocorrelación. En este
caso, calcularé la autocorrelación por especies, usando la matriz
transformada Hellinger. Normalmente, cuando se trata de territorios tan
grandes como nuestro país, los datos de incidencia (o abudancia, si los
tuviéramos), no están fuertemente autocorrelacionados espacialmente. No
obstante, los datos ambientales suelen estar autocorrelacionados; lo
veremos más adelante.

``` r
mi_fam_t_all <- env_sf %>% select(hex_id) %>%
  left_join(mi_fam_t %>% rownames_to_column('hex_id'), by = 'hex_id') %>%
  replace(is.na(.), 0) %>% 
  st_drop_geometry %>% select(-hex_id)
suppressWarnings(auto_spp_hel <- calcular_autocorrelacion(
  df_fuente = mi_fam_t_all,
  orden = 9,
  obj_vecindad = vecindad,
  pos_var = '(matriz Hellinger)'))
print(auto_spp_hel, digits = 2, p.adj.method = 'holm')
```

    ## $`Rhipsalis parasitica subsp. parasitica`
    ## Spatial correlogram for Rhipsalis parasitica subsp. parasitica (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.9e-02    -5.0e-04  1.7e-04              3.1            0.02 *  
    ## 2 (2017)  4.4e-02    -5.0e-04  9.1e-05              4.7           3e-05 ***
    ## 3 (2017)  7.9e-03    -5.0e-04  6.4e-05              1.0            1.00    
    ## 4 (2017)  1.5e-03    -5.0e-04  5.1e-05              0.3            1.00    
    ## 5 (2017) -1.4e-03    -5.0e-04  4.3e-05             -0.1            1.00    
    ## 6 (2017) -5.7e-03    -5.0e-04  3.7e-05             -0.8            1.00    
    ## 7 (2017) -1.7e-03    -5.0e-04  3.3e-05             -0.2            1.00    
    ## 8 (2017)  8.3e-03    -5.0e-04  3.0e-05              1.6            0.76    
    ## 9 (2017)  1.1e-03    -5.0e-04  2.8e-05              0.3            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leuenbergeria quisqueyana (Alain) Lodé`
    ## Spatial correlogram for Leuenbergeria quisqueyana (Alain) Lodé (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.2e-02    -5.0e-04  1.4e-04              4.4           8e-05 ***
    ## 2 (2017)  1.1e-02    -5.0e-04  7.6e-05              1.4             1.0    
    ## 3 (2017)  7.0e-02    -5.0e-04  5.4e-05              9.6          <2e-16 ***
    ## 4 (2017) -3.1e-03    -5.0e-04  4.2e-05             -0.4             1.0    
    ## 5 (2017)  9.0e-03    -5.0e-04  3.6e-05              1.6             0.8    
    ## 6 (2017) -3.1e-03    -5.0e-04  3.1e-05             -0.5             1.0    
    ## 7 (2017) -3.0e-03    -5.0e-04  2.8e-05             -0.5             1.0    
    ## 8 (2017) -2.8e-03    -5.0e-04  2.5e-05             -0.5             1.0    
    ## 9 (2017) -2.6e-03    -5.0e-04  2.3e-05             -0.4             1.0    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Cylindropuntia caribaea (Britton & Rose) F.M.Knuth`
    ## Spatial correlogram for Cylindropuntia caribaea (Britton & Rose) F.M.Knuth (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.7e-02    -5.0e-04  1.7e-04              2.9            0.02 *  
    ## 2 (2017)  3.8e-02    -5.0e-04  8.8e-05              4.1           3e-04 ***
    ## 3 (2017)  2.2e-02    -5.0e-04  6.2e-05              2.8            0.02 *  
    ## 4 (2017)  3.1e-02    -5.0e-04  4.9e-05              4.5           5e-05 ***
    ## 5 (2017)  4.9e-02    -5.0e-04  4.1e-05              7.6           2e-13 ***
    ## 6 (2017)  9.4e-03    -5.0e-04  3.6e-05              1.6            0.30    
    ## 7 (2017)  6.6e-03    -5.0e-04  3.2e-05              1.2            0.42    
    ## 8 (2017)  8.4e-04    -5.0e-04  2.9e-05              0.2            0.80    
    ## 9 (2017)  1.9e-02    -5.0e-04  2.7e-05              3.8           1e-03 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Cereus hexagonus (L.) Mill.`
    ## Spatial correlogram for Cereus hexagonus (L.) Mill. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.1e-01    -5.0e-04  1.3e-04              9.7          <2e-16 ***
    ## 2 (2017) -1.9e-03    -5.0e-04  6.8e-05             -0.2               1    
    ## 3 (2017) -1.9e-03    -5.0e-04  4.8e-05             -0.2               1    
    ## 4 (2017) -1.8e-03    -5.0e-04  3.8e-05             -0.2               1    
    ## 5 (2017) -1.9e-03    -5.0e-04  3.2e-05             -0.2               1    
    ## 6 (2017) -2.0e-03    -5.0e-04  2.8e-05             -0.3               1    
    ## 7 (2017) -2.0e-03    -5.0e-04  2.5e-05             -0.3               1    
    ## 8 (2017) -2.0e-03    -5.0e-04  2.2e-05             -0.3               1    
    ## 9 (2017) -2.0e-03    -5.0e-04  2.1e-05             -0.3               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Pilosocereus polygonus (Lam.) Byles & G.D.Rowley`
    ## Spatial correlogram for Pilosocereus polygonus (Lam.) Byles & G.D.Rowley (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided  
    ## 1 (2017)  2.8e-02    -5.0e-04  1.5e-04              2.3            0.14  
    ## 2 (2017)  2.2e-02    -5.0e-04  8.0e-05              2.5            0.09 .
    ## 3 (2017)  2.4e-02    -5.0e-04  5.7e-05              3.2            0.01 *
    ## 4 (2017) -4.5e-03    -5.0e-04  4.5e-05             -0.6            1.00  
    ## 5 (2017) -4.7e-03    -5.0e-04  3.8e-05             -0.7            1.00  
    ## 6 (2017)  1.9e-03    -5.0e-04  3.3e-05              0.4            1.00  
    ## 7 (2017)  6.1e-04    -5.0e-04  2.9e-05              0.2            1.00  
    ## 8 (2017) -5.1e-03    -5.0e-04  2.7e-05             -0.9            1.00  
    ## 9 (2017) -3.2e-03    -5.0e-04  2.4e-05             -0.5            1.00  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leptocereus paniculatus (Lam.) D.R.Hunt`
    ## Spatial correlogram for Leptocereus paniculatus (Lam.) D.R.Hunt (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.2e-02    -5.0e-04  1.5e-04              3.5           0.004 ** 
    ## 2 (2017)  4.6e-02    -5.0e-04  8.1e-05              5.2           2e-06 ***
    ## 3 (2017)  3.8e-02    -5.0e-04  5.7e-05              5.1           3e-06 ***
    ## 4 (2017)  2.3e-02    -5.0e-04  4.5e-05              3.5           0.004 ** 
    ## 5 (2017)  7.3e-03    -5.0e-04  3.8e-05              1.3           0.577    
    ## 6 (2017)  4.2e-03    -5.0e-04  3.3e-05              0.8           0.577    
    ## 7 (2017)  1.8e-02    -5.0e-04  2.9e-05              3.3           0.004 ** 
    ## 8 (2017)  6.2e-03    -5.0e-04  2.7e-05              1.3           0.577    
    ## 9 (2017)  1.4e-02    -5.0e-04  2.5e-05              2.9           0.013 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Mammillaria prolifera (Mill.) Haw.`
    ## Spatial correlogram for Mammillaria prolifera (Mill.) Haw. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -2.7e-03    -5.0e-04  1.4e-04             -0.2             1.0
    ## 2 (2017) -2.7e-03    -5.0e-04  7.3e-05             -0.3             1.0
    ## 3 (2017) -3.1e-03    -5.0e-04  5.1e-05             -0.4             1.0
    ## 4 (2017)  7.7e-03    -5.0e-04  4.1e-05              1.3             1.0
    ## 5 (2017) -3.2e-03    -5.0e-04  3.4e-05             -0.5             1.0
    ## 6 (2017)  2.1e-03    -5.0e-04  3.0e-05              0.5             1.0
    ## 7 (2017)  1.5e-03    -5.0e-04  2.6e-05              0.4             1.0
    ## 8 (2017) -2.7e-03    -5.0e-04  2.4e-05             -0.4             1.0
    ## 9 (2017)  1.1e-02    -5.0e-04  2.2e-05              2.4             0.1
    ## 
    ## $`Selenicereus triangularis (L.) D.R.Hunt`
    ## Spatial correlogram for Selenicereus triangularis (L.) D.R.Hunt (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -2.9e-03    -5.0e-04  1.3e-04             -0.2             1.0
    ## 2 (2017)  1.8e-02    -5.0e-04  7.0e-05              2.2             0.2
    ## 3 (2017) -2.7e-03    -5.0e-04  5.0e-05             -0.3             1.0
    ## 4 (2017)  1.0e-02    -5.0e-04  3.9e-05              1.7             0.6
    ## 5 (2017) -3.0e-03    -5.0e-04  3.3e-05             -0.4             1.0
    ## 6 (2017) -2.9e-03    -5.0e-04  2.9e-05             -0.4             1.0
    ## 7 (2017)  1.1e-02    -5.0e-04  2.5e-05              2.3             0.2
    ## 8 (2017) -2.6e-03    -5.0e-04  2.3e-05             -0.4             1.0
    ## 9 (2017) -2.7e-03    -5.0e-04  2.1e-05             -0.5             1.0
    ## 
    ## $`Stenocereus fimbriatus (Lam.) Lourteig`
    ## Spatial correlogram for Stenocereus fimbriatus (Lam.) Lourteig (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.9e-02    -5.0e-04  1.6e-04              4.7           2e-05 ***
    ## 2 (2017)  4.7e-02    -5.0e-04  8.5e-05              5.1           3e-06 ***
    ## 3 (2017)  1.7e-02    -5.0e-04  6.0e-05              2.3            0.12    
    ## 4 (2017)  6.9e-02    -5.0e-04  4.8e-05             10.0          <2e-16 ***
    ## 5 (2017)  3.4e-03    -5.0e-04  4.0e-05              0.6            1.00    
    ## 6 (2017)  8.7e-03    -5.0e-04  3.5e-05              1.6            0.48    
    ## 7 (2017)  4.7e-03    -5.0e-04  3.1e-05              0.9            1.00    
    ## 8 (2017)  1.2e-02    -5.0e-04  2.8e-05              2.4            0.09 .  
    ## 9 (2017) -3.3e-03    -5.0e-04  2.6e-05             -0.6            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Consolea macracantha (Griseb.) Berger`
    ## Spatial correlogram for Consolea macracantha (Griseb.) Berger (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -4.8e-03    -5.0e-04  1.5e-04             -0.3             1.0
    ## 2 (2017)  1.7e-02    -5.0e-04  8.2e-05              1.9             0.4
    ## 3 (2017)  9.8e-03    -5.0e-04  5.8e-05              1.4             1.0
    ## 4 (2017)  3.7e-03    -5.0e-04  4.6e-05              0.6             1.0
    ## 5 (2017)  1.2e-02    -5.0e-04  3.8e-05              2.1             0.4
    ## 6 (2017)  9.5e-04    -5.0e-04  3.3e-05              0.3             1.0
    ## 7 (2017) -4.0e-03    -5.0e-04  3.0e-05             -0.6             1.0
    ## 8 (2017) -3.9e-03    -5.0e-04  2.7e-05             -0.7             1.0
    ## 9 (2017) -3.9e-03    -5.0e-04  2.5e-05             -0.7             1.0
    ## 
    ## $`Harrisia divaricata (Lam.) Backeb.`
    ## Spatial correlogram for Harrisia divaricata (Lam.) Backeb. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.9e-01    -5.0e-04  1.5e-04             15.3          <2e-16 ***
    ## 2 (2017)  4.7e-03    -5.0e-04  8.2e-05              0.6               1    
    ## 3 (2017)  1.1e-02    -5.0e-04  5.8e-05              1.5               1    
    ## 4 (2017) -1.3e-03    -5.0e-04  4.6e-05             -0.1               1    
    ## 5 (2017)  6.2e-03    -5.0e-04  3.9e-05              1.1               1    
    ## 6 (2017)  7.6e-03    -5.0e-04  3.3e-05              1.4               1    
    ## 7 (2017)  2.2e-04    -5.0e-04  3.0e-05              0.1               1    
    ## 8 (2017) -4.7e-03    -5.0e-04  2.7e-05             -0.8               1    
    ## 9 (2017) -2.4e-03    -5.0e-04  2.5e-05             -0.4               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Consolea moniliformis (L.) A.Berger`
    ## Spatial correlogram for Consolea moniliformis (L.) A.Berger (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.2e-01    -5.0e-04  1.6e-04              9.4          <2e-16 ***
    ## 2 (2017)  1.1e-01    -5.0e-04  8.7e-05             11.7          <2e-16 ***
    ## 3 (2017)  2.6e-02    -5.0e-04  6.2e-05              3.3           0.005 ** 
    ## 4 (2017)  2.8e-02    -5.0e-04  4.9e-05              4.1           3e-04 ***
    ## 5 (2017)  1.1e-02    -5.0e-04  4.1e-05              1.8           0.258    
    ## 6 (2017)  1.6e-02    -5.0e-04  3.6e-05              2.7           0.030 *  
    ## 7 (2017)  5.3e-03    -5.0e-04  3.2e-05              1.0           0.919    
    ## 8 (2017)  4.5e-03    -5.0e-04  2.9e-05              0.9           0.919    
    ## 9 (2017)  3.9e-04    -5.0e-04  2.7e-05              0.2           0.919    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Mammillaria prolifera subsp. prolifera`
    ## Spatial correlogram for Mammillaria prolifera subsp. prolifera (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.0e-01    -5.0e-04  1.6e-04              8.2           2e-15 ***
    ## 2 (2017)  2.3e-02    -5.0e-04  8.3e-05              2.6           0.051 .  
    ## 3 (2017)  4.0e-02    -5.0e-04  5.8e-05              5.3           1e-06 ***
    ## 4 (2017) -1.8e-03    -5.0e-04  4.6e-05             -0.2           1.000    
    ## 5 (2017) -6.3e-03    -5.0e-04  3.9e-05             -0.9           1.000    
    ## 6 (2017) -5.8e-03    -5.0e-04  3.4e-05             -0.9           1.000    
    ## 7 (2017) -5.2e-03    -5.0e-04  3.0e-05             -0.9           1.000    
    ## 8 (2017)  1.7e-02    -5.0e-04  2.7e-05              3.4           0.004 ** 
    ## 9 (2017)  1.5e-02    -5.0e-04  2.5e-05              3.0           0.014 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Melocactus lemairei (Monv. ex Lem.) Miq.`
    ## Spatial correlogram for Melocactus lemairei (Monv. ex Lem.) Miq. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.3e-02    -5.0e-04  1.5e-04              1.9            0.28    
    ## 2 (2017)  4.3e-02    -5.0e-04  8.2e-05              4.8           1e-05 ***
    ## 3 (2017)  3.6e-02    -5.0e-04  5.8e-05              4.8           1e-05 ***
    ## 4 (2017)  1.7e-02    -5.0e-04  4.6e-05              2.5            0.07 .  
    ## 5 (2017) -4.4e-03    -5.0e-04  3.9e-05             -0.6            1.00    
    ## 6 (2017)  1.1e-03    -5.0e-04  3.3e-05              0.3            1.00    
    ## 7 (2017)  1.4e-02    -5.0e-04  3.0e-05              2.6            0.07 .  
    ## 8 (2017)  6.0e-03    -5.0e-04  2.7e-05              1.2            0.86    
    ## 9 (2017)  5.4e-03    -5.0e-04  2.5e-05              1.2            0.86    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Opuntia taylorii Britton & Rose`
    ## Spatial correlogram for Opuntia taylorii Britton & Rose (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017)  2.3e-02    -5.0e-04  1.5e-04              2.0             0.4
    ## 2 (2017) -3.7e-03    -5.0e-04  7.7e-05             -0.4             1.0
    ## 3 (2017)  1.6e-03    -5.0e-04  5.4e-05              0.3             1.0
    ## 4 (2017) -3.9e-03    -5.0e-04  4.3e-05             -0.5             1.0
    ## 5 (2017) -3.7e-03    -5.0e-04  3.6e-05             -0.5             1.0
    ## 6 (2017) -9.5e-04    -5.0e-04  3.1e-05             -0.1             1.0
    ## 7 (2017) -3.3e-03    -5.0e-04  2.8e-05             -0.5             1.0
    ## 8 (2017)  3.3e-04    -5.0e-04  2.5e-05              0.2             1.0
    ## 9 (2017)  8.8e-03    -5.0e-04  2.3e-05              1.9             0.4
    ## 
    ## $`Melocactus intortus subsp. domingensis Areces`
    ## Spatial correlogram for Melocactus intortus subsp. domingensis Areces (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.9e-01    -5.0e-04  1.4e-04             15.8          <2e-16 ***
    ## 2 (2017)  1.2e-01    -5.0e-04  7.5e-05             14.1          <2e-16 ***
    ## 3 (2017)  2.8e-02    -5.0e-04  5.3e-05              4.0           4e-04 ***
    ## 4 (2017)  3.5e-02    -5.0e-04  4.2e-05              5.6           2e-07 ***
    ## 5 (2017)  9.6e-03    -5.0e-04  3.5e-05              1.7             0.4    
    ## 6 (2017) -3.0e-03    -5.0e-04  3.1e-05             -0.5             1.0    
    ## 7 (2017) -3.1e-03    -5.0e-04  2.7e-05             -0.5             1.0    
    ## 8 (2017) -3.1e-03    -5.0e-04  2.5e-05             -0.5             1.0    
    ## 9 (2017) -2.9e-03    -5.0e-04  2.3e-05             -0.5             1.0    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leptocereus undulosus (DC.) D.Barrios & Majure`
    ## Spatial correlogram for Leptocereus undulosus (DC.) D.Barrios & Majure (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.3e-02    -5.0e-04  7.3e-05             10.9          <2e-16 ***
    ## 2 (2017) -1.5e-03    -5.0e-04  3.9e-05             -0.2            1.00    
    ## 3 (2017) -1.1e-03    -5.0e-04  2.7e-05             -0.1            1.00    
    ## 4 (2017)  1.4e-02    -5.0e-04  2.2e-05              3.2            0.01 *  
    ## 5 (2017)  3.6e-02    -5.0e-04  1.8e-05              8.7          <2e-16 ***
    ## 6 (2017) -1.1e-03    -5.0e-04  1.6e-05             -0.1            1.00    
    ## 7 (2017) -1.2e-03    -5.0e-04  1.4e-05             -0.2            1.00    
    ## 8 (2017) -1.2e-03    -5.0e-04  1.3e-05             -0.2            1.00    
    ## 9 (2017) -1.2e-03    -5.0e-04  1.2e-05             -0.2            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Opuntia stricta (Haw.) Haw.`
    ## Spatial correlogram for Opuntia stricta (Haw.) Haw. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided  
    ## 1 (2017) -2.1e-03    -5.0e-04  1.2e-04             -0.1            1.00  
    ## 2 (2017) -1.9e-03    -5.0e-04  6.4e-05             -0.2            1.00  
    ## 3 (2017)  1.8e-02    -5.0e-04  4.5e-05              2.8            0.05 .
    ## 4 (2017) -1.5e-03    -5.0e-04  3.6e-05             -0.2            1.00  
    ## 5 (2017) -1.7e-03    -5.0e-04  3.0e-05             -0.2            1.00  
    ## 6 (2017) -1.7e-03    -5.0e-04  2.6e-05             -0.2            1.00  
    ## 7 (2017) -1.6e-03    -5.0e-04  2.3e-05             -0.2            1.00  
    ## 8 (2017) -1.6e-03    -5.0e-04  2.1e-05             -0.2            1.00  
    ## 9 (2017) -1.6e-03    -5.0e-04  1.9e-05             -0.3            1.00  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Opuntia cochenillifera Karst.`
    ## Spatial correlogram for Opuntia cochenillifera Karst. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -3.3e-03    -5.0e-04  1.5e-04             -0.2            1.00    
    ## 2 (2017)  7.1e-02    -5.0e-04  7.9e-05              8.0           1e-14 ***
    ## 3 (2017)  1.9e-02    -5.0e-04  5.6e-05              2.6            0.07 .  
    ## 4 (2017) -3.3e-03    -5.0e-04  4.4e-05             -0.4            1.00    
    ## 5 (2017) -3.5e-03    -5.0e-04  3.7e-05             -0.5            1.00    
    ## 6 (2017) -3.5e-03    -5.0e-04  3.2e-05             -0.5            1.00    
    ## 7 (2017) -3.6e-03    -5.0e-04  2.9e-05             -0.6            1.00    
    ## 8 (2017) -3.5e-03    -5.0e-04  2.6e-05             -0.6            1.00    
    ## 9 (2017) -3.5e-03    -5.0e-04  2.4e-05             -0.6            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Selenicereus undatus (Haw.) D.R.Hunt`
    ## Spatial correlogram for Selenicereus undatus (Haw.) D.R.Hunt (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.9e-02    -5.0e-04  1.1e-04              9.7          <2e-16 ***
    ## 2 (2017) -1.3e-03    -5.0e-04  5.6e-05             -0.1               1    
    ## 3 (2017) -1.3e-03    -5.0e-04  4.0e-05             -0.1               1    
    ## 4 (2017) -1.3e-03    -5.0e-04  3.1e-05             -0.1               1    
    ## 5 (2017) -1.3e-03    -5.0e-04  2.6e-05             -0.2               1    
    ## 6 (2017) -1.4e-03    -5.0e-04  2.3e-05             -0.2               1    
    ## 7 (2017) -1.4e-03    -5.0e-04  2.0e-05             -0.2               1    
    ## 8 (2017) -1.4e-03    -5.0e-04  1.8e-05             -0.2               1    
    ## 9 (2017) -1.4e-03    -5.0e-04  1.7e-05             -0.2               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leuenbergeria bleo (Kunth) Lodé`
    ## Spatial correlogram for Leuenbergeria bleo (Kunth) Lodé (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -8.1e-04    -5.0e-04  8.5e-05              0.0               1
    ## 2 (2017) -7.6e-04    -5.0e-04  4.5e-05              0.0               1
    ## 3 (2017) -7.9e-04    -5.0e-04  3.2e-05             -0.1               1
    ## 4 (2017) -8.1e-04    -5.0e-04  2.5e-05             -0.1               1
    ## 5 (2017) -8.7e-04    -5.0e-04  2.1e-05             -0.1               1
    ## 6 (2017) -8.3e-04    -5.0e-04  1.8e-05             -0.1               1
    ## 7 (2017) -8.2e-04    -5.0e-04  1.6e-05             -0.1               1
    ## 8 (2017) -8.7e-04    -5.0e-04  1.5e-05             -0.1               1
    ## 9 (2017) -9.0e-04    -5.0e-04  1.4e-05             -0.1               1
    ## 
    ## $`Melocactus intortus (Mill.) Urb.`
    ## Spatial correlogram for Melocactus intortus (Mill.) Urb. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.2e-02    -5.0e-04  9.1e-05              5.5           3e-07 ***
    ## 2 (2017) -1.4e-03    -5.0e-04  4.8e-05             -0.1               1    
    ## 3 (2017) -1.2e-03    -5.0e-04  3.4e-05             -0.1               1    
    ## 4 (2017) -1.3e-03    -5.0e-04  2.7e-05             -0.2               1    
    ## 5 (2017) -1.3e-03    -5.0e-04  2.3e-05             -0.2               1    
    ## 6 (2017) -1.3e-03    -5.0e-04  2.0e-05             -0.2               1    
    ## 7 (2017) -1.3e-03    -5.0e-04  1.8e-05             -0.2               1    
    ## 8 (2017) -1.4e-03    -5.0e-04  1.6e-05             -0.2               1    
    ## 9 (2017) -1.5e-03    -5.0e-04  1.5e-05             -0.2               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose`
    ## Spatial correlogram for Leptocereus weingartianus (E.Hartmann ex Dams) Britton & Rose (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided  
    ## 1 (2017) -3.1e-03    -5.0e-04  1.5e-04             -0.2            1.00  
    ## 2 (2017) -3.0e-03    -5.0e-04  7.7e-05             -0.3            1.00  
    ## 3 (2017) -3.2e-03    -5.0e-04  5.4e-05             -0.4            1.00  
    ## 4 (2017)  1.8e-02    -5.0e-04  4.3e-05              2.8            0.04 *
    ## 5 (2017) -3.4e-03    -5.0e-04  3.6e-05             -0.5            1.00  
    ## 6 (2017)  4.2e-03    -5.0e-04  3.1e-05              0.8            1.00  
    ## 7 (2017) -2.8e-03    -5.0e-04  2.8e-05             -0.4            1.00  
    ## 8 (2017) -2.6e-03    -5.0e-04  2.5e-05             -0.4            1.00  
    ## 9 (2017) -2.6e-03    -5.0e-04  2.3e-05             -0.4            1.00  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leuenbergeria portulacifolia (L.) Lodé`
    ## Spatial correlogram for Leuenbergeria portulacifolia (L.) Lodé (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.0e-01    -5.0e-04  1.3e-04             17.8          <2e-16 ***
    ## 2 (2017)  5.6e-02    -5.0e-04  7.0e-05              6.8           7e-11 ***
    ## 3 (2017)  9.0e-02    -5.0e-04  4.9e-05             12.8          <2e-16 ***
    ## 4 (2017)  1.9e-02    -5.0e-04  3.9e-05              3.1            0.01 *  
    ## 5 (2017) -1.9e-03    -5.0e-04  3.3e-05             -0.2            1.00    
    ## 6 (2017)  1.0e-02    -5.0e-04  2.8e-05              2.0            0.21    
    ## 7 (2017) -1.4e-03    -5.0e-04  2.5e-05             -0.2            1.00    
    ## 8 (2017) -1.4e-03    -5.0e-04  2.3e-05             -0.2            1.00    
    ## 9 (2017) -1.6e-03    -5.0e-04  2.1e-05             -0.2            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Leuenbergeria marcanoi (Areces) Lodé`
    ## Spatial correlogram for Leuenbergeria marcanoi (Areces) Lodé (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.1e-01    -5.0e-04  8.9e-05             22.1          <2e-16 ***
    ## 2 (2017) -8.5e-04    -5.0e-04  4.7e-05             -0.1               1    
    ## 3 (2017) -8.9e-04    -5.0e-04  3.3e-05             -0.1               1    
    ## 4 (2017) -9.7e-04    -5.0e-04  2.6e-05             -0.1               1    
    ## 5 (2017) -9.4e-04    -5.0e-04  2.2e-05             -0.1               1    
    ## 6 (2017) -8.5e-04    -5.0e-04  1.9e-05             -0.1               1    
    ## 7 (2017) -7.3e-04    -5.0e-04  1.7e-05             -0.1               1    
    ## 8 (2017) -6.7e-04    -5.0e-04  1.6e-05              0.0               1    
    ## 9 (2017) -6.8e-04    -5.0e-04  1.4e-05              0.0               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Melocactus lemairei subsp. lemairei`
    ## Spatial correlogram for Melocactus lemairei subsp. lemairei (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided   
    ## 1 (2017)  4.1e-02    -5.0e-04  1.6e-04              3.3           0.009 **
    ## 2 (2017)  1.7e-02    -5.0e-04  8.4e-05              1.9           0.390   
    ## 3 (2017)  6.8e-03    -5.0e-04  5.9e-05              0.9           1.000   
    ## 4 (2017)  1.6e-02    -5.0e-04  4.7e-05              2.4           0.145   
    ## 5 (2017) -3.8e-03    -5.0e-04  4.0e-05             -0.5           1.000   
    ## 6 (2017) -1.5e-03    -5.0e-04  3.4e-05             -0.2           1.000   
    ## 7 (2017) -5.4e-03    -5.0e-04  3.1e-05             -0.9           1.000   
    ## 8 (2017) -5.4e-03    -5.0e-04  2.8e-05             -0.9           1.000   
    ## 9 (2017) -1.5e-03    -5.0e-04  2.6e-05             -0.2           1.000   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Opuntia ×cubensis Britton & Rose`
    ## Spatial correlogram for Opuntia ×cubensis Britton & Rose (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -1.5e-03    -5.0e-04  1.1e-04             -0.1               1    
    ## 2 (2017) -1.7e-03    -5.0e-04  6.0e-05             -0.2               1    
    ## 3 (2017)  4.6e-02    -5.0e-04  4.2e-05              7.1           1e-11 ***
    ## 4 (2017) -1.6e-03    -5.0e-04  3.4e-05             -0.2               1    
    ## 5 (2017) -1.7e-03    -5.0e-04  2.8e-05             -0.2               1    
    ## 6 (2017) -1.5e-03    -5.0e-04  2.4e-05             -0.2               1    
    ## 7 (2017) -1.4e-03    -5.0e-04  2.2e-05             -0.2               1    
    ## 8 (2017) -1.2e-03    -5.0e-04  2.0e-05             -0.2               1    
    ## 9 (2017) -1.0e-03    -5.0e-04  1.8e-05             -0.1               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Melocactus lemairei subsp. praerupticola (Areces) Guiggi`
    ## Spatial correlogram for Melocactus lemairei subsp. praerupticola (Areces) Guiggi (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -9.9e-04    -5.0e-04  8.9e-05             -0.1               1    
    ## 2 (2017) -9.9e-04    -5.0e-04  4.7e-05             -0.1               1    
    ## 3 (2017) -9.9e-04    -5.0e-04  3.3e-05             -0.1               1    
    ## 4 (2017)  4.1e-02    -5.0e-04  2.6e-05              8.0           9e-15 ***
    ## 5 (2017) -1.0e-03    -5.0e-04  2.2e-05             -0.1               1    
    ## 6 (2017) -1.0e-03    -5.0e-04  1.9e-05             -0.1               1    
    ## 7 (2017) -1.0e-03    -5.0e-04  1.7e-05             -0.1               1    
    ## 8 (2017) -1.1e-03    -5.0e-04  1.6e-05             -0.1               1    
    ## 9 (2017) -1.1e-03    -5.0e-04  1.4e-05             -0.2               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Opuntia repens Bello`
    ## Spatial correlogram for Opuntia repens Bello (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -9.8e-04    -5.0e-04  7.9e-05             -0.1               1
    ## 2 (2017) -1.1e-03    -5.0e-04  4.2e-05             -0.1               1
    ## 3 (2017) -9.5e-04    -5.0e-04  3.0e-05             -0.1               1
    ## 4 (2017) -1.0e-03    -5.0e-04  2.3e-05             -0.1               1
    ## 5 (2017) -9.4e-04    -5.0e-04  2.0e-05             -0.1               1
    ## 6 (2017) -8.6e-04    -5.0e-04  1.7e-05             -0.1               1
    ## 7 (2017) -7.6e-04    -5.0e-04  1.5e-05             -0.1               1
    ## 8 (2017) -7.1e-04    -5.0e-04  1.4e-05             -0.1               1
    ## 9 (2017) -7.7e-04    -5.0e-04  1.3e-05             -0.1               1
    ## 
    ## $`Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson`
    ## Spatial correlogram for Opuntia stricta var. dillenii (Ker Gawl.) L.D.Benson (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.3e-02    -5.0e-04  1.2e-04              6.7           2e-10 ***
    ## 2 (2017) -2.1e-03    -5.0e-04  6.3e-05             -0.2               1    
    ## 3 (2017) -2.1e-03    -5.0e-04  4.5e-05             -0.2               1    
    ## 4 (2017) -1.9e-03    -5.0e-04  3.6e-05             -0.2               1    
    ## 5 (2017) -1.8e-03    -5.0e-04  3.0e-05             -0.2               1    
    ## 6 (2017) -1.5e-03    -5.0e-04  2.6e-05             -0.2               1    
    ## 7 (2017) -1.3e-03    -5.0e-04  2.3e-05             -0.2               1    
    ## 8 (2017) -1.2e-03    -5.0e-04  2.1e-05             -0.1               1    
    ## 9 (2017) -1.1e-03    -5.0e-04  1.9e-05             -0.1               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Consolea Lem.`
    ## Spatial correlogram for Consolea Lem. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.6e-01    -5.0e-04  7.9e-05             17.7          <2e-16 ***
    ## 2 (2017) -9.6e-04    -5.0e-04  4.2e-05             -0.1               1    
    ## 3 (2017) -1.0e-03    -5.0e-04  3.0e-05             -0.1               1    
    ## 4 (2017) -1.1e-03    -5.0e-04  2.3e-05             -0.1               1    
    ## 5 (2017) -1.3e-03    -5.0e-04  2.0e-05             -0.2               1    
    ## 6 (2017) -1.2e-03    -5.0e-04  1.7e-05             -0.2               1    
    ## 7 (2017) -1.2e-03    -5.0e-04  1.5e-05             -0.2               1    
    ## 8 (2017) -1.1e-03    -5.0e-04  1.4e-05             -0.2               1    
    ## 9 (2017) -9.6e-04    -5.0e-04  1.3e-05             -0.1               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Opuntia Mill.`
    ## Spatial correlogram for Opuntia Mill. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -9.0e-04    -5.0e-04  4.9e-05             -0.1               1
    ## 2 (2017) -8.8e-04    -5.0e-04  2.6e-05             -0.1               1
    ## 3 (2017) -8.7e-04    -5.0e-04  1.8e-05             -0.1               1
    ## 4 (2017) -8.7e-04    -5.0e-04  1.5e-05             -0.1               1
    ## 5 (2017) -9.3e-04    -5.0e-04  1.2e-05             -0.1               1
    ## 6 (2017) -1.0e-03    -5.0e-04  1.1e-05             -0.2               1
    ## 7 (2017) -1.0e-03    -5.0e-04  9.5e-06             -0.2               1
    ## 8 (2017) -1.1e-03    -5.0e-04  8.6e-06             -0.2               1
    ## 9 (2017) -1.0e-03    -5.0e-04  8.0e-06             -0.2               1
    ## 
    ## $Cactaceae
    ## Spatial correlogram for Cactaceae (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.4e-01    -5.0e-04  1.1e-04             14.0          <2e-16 ***
    ## 2 (2017)  4.1e-02    -5.0e-04  5.7e-05              5.5           2e-07 ***
    ## 3 (2017)  3.5e-02    -5.0e-04  4.0e-05              5.6           2e-07 ***
    ## 4 (2017) -1.5e-03    -5.0e-04  3.2e-05             -0.2               1    
    ## 5 (2017) -1.3e-03    -5.0e-04  2.7e-05             -0.2               1    
    ## 6 (2017) -1.5e-03    -5.0e-04  2.3e-05             -0.2               1    
    ## 7 (2017) -1.6e-03    -5.0e-04  2.1e-05             -0.2               1    
    ## 8 (2017) -1.2e-03    -5.0e-04  1.9e-05             -0.2               1    
    ## 9 (2017) -1.0e-03    -5.0e-04  1.7e-05             -0.1               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Pilosocereus royenii (L.) Byles & G.D.Rowley`
    ## Spatial correlogram for Pilosocereus royenii (L.) Byles & G.D.Rowley (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -1.8e-03    -5.0e-04  1.1e-04             -0.1               1    
    ## 2 (2017) -1.8e-03    -5.0e-04  6.0e-05             -0.2               1    
    ## 3 (2017) -1.9e-03    -5.0e-04  4.2e-05             -0.2               1    
    ## 4 (2017) -1.9e-03    -5.0e-04  3.4e-05             -0.2               1    
    ## 5 (2017) -2.1e-03    -5.0e-04  2.8e-05             -0.3               1    
    ## 6 (2017) -1.9e-03    -5.0e-04  2.4e-05             -0.3               1    
    ## 7 (2017) -1.8e-03    -5.0e-04  2.2e-05             -0.3               1    
    ## 8 (2017)  2.0e-02    -5.0e-04  2.0e-05              4.7           2e-05 ***
    ## 9 (2017) -1.9e-03    -5.0e-04  1.8e-05             -0.3               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Pereskia aculeata Mill.`
    ## Spatial correlogram for Pereskia aculeata Mill. (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -1.5e-03    -5.0e-04  1.1e-04             -0.1               1    
    ## 2 (2017) -1.4e-03    -5.0e-04  6.0e-05             -0.1               1    
    ## 3 (2017) -1.9e-03    -5.0e-04  4.2e-05             -0.2               1    
    ## 4 (2017) -1.5e-03    -5.0e-04  3.4e-05             -0.2               1    
    ## 5 (2017) -9.6e-04    -5.0e-04  2.8e-05             -0.1               1    
    ## 6 (2017) -9.8e-04    -5.0e-04  2.5e-05             -0.1               1    
    ## 7 (2017) -9.4e-04    -5.0e-04  2.2e-05             -0.1               1    
    ## 8 (2017)  3.0e-02    -5.0e-04  2.0e-05              6.9           4e-11 ***
    ## 9 (2017) -1.2e-03    -5.0e-04  1.8e-05             -0.2               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Consolea moniliformis subsp. moniliformis`
    ## Spatial correlogram for Consolea moniliformis subsp. moniliformis (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -1.8e-03    -5.0e-04  1.1e-04             -0.1             1.0    
    ## 2 (2017)  3.1e-02    -5.0e-04  5.8e-05              4.1           3e-04 ***
    ## 3 (2017) -1.8e-03    -5.0e-04  4.1e-05             -0.2             1.0    
    ## 4 (2017) -1.9e-03    -5.0e-04  3.3e-05             -0.2             1.0    
    ## 5 (2017) -1.8e-03    -5.0e-04  2.7e-05             -0.3             1.0    
    ## 6 (2017) -1.7e-03    -5.0e-04  2.4e-05             -0.2             1.0    
    ## 7 (2017)  3.5e-02    -5.0e-04  2.1e-05              7.6           2e-13 ***
    ## 8 (2017) -1.3e-03    -5.0e-04  1.9e-05             -0.2             1.0    
    ## 9 (2017)  7.9e-03    -5.0e-04  1.8e-05              2.0             0.3    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
dim_panel <- rev(n2mfrow(ncol(mi_fam_t_all)))
if(interactive()) dev.new()
par(mfrow = dim_panel)
suppressWarnings(invisible(lapply(auto_spp_hel, function(x) plot(x, main = x$var))))
```

![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

Ahora exploraré la autocorrelación de las variables ambientales. Entre
estas, como verás, muchas están autocorrelacionadas, al tratarse de
variables continuas. Te interesa explorar qué variables están
autocorrelacionadas espacialmente, y qué especies también lo están, para
comprobar posteriormente si tanto especies como variables ambientales
tienen *coldspots* y *hotspots* coincidentes espacialmente, lo cual
sugeriría que existe asociación entre ellas.

``` r
env_num <- env_sf %>%
  st_drop_geometry %>% 
  select_if(is.numeric) %>% 
  replace(is.na(.), 0)
suppressWarnings(auto_amb <- calcular_autocorrelacion(
  df_fuente = env_num,
  orden = 9,
  obj_vecindad = vecindad))
print(auto_amb, digits = 2, p.adj.method = 'holm')
```

    ## $`ESA Trees`
    ## Spatial correlogram for ESA Trees 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.0e-01    -5.0e-04  1.8e-04               53          <2e-16 ***
    ## 2 (2017)  5.0e-01    -5.0e-04  9.4e-05               52          <2e-16 ***
    ## 3 (2017)  3.7e-01    -5.0e-04  6.6e-05               45          <2e-16 ***
    ## 4 (2017)  2.7e-01    -5.0e-04  5.3e-05               38          <2e-16 ***
    ## 5 (2017)  2.0e-01    -5.0e-04  4.4e-05               31          <2e-16 ***
    ## 6 (2017)  1.5e-01    -5.0e-04  3.8e-05               25          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05               19          <2e-16 ***
    ## 8 (2017)  8.0e-02    -5.0e-04  3.1e-05               14          <2e-16 ***
    ## 9 (2017)  5.6e-02    -5.0e-04  2.9e-05               11          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Shrubland`
    ## Spatial correlogram for ESA Shrubland 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.0e-01    -5.0e-04  1.8e-04               53          <2e-16 ***
    ## 2 (2017)  4.9e-01    -5.0e-04  9.3e-05               51          <2e-16 ***
    ## 3 (2017)  3.6e-01    -5.0e-04  6.6e-05               44          <2e-16 ***
    ## 4 (2017)  2.8e-01    -5.0e-04  5.2e-05               38          <2e-16 ***
    ## 5 (2017)  2.2e-01    -5.0e-04  4.4e-05               33          <2e-16 ***
    ## 6 (2017)  1.7e-01    -5.0e-04  3.8e-05               28          <2e-16 ***
    ## 7 (2017)  1.4e-01    -5.0e-04  3.4e-05               24          <2e-16 ***
    ## 8 (2017)  1.2e-01    -5.0e-04  3.1e-05               21          <2e-16 ***
    ## 9 (2017)  1.2e-01    -5.0e-04  2.8e-05               22          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Grassland`
    ## Spatial correlogram for ESA Grassland 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.7e-01    -5.0e-04  1.8e-04               58          <2e-16 ***
    ## 2 (2017)  6.0e-01    -5.0e-04  9.4e-05               62          <2e-16 ***
    ## 3 (2017)  4.8e-01    -5.0e-04  6.6e-05               59          <2e-16 ***
    ## 4 (2017)  3.8e-01    -5.0e-04  5.3e-05               53          <2e-16 ***
    ## 5 (2017)  3.0e-01    -5.0e-04  4.4e-05               46          <2e-16 ***
    ## 6 (2017)  2.4e-01    -5.0e-04  3.8e-05               38          <2e-16 ***
    ## 7 (2017)  1.8e-01    -5.0e-04  3.4e-05               31          <2e-16 ***
    ## 8 (2017)  1.3e-01    -5.0e-04  3.1e-05               24          <2e-16 ***
    ## 9 (2017)  9.9e-02    -5.0e-04  2.9e-05               19          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Cropland`
    ## Spatial correlogram for ESA Cropland 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.3e-01    -5.0e-04  1.7e-04             47.4          <2e-16 ***
    ## 2 (2017)  3.4e-01    -5.0e-04  9.3e-05             35.4          <2e-16 ***
    ## 3 (2017)  1.6e-01    -5.0e-04  6.6e-05             20.2          <2e-16 ***
    ## 4 (2017)  6.5e-02    -5.0e-04  5.2e-05              9.1          <2e-16 ***
    ## 5 (2017)  5.7e-03    -5.0e-04  4.4e-05              0.9           0.348    
    ## 6 (2017) -1.7e-02    -5.0e-04  3.8e-05             -2.6           0.017 *  
    ## 7 (2017) -1.9e-02    -5.0e-04  3.4e-05             -3.2           0.005 ** 
    ## 8 (2017) -1.7e-02    -5.0e-04  3.1e-05             -3.0           0.009 ** 
    ## 9 (2017) -1.9e-02    -5.0e-04  2.8e-05             -3.6           0.002 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Built-up`
    ## Spatial correlogram for ESA Built-up 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.7e-01    -5.0e-04  1.7e-04             43.7          <2e-16 ***
    ## 2 (2017)  3.4e-01    -5.0e-04  9.1e-05             35.7          <2e-16 ***
    ## 3 (2017)  2.0e-01    -5.0e-04  6.4e-05             25.1          <2e-16 ***
    ## 4 (2017)  1.1e-01    -5.0e-04  5.1e-05             15.1          <2e-16 ***
    ## 5 (2017)  5.8e-02    -5.0e-04  4.3e-05              9.0          <2e-16 ***
    ## 6 (2017)  4.0e-02    -5.0e-04  3.7e-05              6.7           7e-11 ***
    ## 7 (2017)  2.3e-02    -5.0e-04  3.3e-05              4.0           2e-04 ***
    ## 8 (2017)  1.3e-02    -5.0e-04  3.0e-05              2.5            0.03 *  
    ## 9 (2017)  4.1e-03    -5.0e-04  2.8e-05              0.9            0.38    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Barren / sparse vegetation`
    ## Spatial correlogram for ESA Barren / sparse vegetation 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.2e-01    -5.0e-04  1.7e-04             40.1          <2e-16 ***
    ## 2 (2017)  3.0e-01    -5.0e-04  8.9e-05             32.2          <2e-16 ***
    ## 3 (2017)  1.7e-01    -5.0e-04  6.2e-05             21.7          <2e-16 ***
    ## 4 (2017)  9.9e-02    -5.0e-04  5.0e-05             14.1          <2e-16 ***
    ## 5 (2017)  7.2e-02    -5.0e-04  4.2e-05             11.3          <2e-16 ***
    ## 6 (2017)  5.1e-02    -5.0e-04  3.6e-05              8.6          <2e-16 ***
    ## 7 (2017)  3.6e-02    -5.0e-04  3.2e-05              6.5           3e-10 ***
    ## 8 (2017)  1.9e-02    -5.0e-04  2.9e-05              3.5           9e-04 ***
    ## 9 (2017)  5.5e-03    -5.0e-04  2.7e-05              1.1             0.3    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Open water`
    ## Spatial correlogram for ESA Open water 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.5e-01    -5.0e-04  1.8e-04               42          <2e-16 ***
    ## 2 (2017)  3.2e-01    -5.0e-04  9.4e-05               34          <2e-16 ***
    ## 3 (2017)  2.3e-01    -5.0e-04  6.6e-05               28          <2e-16 ***
    ## 4 (2017)  1.7e-01    -5.0e-04  5.2e-05               24          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.4e-05               19          <2e-16 ***
    ## 6 (2017)  9.9e-02    -5.0e-04  3.8e-05               16          <2e-16 ***
    ## 7 (2017)  8.9e-02    -5.0e-04  3.4e-05               15          <2e-16 ***
    ## 8 (2017)  5.9e-02    -5.0e-04  3.1e-05               11          <2e-16 ***
    ## 9 (2017)  3.7e-02    -5.0e-04  2.8e-05                7           3e-12 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Herbaceous wetland`
    ## Spatial correlogram for ESA Herbaceous wetland 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.9e-01    -5.0e-04  1.6e-04             30.5          <2e-16 ***
    ## 2 (2017)  1.2e-01    -5.0e-04  8.5e-05             12.8          <2e-16 ***
    ## 3 (2017)  8.6e-02    -5.0e-04  6.0e-05             11.2          <2e-16 ***
    ## 4 (2017)  5.4e-02    -5.0e-04  4.8e-05              7.9           2e-14 ***
    ## 5 (2017)  2.0e-02    -5.0e-04  4.0e-05              3.2           0.008 ** 
    ## 6 (2017)  1.3e-02    -5.0e-04  3.5e-05              2.2           0.101    
    ## 7 (2017)  1.1e-02    -5.0e-04  3.1e-05              2.1           0.117    
    ## 8 (2017)  1.5e-03    -5.0e-04  2.8e-05              0.4           0.709    
    ## 9 (2017) -8.1e-03    -5.0e-04  2.6e-05             -1.5           0.269    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`ESA Mangroves`
    ## Spatial correlogram for ESA Mangroves 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.0e-01    -5.0e-04  1.6e-04             23.2          <2e-16 ***
    ## 2 (2017)  9.3e-02    -5.0e-04  8.7e-05             10.0          <2e-16 ***
    ## 3 (2017)  3.3e-02    -5.0e-04  6.2e-05              4.3           8e-05 ***
    ## 4 (2017)  5.5e-02    -5.0e-04  4.9e-05              8.0           1e-14 ***
    ## 5 (2017)  4.2e-02    -5.0e-04  4.1e-05              6.7           2e-10 ***
    ## 6 (2017)  1.6e-02    -5.0e-04  3.6e-05              2.8            0.02 *  
    ## 7 (2017)  6.4e-03    -5.0e-04  3.2e-05              1.2            0.67    
    ## 8 (2017)  5.7e-03    -5.0e-04  2.9e-05              1.2            0.67    
    ## 9 (2017)  2.8e-03    -5.0e-04  2.7e-05              0.6            0.67    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Closed forest, evergreen needle leaf`
    ## Spatial correlogram for CGL Closed forest, evergreen needle leaf 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.2e-01    -5.0e-04  1.4e-04             26.9          <2e-16 ***
    ## 2 (2017)  1.7e-01    -5.0e-04  7.3e-05             19.4          <2e-16 ***
    ## 3 (2017)  5.4e-02    -5.0e-04  5.2e-05              7.6           3e-13 ***
    ## 4 (2017)  1.3e-02    -5.0e-04  4.1e-05              2.1             0.2    
    ## 5 (2017) -9.0e-04    -5.0e-04  3.4e-05             -0.1             1.0    
    ## 6 (2017) -4.8e-03    -5.0e-04  3.0e-05             -0.8             1.0    
    ## 7 (2017) -1.9e-03    -5.0e-04  2.7e-05             -0.3             1.0    
    ## 8 (2017) -1.9e-03    -5.0e-04  2.4e-05             -0.3             1.0    
    ## 9 (2017)  4.2e-03    -5.0e-04  2.2e-05              1.0             1.0    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Closed forest, evergreen broad leaf`
    ## Spatial correlogram for CGL Closed forest, evergreen broad leaf 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.2e-01    -5.0e-04  1.8e-04             53.9          <2e-16 ***
    ## 2 (2017)  5.3e-01    -5.0e-04  9.4e-05             54.7          <2e-16 ***
    ## 3 (2017)  3.9e-01    -5.0e-04  6.6e-05             47.9          <2e-16 ***
    ## 4 (2017)  2.8e-01    -5.0e-04  5.3e-05             38.1          <2e-16 ***
    ## 5 (2017)  1.9e-01    -5.0e-04  4.4e-05             28.6          <2e-16 ***
    ## 6 (2017)  1.3e-01    -5.0e-04  3.8e-05             20.8          <2e-16 ***
    ## 7 (2017)  8.2e-02    -5.0e-04  3.4e-05             14.2          <2e-16 ***
    ## 8 (2017)  3.6e-02    -5.0e-04  3.1e-05              6.5           2e-10 ***
    ## 9 (2017)  1.5e-03    -5.0e-04  2.9e-05              0.4             0.7    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Closed forest, deciduous broad leaf`
    ## Spatial correlogram for CGL Closed forest, deciduous broad leaf 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.5e-01    -5.0e-04  1.7e-04             34.8          <2e-16 ***
    ## 2 (2017)  1.7e-01    -5.0e-04  9.0e-05             18.5          <2e-16 ***
    ## 3 (2017)  8.7e-02    -5.0e-04  6.3e-05             11.0          <2e-16 ***
    ## 4 (2017)  5.5e-02    -5.0e-04  5.0e-05              7.8           4e-14 ***
    ## 5 (2017)  4.6e-02    -5.0e-04  4.2e-05              7.2           4e-12 ***
    ## 6 (2017)  3.9e-02    -5.0e-04  3.7e-05              6.5           4e-10 ***
    ## 7 (2017)  3.5e-02    -5.0e-04  3.3e-05              6.2           1e-09 ***
    ## 8 (2017)  2.9e-02    -5.0e-04  3.0e-05              5.5           9e-08 ***
    ## 9 (2017)  2.2e-02    -5.0e-04  2.7e-05              4.3           2e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Closed forest, mixed`
    ## Spatial correlogram for CGL Closed forest, mixed 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.3e-01    -5.0e-04  1.7e-04               56          <2e-16 ***
    ## 2 (2017)  5.7e-01    -5.0e-04  9.2e-05               60          <2e-16 ***
    ## 3 (2017)  4.8e-01    -5.0e-04  6.5e-05               60          <2e-16 ***
    ## 4 (2017)  3.9e-01    -5.0e-04  5.2e-05               55          <2e-16 ***
    ## 5 (2017)  3.1e-01    -5.0e-04  4.3e-05               48          <2e-16 ***
    ## 6 (2017)  2.3e-01    -5.0e-04  3.8e-05               38          <2e-16 ***
    ## 7 (2017)  1.7e-01    -5.0e-04  3.3e-05               29          <2e-16 ***
    ## 8 (2017)  1.2e-01    -5.0e-04  3.0e-05               22          <2e-16 ***
    ## 9 (2017)  8.0e-02    -5.0e-04  2.8e-05               15          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Closed forest, not matching any of the other definitions`
    ## Spatial correlogram for CGL Closed forest, not matching any of the other definitions 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.7e-01    -5.0e-04  1.7e-04             35.6          <2e-16 ***
    ## 2 (2017)  2.4e-01    -5.0e-04  9.2e-05             24.7          <2e-16 ***
    ## 3 (2017)  1.2e-01    -5.0e-04  6.5e-05             15.4          <2e-16 ***
    ## 4 (2017)  5.9e-02    -5.0e-04  5.2e-05              8.3           7e-16 ***
    ## 5 (2017)  2.6e-02    -5.0e-04  4.3e-05              4.0           3e-04 ***
    ## 6 (2017) -3.2e-03    -5.0e-04  3.8e-05             -0.4           0.778    
    ## 7 (2017) -5.5e-03    -5.0e-04  3.3e-05             -0.9           0.778    
    ## 8 (2017) -1.8e-02    -5.0e-04  3.0e-05             -3.2           0.004 ** 
    ## 9 (2017) -2.4e-02    -5.0e-04  2.8e-05             -4.5           4e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Open forest, evergreen needle leaf`
    ## Spatial correlogram for CGL Open forest, evergreen needle leaf 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -5.0e-04    -5.0e-04  3.3e-09              0.0               1
    ## 2 (2017) -5.0e-04    -5.0e-04  5.3e-09              0.0               1
    ## 3 (2017) -5.0e-04    -5.0e-04  7.3e-09              0.0               1
    ## 4 (2017) -5.0e-04    -5.0e-04  9.2e-09              0.0               1
    ## 5 (2017) -5.0e-04    -5.0e-04  1.2e-08             -0.1               1
    ## 6 (2017) -5.1e-04    -5.0e-04  1.5e-08             -0.1               1
    ## 7 (2017) -5.5e-04    -5.0e-04  1.7e-08             -0.4               1
    ## 8 (2017) -5.9e-04    -5.0e-04  1.8e-08             -0.7               1
    ## 9 (2017) -6.0e-04    -5.0e-04  1.8e-08             -0.8               1
    ## 
    ## $`CGL Open forest, evergreen broad leaf`
    ## Spatial correlogram for CGL Open forest, evergreen broad leaf 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.5e-01    -5.0e-04  1.8e-04             48.6          <2e-16 ***
    ## 2 (2017)  4.2e-01    -5.0e-04  9.4e-05             43.3          <2e-16 ***
    ## 3 (2017)  2.8e-01    -5.0e-04  6.6e-05             34.7          <2e-16 ***
    ## 4 (2017)  1.9e-01    -5.0e-04  5.3e-05             26.1          <2e-16 ***
    ## 5 (2017)  1.1e-01    -5.0e-04  4.4e-05             16.9          <2e-16 ***
    ## 6 (2017)  6.1e-02    -5.0e-04  3.8e-05              9.9          <2e-16 ***
    ## 7 (2017)  2.4e-02    -5.0e-04  3.4e-05              4.2           8e-05 ***
    ## 8 (2017)  1.2e-02    -5.0e-04  3.1e-05              2.2            0.03 *  
    ## 9 (2017)  1.4e-02    -5.0e-04  2.9e-05              2.8            0.01 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Open forest, deciduous broad leaf`
    ## Spatial correlogram for CGL Open forest, deciduous broad leaf 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.8e-01    -5.0e-04  1.7e-04               44          <2e-16 ***
    ## 2 (2017)  3.3e-01    -5.0e-04  9.2e-05               34          <2e-16 ***
    ## 3 (2017)  1.9e-01    -5.0e-04  6.5e-05               24          <2e-16 ***
    ## 4 (2017)  1.4e-01    -5.0e-04  5.1e-05               19          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.3e-05               18          <2e-16 ***
    ## 6 (2017)  1.1e-01    -5.0e-04  3.8e-05               18          <2e-16 ***
    ## 7 (2017)  9.9e-02    -5.0e-04  3.3e-05               17          <2e-16 ***
    ## 8 (2017)  8.5e-02    -5.0e-04  3.0e-05               16          <2e-16 ***
    ## 9 (2017)  7.5e-02    -5.0e-04  2.8e-05               14          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Open forest, mixed`
    ## Spatial correlogram for CGL Open forest, mixed 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.7e-01    -5.0e-04  1.6e-04             13.7          <2e-16 ***
    ## 2 (2017)  9.3e-02    -5.0e-04  8.7e-05             10.0          <2e-16 ***
    ## 3 (2017)  5.6e-02    -5.0e-04  6.1e-05              7.2           5e-12 ***
    ## 4 (2017)  4.4e-02    -5.0e-04  4.8e-05              6.4           5e-10 ***
    ## 5 (2017)  4.1e-02    -5.0e-04  4.1e-05              6.5           5e-10 ***
    ## 6 (2017)  3.2e-02    -5.0e-04  3.5e-05              5.4           2e-07 ***
    ## 7 (2017)  3.6e-02    -5.0e-04  3.1e-05              6.6           3e-10 ***
    ## 8 (2017)  1.5e-02    -5.0e-04  2.9e-05              2.9           0.007 ** 
    ## 9 (2017)  1.3e-04    -5.0e-04  2.6e-05              0.1           0.903    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Open forest, not matching any of the other definitions`
    ## Spatial correlogram for CGL Open forest, not matching any of the other definitions 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.3e-01    -5.0e-04  1.8e-04             47.1          <2e-16 ***
    ## 2 (2017)  4.0e-01    -5.0e-04  9.4e-05             41.5          <2e-16 ***
    ## 3 (2017)  2.6e-01    -5.0e-04  6.6e-05             32.0          <2e-16 ***
    ## 4 (2017)  1.6e-01    -5.0e-04  5.3e-05             21.7          <2e-16 ***
    ## 5 (2017)  9.5e-02    -5.0e-04  4.4e-05             14.3          <2e-16 ***
    ## 6 (2017)  5.8e-02    -5.0e-04  3.8e-05              9.5          <2e-16 ***
    ## 7 (2017)  2.2e-02    -5.0e-04  3.4e-05              3.8           4e-04 ***
    ## 8 (2017) -4.5e-03    -5.0e-04  3.1e-05             -0.7            0.48    
    ## 9 (2017) -1.2e-02    -5.0e-04  2.9e-05             -2.2            0.05 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Shrubs`
    ## Spatial correlogram for CGL Shrubs 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.3e-01    -5.0e-04  1.8e-04               55          <2e-16 ***
    ## 2 (2017)  5.3e-01    -5.0e-04  9.3e-05               55          <2e-16 ***
    ## 3 (2017)  3.8e-01    -5.0e-04  6.6e-05               47          <2e-16 ***
    ## 4 (2017)  2.8e-01    -5.0e-04  5.2e-05               38          <2e-16 ***
    ## 5 (2017)  2.0e-01    -5.0e-04  4.4e-05               31          <2e-16 ***
    ## 6 (2017)  1.5e-01    -5.0e-04  3.8e-05               24          <2e-16 ***
    ## 7 (2017)  1.2e-01    -5.0e-04  3.4e-05               20          <2e-16 ***
    ## 8 (2017)  1.1e-01    -5.0e-04  3.1e-05               21          <2e-16 ***
    ## 9 (2017)  1.3e-01    -5.0e-04  2.8e-05               24          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Oceans, seas`
    ## Spatial correlogram for CGL Oceans, seas 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.4e-01    -5.0e-04  1.8e-04               41          <2e-16 ***
    ## 2 (2017)  3.2e-01    -5.0e-04  9.4e-05               34          <2e-16 ***
    ## 3 (2017)  2.3e-01    -5.0e-04  6.6e-05               29          <2e-16 ***
    ## 4 (2017)  1.8e-01    -5.0e-04  5.2e-05               25          <2e-16 ***
    ## 5 (2017)  1.4e-01    -5.0e-04  4.4e-05               21          <2e-16 ***
    ## 6 (2017)  1.1e-01    -5.0e-04  3.8e-05               18          <2e-16 ***
    ## 7 (2017)  1.0e-01    -5.0e-04  3.4e-05               18          <2e-16 ***
    ## 8 (2017)  7.6e-02    -5.0e-04  3.1e-05               14          <2e-16 ***
    ## 9 (2017)  5.3e-02    -5.0e-04  2.8e-05               10          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Herbaceous vegetation`
    ## Spatial correlogram for CGL Herbaceous vegetation 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.5e-01    -5.0e-04  1.8e-04               57          <2e-16 ***
    ## 2 (2017)  5.9e-01    -5.0e-04  9.4e-05               60          <2e-16 ***
    ## 3 (2017)  4.8e-01    -5.0e-04  6.6e-05               58          <2e-16 ***
    ## 4 (2017)  4.0e-01    -5.0e-04  5.2e-05               56          <2e-16 ***
    ## 5 (2017)  3.4e-01    -5.0e-04  4.4e-05               52          <2e-16 ***
    ## 6 (2017)  2.9e-01    -5.0e-04  3.8e-05               47          <2e-16 ***
    ## 7 (2017)  2.4e-01    -5.0e-04  3.4e-05               40          <2e-16 ***
    ## 8 (2017)  2.0e-01    -5.0e-04  3.1e-05               35          <2e-16 ***
    ## 9 (2017)  1.6e-01    -5.0e-04  2.9e-05               31          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Cultivated and managed vegetation / agriculture`
    ## Spatial correlogram for CGL Cultivated and managed vegetation / agriculture 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.9e-01    -5.0e-04  1.8e-04             52.4          <2e-16 ***
    ## 2 (2017)  4.6e-01    -5.0e-04  9.3e-05             47.3          <2e-16 ***
    ## 3 (2017)  2.9e-01    -5.0e-04  6.6e-05             36.0          <2e-16 ***
    ## 4 (2017)  1.9e-01    -5.0e-04  5.2e-05             26.4          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.4e-05             18.5          <2e-16 ***
    ## 6 (2017)  6.7e-02    -5.0e-04  3.8e-05             11.0          <2e-16 ***
    ## 7 (2017)  3.0e-02    -5.0e-04  3.4e-05              5.2           7e-07 ***
    ## 8 (2017)  6.9e-03    -5.0e-04  3.1e-05              1.3            0.18    
    ## 9 (2017) -1.1e-02    -5.0e-04  2.8e-05             -2.0            0.09 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Urban / built up`
    ## Spatial correlogram for CGL Urban / built up 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.7e-01    -5.0e-04  1.7e-04             44.0          <2e-16 ***
    ## 2 (2017)  3.3e-01    -5.0e-04  9.1e-05             35.1          <2e-16 ***
    ## 3 (2017)  1.9e-01    -5.0e-04  6.4e-05             23.4          <2e-16 ***
    ## 4 (2017)  9.5e-02    -5.0e-04  5.1e-05             13.4          <2e-16 ***
    ## 5 (2017)  5.0e-02    -5.0e-04  4.3e-05              7.7           9e-14 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.7e-05              5.8           2e-08 ***
    ## 7 (2017)  1.9e-02    -5.0e-04  3.3e-05              3.4           0.002 ** 
    ## 8 (2017)  1.2e-02    -5.0e-04  3.0e-05              2.3           0.047 *  
    ## 9 (2017)  3.1e-03    -5.0e-04  2.8e-05              0.7           0.498    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Bare / sparse vegetation`
    ## Spatial correlogram for CGL Bare / sparse vegetation 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.5e-01    -5.0e-04  1.5e-04             20.1          <2e-16 ***
    ## 2 (2017)  1.1e-01    -5.0e-04  8.2e-05             11.9          <2e-16 ***
    ## 3 (2017)  2.5e-02    -5.0e-04  5.8e-05              3.3           0.005 ** 
    ## 4 (2017)  4.6e-03    -5.0e-04  4.6e-05              0.7           1.000    
    ## 5 (2017)  2.7e-02    -5.0e-04  3.9e-05              4.4           6e-05 ***
    ## 6 (2017)  2.5e-02    -5.0e-04  3.4e-05              4.5           6e-05 ***
    ## 7 (2017)  1.5e-02    -5.0e-04  3.0e-05              2.9           0.015 *  
    ## 8 (2017)  2.5e-03    -5.0e-04  2.7e-05              0.6           1.000    
    ## 9 (2017) -5.3e-03    -5.0e-04  2.5e-05             -1.0           1.000    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Permanent water bodies`
    ## Spatial correlogram for CGL Permanent water bodies 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.7e-01    -5.0e-04  1.7e-04             44.4          <2e-16 ***
    ## 2 (2017)  3.2e-01    -5.0e-04  8.8e-05             33.9          <2e-16 ***
    ## 3 (2017)  1.4e-01    -5.0e-04  6.2e-05             18.3          <2e-16 ***
    ## 4 (2017)  8.0e-02    -5.0e-04  5.0e-05             11.4          <2e-16 ***
    ## 5 (2017)  4.9e-02    -5.0e-04  4.2e-05              7.6           1e-13 ***
    ## 6 (2017)  4.0e-02    -5.0e-04  3.6e-05              6.7           8e-11 ***
    ## 7 (2017)  3.4e-02    -5.0e-04  3.2e-05              6.0           6e-09 ***
    ## 8 (2017)  2.3e-02    -5.0e-04  2.9e-05              4.4           2e-05 ***
    ## 9 (2017)  1.2e-02    -5.0e-04  2.7e-05              2.4            0.01 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGL Herbaceous wetland`
    ## Spatial correlogram for CGL Herbaceous wetland 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.0e-01    -5.0e-04  1.7e-04             38.2          <2e-16 ***
    ## 2 (2017)  2.5e-01    -5.0e-04  9.1e-05             26.8          <2e-16 ***
    ## 3 (2017)  1.7e-01    -5.0e-04  6.4e-05             21.2          <2e-16 ***
    ## 4 (2017)  1.0e-01    -5.0e-04  5.1e-05             14.3          <2e-16 ***
    ## 5 (2017)  3.5e-02    -5.0e-04  4.3e-05              5.4           4e-07 ***
    ## 6 (2017) -5.2e-06    -5.0e-04  3.7e-05              0.1            1.00    
    ## 7 (2017) -4.7e-03    -5.0e-04  3.3e-05             -0.7            1.00    
    ## 8 (2017) -4.6e-03    -5.0e-04  3.0e-05             -0.8            1.00    
    ## 9 (2017) -1.3e-02    -5.0e-04  2.8e-05             -2.5            0.06 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Peak/ridge (warm)`
    ## Spatial correlogram for GSL Peak/ridge (warm) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.4e-01    -5.0e-04  1.8e-04             40.5          <2e-16 ***
    ## 2 (2017)  3.6e-01    -5.0e-04  9.3e-05             37.7          <2e-16 ***
    ## 3 (2017)  2.8e-01    -5.0e-04  6.6e-05             34.4          <2e-16 ***
    ## 4 (2017)  2.0e-01    -5.0e-04  5.2e-05             28.3          <2e-16 ***
    ## 5 (2017)  1.5e-01    -5.0e-04  4.4e-05             22.1          <2e-16 ***
    ## 6 (2017)  9.1e-02    -5.0e-04  3.8e-05             14.8          <2e-16 ***
    ## 7 (2017)  5.2e-02    -5.0e-04  3.4e-05              9.0          <2e-16 ***
    ## 8 (2017)  2.7e-02    -5.0e-04  3.1e-05              5.0           1e-06 ***
    ## 9 (2017)  1.8e-02    -5.0e-04  2.8e-05              3.4           6e-04 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Peak/ridge`
    ## Spatial correlogram for GSL Peak/ridge 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.1e-01    -5.0e-04  1.6e-04             16.1          <2e-16 ***
    ## 2 (2017)  1.6e-01    -5.0e-04  8.6e-05             17.0          <2e-16 ***
    ## 3 (2017)  1.0e-01    -5.0e-04  6.1e-05             13.5          <2e-16 ***
    ## 4 (2017)  8.9e-02    -5.0e-04  4.8e-05             12.9          <2e-16 ***
    ## 5 (2017)  5.9e-02    -5.0e-04  4.0e-05              9.3          <2e-16 ***
    ## 6 (2017)  3.0e-02    -5.0e-04  3.5e-05              5.1           1e-06 ***
    ## 7 (2017)  2.5e-02    -5.0e-04  3.1e-05              4.5           2e-05 ***
    ## 8 (2017)  1.8e-02    -5.0e-04  2.8e-05              3.5           0.001 ** 
    ## 9 (2017)  1.6e-02    -5.0e-04  2.6e-05              3.3           0.001 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Mountain/divide`
    ## Spatial correlogram for GSL Mountain/divide 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.0e-01    -5.0e-04  1.7e-04               30          <2e-16 ***
    ## 2 (2017)  2.8e-01    -5.0e-04  9.3e-05               29          <2e-16 ***
    ## 3 (2017)  2.3e-01    -5.0e-04  6.5e-05               29          <2e-16 ***
    ## 4 (2017)  1.7e-01    -5.0e-04  5.2e-05               24          <2e-16 ***
    ## 5 (2017)  1.3e-01    -5.0e-04  4.4e-05               20          <2e-16 ***
    ## 6 (2017)  1.1e-01    -5.0e-04  3.8e-05               18          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05               19          <2e-16 ***
    ## 8 (2017)  8.3e-02    -5.0e-04  3.1e-05               15          <2e-16 ***
    ## 9 (2017)  6.9e-02    -5.0e-04  2.8e-05               13          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Cliff`
    ## Spatial correlogram for GSL Cliff 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.1e-01    -5.0e-04  1.4e-04              9.3          <2e-16 ***
    ## 2 (2017)  4.5e-02    -5.0e-04  7.2e-05              5.4           6e-07 ***
    ## 3 (2017)  2.0e-02    -5.0e-04  5.1e-05              2.8            0.03 *  
    ## 4 (2017)  1.1e-02    -5.0e-04  4.0e-05              1.8            0.32    
    ## 5 (2017)  4.3e-03    -5.0e-04  3.4e-05              0.8            0.66    
    ## 6 (2017)  6.5e-03    -5.0e-04  2.9e-05              1.3            0.58    
    ## 7 (2017)  1.4e-02    -5.0e-04  2.6e-05              2.9            0.03 *  
    ## 8 (2017)  8.6e-03    -5.0e-04  2.4e-05              1.9            0.32    
    ## 9 (2017)  4.1e-03    -5.0e-04  2.2e-05              1.0            0.66    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Upper slope (warm)`
    ## Spatial correlogram for GSL Upper slope (warm) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.6e-01    -5.0e-04  1.8e-04             49.7          <2e-16 ***
    ## 2 (2017)  4.7e-01    -5.0e-04  9.4e-05             48.2          <2e-16 ***
    ## 3 (2017)  3.4e-01    -5.0e-04  6.6e-05             41.4          <2e-16 ***
    ## 4 (2017)  2.6e-01    -5.0e-04  5.3e-05             35.8          <2e-16 ***
    ## 5 (2017)  2.0e-01    -5.0e-04  4.4e-05             29.6          <2e-16 ***
    ## 6 (2017)  1.4e-01    -5.0e-04  3.8e-05             22.7          <2e-16 ***
    ## 7 (2017)  9.2e-02    -5.0e-04  3.4e-05             15.8          <2e-16 ***
    ## 8 (2017)  5.5e-02    -5.0e-04  3.1e-05             10.0          <2e-16 ***
    ## 9 (2017)  4.1e-02    -5.0e-04  2.9e-05              7.7           1e-14 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Upper slope`
    ## Spatial correlogram for GSL Upper slope 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.1e-01    -5.0e-04  1.8e-04               46          <2e-16 ***
    ## 2 (2017)  4.3e-01    -5.0e-04  9.3e-05               45          <2e-16 ***
    ## 3 (2017)  3.4e-01    -5.0e-04  6.6e-05               42          <2e-16 ***
    ## 4 (2017)  2.6e-01    -5.0e-04  5.2e-05               36          <2e-16 ***
    ## 5 (2017)  2.1e-01    -5.0e-04  4.4e-05               32          <2e-16 ***
    ## 6 (2017)  1.9e-01    -5.0e-04  3.8e-05               30          <2e-16 ***
    ## 7 (2017)  1.7e-01    -5.0e-04  3.4e-05               30          <2e-16 ***
    ## 8 (2017)  1.5e-01    -5.0e-04  3.1e-05               27          <2e-16 ***
    ## 9 (2017)  1.3e-01    -5.0e-04  2.8e-05               24          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Upper slope (cool)`
    ## Spatial correlogram for GSL Upper slope (cool) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.0e-02    -5.0e-04  1.3e-04              2.7            0.06 .  
    ## 2 (2017) -2.7e-03    -5.0e-04  6.7e-05             -0.3            1.00    
    ## 3 (2017) -2.6e-04    -5.0e-04  4.7e-05              0.0            1.00    
    ## 4 (2017)  1.4e-02    -5.0e-04  3.7e-05              2.4            0.13    
    ## 5 (2017) -3.3e-03    -5.0e-04  3.1e-05             -0.5            1.00    
    ## 6 (2017) -3.2e-03    -5.0e-04  2.7e-05             -0.5            1.00    
    ## 7 (2017)  5.1e-03    -5.0e-04  2.4e-05              1.1            1.00    
    ## 8 (2017)  1.8e-02    -5.0e-04  2.2e-05              3.9           8e-04 ***
    ## 9 (2017) -2.9e-03    -5.0e-04  2.0e-05             -0.5            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Upper slope (flat)`
    ## Spatial correlogram for GSL Upper slope (flat) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.3e-01    -5.0e-04  1.8e-04               47          <2e-16 ***
    ## 2 (2017)  5.1e-01    -5.0e-04  9.4e-05               53          <2e-16 ***
    ## 3 (2017)  4.2e-01    -5.0e-04  6.6e-05               52          <2e-16 ***
    ## 4 (2017)  3.6e-01    -5.0e-04  5.2e-05               50          <2e-16 ***
    ## 5 (2017)  3.1e-01    -5.0e-04  4.4e-05               46          <2e-16 ***
    ## 6 (2017)  2.5e-01    -5.0e-04  3.8e-05               40          <2e-16 ***
    ## 7 (2017)  1.9e-01    -5.0e-04  3.4e-05               33          <2e-16 ***
    ## 8 (2017)  1.4e-01    -5.0e-04  3.1e-05               25          <2e-16 ***
    ## 9 (2017)  1.2e-01    -5.0e-04  2.8e-05               22          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Lower slope (warm)`
    ## Spatial correlogram for GSL Lower slope (warm) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.9e-01    -5.0e-04  1.8e-04             51.6          <2e-16 ***
    ## 2 (2017)  5.1e-01    -5.0e-04  9.4e-05             52.2          <2e-16 ***
    ## 3 (2017)  3.9e-01    -5.0e-04  6.6e-05             48.0          <2e-16 ***
    ## 4 (2017)  3.2e-01    -5.0e-04  5.3e-05             43.6          <2e-16 ***
    ## 5 (2017)  2.5e-01    -5.0e-04  4.4e-05             37.7          <2e-16 ***
    ## 6 (2017)  1.8e-01    -5.0e-04  3.8e-05             29.4          <2e-16 ***
    ## 7 (2017)  1.2e-01    -5.0e-04  3.4e-05             20.6          <2e-16 ***
    ## 8 (2017)  6.9e-02    -5.0e-04  3.1e-05             12.4          <2e-16 ***
    ## 9 (2017)  4.2e-02    -5.0e-04  2.9e-05              7.9           4e-15 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Lower slope`
    ## Spatial correlogram for GSL Lower slope 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.1e-01    -5.0e-04  1.8e-04               46          <2e-16 ***
    ## 2 (2017)  4.2e-01    -5.0e-04  9.3e-05               44          <2e-16 ***
    ## 3 (2017)  3.1e-01    -5.0e-04  6.6e-05               39          <2e-16 ***
    ## 4 (2017)  2.4e-01    -5.0e-04  5.2e-05               33          <2e-16 ***
    ## 5 (2017)  2.0e-01    -5.0e-04  4.4e-05               30          <2e-16 ***
    ## 6 (2017)  1.8e-01    -5.0e-04  3.8e-05               28          <2e-16 ***
    ## 7 (2017)  1.6e-01    -5.0e-04  3.4e-05               27          <2e-16 ***
    ## 8 (2017)  1.4e-01    -5.0e-04  3.1e-05               25          <2e-16 ***
    ## 9 (2017)  1.1e-01    -5.0e-04  2.8e-05               22          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Lower slope (cool)`
    ## Spatial correlogram for GSL Lower slope (cool) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -2.0e-03    -5.0e-04  1.3e-04             -0.1            1.00    
    ## 2 (2017) -2.1e-03    -5.0e-04  6.7e-05             -0.2            1.00    
    ## 3 (2017) -2.1e-03    -5.0e-04  4.7e-05             -0.2            1.00    
    ## 4 (2017)  6.5e-03    -5.0e-04  3.8e-05              1.1            1.00    
    ## 5 (2017) -2.5e-03    -5.0e-04  3.2e-05             -0.3            1.00    
    ## 6 (2017) -2.5e-03    -5.0e-04  2.7e-05             -0.4            1.00    
    ## 7 (2017)  1.4e-02    -5.0e-04  2.4e-05              3.0            0.02 *  
    ## 8 (2017)  2.1e-02    -5.0e-04  2.2e-05              4.5           5e-05 ***
    ## 9 (2017) -2.2e-03    -5.0e-04  2.0e-05             -0.4            1.00    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Lower slope (flat)`
    ## Spatial correlogram for GSL Lower slope (flat) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.8e-01    -5.0e-04  1.8e-04             43.5          <2e-16 ***
    ## 2 (2017)  3.7e-01    -5.0e-04  9.4e-05             38.5          <2e-16 ***
    ## 3 (2017)  2.5e-01    -5.0e-04  6.6e-05             30.7          <2e-16 ***
    ## 4 (2017)  1.6e-01    -5.0e-04  5.3e-05             22.3          <2e-16 ***
    ## 5 (2017)  9.6e-02    -5.0e-04  4.4e-05             14.5          <2e-16 ***
    ## 6 (2017)  5.1e-02    -5.0e-04  3.8e-05              8.3           4e-16 ***
    ## 7 (2017)  2.7e-02    -5.0e-04  3.4e-05              4.7           7e-06 ***
    ## 8 (2017)  9.9e-03    -5.0e-04  3.1e-05              1.9             0.1    
    ## 9 (2017)  3.7e-03    -5.0e-04  2.9e-05              0.8             0.4    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Valley`
    ## Spatial correlogram for GSL Valley 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.6e-01    -5.0e-04  1.8e-04               35          <2e-16 ***
    ## 2 (2017)  2.9e-01    -5.0e-04  9.4e-05               30          <2e-16 ***
    ## 3 (2017)  2.1e-01    -5.0e-04  6.6e-05               26          <2e-16 ***
    ## 4 (2017)  1.5e-01    -5.0e-04  5.2e-05               21          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.4e-05               18          <2e-16 ***
    ## 6 (2017)  1.2e-01    -5.0e-04  3.8e-05               19          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05               19          <2e-16 ***
    ## 8 (2017)  1.0e-01    -5.0e-04  3.1e-05               19          <2e-16 ***
    ## 9 (2017)  9.9e-02    -5.0e-04  2.8e-05               19          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GSL Valley (narrow)`
    ## Spatial correlogram for GSL Valley (narrow) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.4e-01    -5.0e-04  1.8e-04             40.5          <2e-16 ***
    ## 2 (2017)  3.6e-01    -5.0e-04  9.4e-05             37.5          <2e-16 ***
    ## 3 (2017)  2.6e-01    -5.0e-04  6.6e-05             32.3          <2e-16 ***
    ## 4 (2017)  1.9e-01    -5.0e-04  5.2e-05             26.7          <2e-16 ***
    ## 5 (2017)  1.5e-01    -5.0e-04  4.4e-05             22.4          <2e-16 ***
    ## 6 (2017)  1.1e-01    -5.0e-04  3.8e-05             18.4          <2e-16 ***
    ## 7 (2017)  7.4e-02    -5.0e-04  3.4e-05             12.8          <2e-16 ***
    ## 8 (2017)  4.6e-02    -5.0e-04  3.1e-05              8.3          <2e-16 ***
    ## 9 (2017)  3.8e-02    -5.0e-04  2.8e-05              7.2           7e-13 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH coefficient_of_variation_1km`
    ## Spatial correlogram for GHH coefficient_of_variation_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.8e-01    -5.0e-04  1.8e-04             36.3          <2e-16 ***
    ## 2 (2017)  2.6e-01    -5.0e-04  9.3e-05             26.8          <2e-16 ***
    ## 3 (2017)  1.3e-01    -5.0e-04  6.6e-05             15.6          <2e-16 ***
    ## 4 (2017)  7.7e-02    -5.0e-04  5.2e-05             10.7          <2e-16 ***
    ## 5 (2017)  3.3e-02    -5.0e-04  4.4e-05              5.1           1e-06 ***
    ## 6 (2017)  1.3e-02    -5.0e-04  3.8e-05              2.1            0.06 .  
    ## 7 (2017) -4.6e-03    -5.0e-04  3.4e-05             -0.7            0.48    
    ## 8 (2017) -1.5e-02    -5.0e-04  3.1e-05             -2.6            0.02 *  
    ## 9 (2017) -2.5e-02    -5.0e-04  2.8e-05             -4.6           2e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH contrast_1km`
    ## Spatial correlogram for GHH contrast_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.7e-01    -5.0e-04  1.7e-04             28.0          <2e-16 ***
    ## 2 (2017)  1.9e-01    -5.0e-04  9.1e-05             19.9          <2e-16 ***
    ## 3 (2017)  1.2e-01    -5.0e-04  6.5e-05             15.6          <2e-16 ***
    ## 4 (2017)  1.1e-01    -5.0e-04  5.1e-05             15.7          <2e-16 ***
    ## 5 (2017)  7.3e-02    -5.0e-04  4.3e-05             11.2          <2e-16 ***
    ## 6 (2017)  4.2e-02    -5.0e-04  3.7e-05              6.9           2e-11 ***
    ## 7 (2017)  3.8e-02    -5.0e-04  3.3e-05              6.8           4e-11 ***
    ## 8 (2017)  2.7e-02    -5.0e-04  3.0e-05              4.9           2e-06 ***
    ## 9 (2017)  1.6e-02    -5.0e-04  2.8e-05              3.1           0.002 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH correlation_1km`
    ## Spatial correlogram for GHH correlation_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.3e-01    -5.0e-04  1.8e-04             24.7          <2e-16 ***
    ## 2 (2017)  1.7e-01    -5.0e-04  9.3e-05             17.8          <2e-16 ***
    ## 3 (2017)  7.9e-02    -5.0e-04  6.6e-05              9.8          <2e-16 ***
    ## 4 (2017)  7.0e-02    -5.0e-04  5.2e-05              9.7          <2e-16 ***
    ## 5 (2017)  6.2e-02    -5.0e-04  4.4e-05              9.4          <2e-16 ***
    ## 6 (2017)  5.2e-02    -5.0e-04  3.8e-05              8.4          <2e-16 ***
    ## 7 (2017)  4.3e-02    -5.0e-04  3.4e-05              7.5           2e-13 ***
    ## 8 (2017)  2.4e-02    -5.0e-04  3.1e-05              4.4           9e-06 ***
    ## 9 (2017)  2.4e-02    -5.0e-04  2.8e-05              4.6           7e-06 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH dissimilarity_1km`
    ## Spatial correlogram for GHH dissimilarity_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.3e-01    -5.0e-04  1.8e-04             32.4          <2e-16 ***
    ## 2 (2017)  2.2e-01    -5.0e-04  9.3e-05             23.1          <2e-16 ***
    ## 3 (2017)  1.4e-01    -5.0e-04  6.6e-05             17.0          <2e-16 ***
    ## 4 (2017)  1.1e-01    -5.0e-04  5.2e-05             15.3          <2e-16 ***
    ## 5 (2017)  6.4e-02    -5.0e-04  4.4e-05              9.7          <2e-16 ***
    ## 6 (2017)  3.7e-02    -5.0e-04  3.8e-05              6.2           3e-09 ***
    ## 7 (2017)  2.9e-02    -5.0e-04  3.4e-05              5.1           1e-06 ***
    ## 8 (2017)  1.8e-02    -5.0e-04  3.1e-05              3.2           0.002 ** 
    ## 9 (2017)  1.0e-02    -5.0e-04  2.8e-05              2.0           0.046 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH entropy_1km`
    ## Spatial correlogram for GHH entropy_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.9e-01    -5.0e-04  1.7e-04             29.8          <2e-16 ***
    ## 2 (2017)  2.1e-01    -5.0e-04  9.2e-05             21.9          <2e-16 ***
    ## 3 (2017)  8.5e-02    -5.0e-04  6.5e-05             10.6          <2e-16 ***
    ## 4 (2017)  7.6e-02    -5.0e-04  5.1e-05             10.7          <2e-16 ***
    ## 5 (2017)  6.4e-02    -5.0e-04  4.3e-05              9.7          <2e-16 ***
    ## 6 (2017)  4.8e-02    -5.0e-04  3.7e-05              7.8           2e-14 ***
    ## 7 (2017)  3.2e-02    -5.0e-04  3.3e-05              5.6           6e-08 ***
    ## 8 (2017)  1.8e-02    -5.0e-04  3.0e-05              3.4           6e-04 ***
    ## 9 (2017)  2.6e-02    -5.0e-04  2.8e-05              5.0           1e-06 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH homogeneity_1km`
    ## Spatial correlogram for GHH homogeneity_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.8e-01    -5.0e-04  1.8e-04             43.9          <2e-16 ***
    ## 2 (2017)  3.5e-01    -5.0e-04  9.4e-05             36.5          <2e-16 ***
    ## 3 (2017)  2.3e-01    -5.0e-04  6.6e-05             28.7          <2e-16 ***
    ## 4 (2017)  1.6e-01    -5.0e-04  5.2e-05             22.4          <2e-16 ***
    ## 5 (2017)  1.1e-01    -5.0e-04  4.4e-05             15.9          <2e-16 ***
    ## 6 (2017)  7.2e-02    -5.0e-04  3.8e-05             11.7          <2e-16 ***
    ## 7 (2017)  5.1e-02    -5.0e-04  3.4e-05              8.8          <2e-16 ***
    ## 8 (2017)  3.3e-02    -5.0e-04  3.1e-05              6.1           2e-09 ***
    ## 9 (2017)  2.4e-02    -5.0e-04  2.9e-05              4.6           4e-06 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH maximum_1km`
    ## Spatial correlogram for GHH maximum_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.3e-01    -5.0e-04  1.8e-04               40          <2e-16 ***
    ## 2 (2017)  3.3e-01    -5.0e-04  9.4e-05               34          <2e-16 ***
    ## 3 (2017)  2.2e-01    -5.0e-04  6.6e-05               27          <2e-16 ***
    ## 4 (2017)  1.6e-01    -5.0e-04  5.2e-05               23          <2e-16 ***
    ## 5 (2017)  1.3e-01    -5.0e-04  4.4e-05               20          <2e-16 ***
    ## 6 (2017)  9.0e-02    -5.0e-04  3.8e-05               15          <2e-16 ***
    ## 7 (2017)  6.2e-02    -5.0e-04  3.4e-05               11          <2e-16 ***
    ## 8 (2017)  4.4e-02    -5.0e-04  3.1e-05                8           2e-15 ***
    ## 9 (2017)  3.7e-02    -5.0e-04  2.8e-05                7           3e-12 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH mean_1km`
    ## Spatial correlogram for GHH mean_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.3e-01    -5.0e-04  1.8e-04               55          <2e-16 ***
    ## 2 (2017)  5.8e-01    -5.0e-04  9.4e-05               60          <2e-16 ***
    ## 3 (2017)  4.6e-01    -5.0e-04  6.6e-05               57          <2e-16 ***
    ## 4 (2017)  4.0e-01    -5.0e-04  5.2e-05               55          <2e-16 ***
    ## 5 (2017)  3.6e-01    -5.0e-04  4.4e-05               54          <2e-16 ***
    ## 6 (2017)  3.2e-01    -5.0e-04  3.8e-05               52          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               49          <2e-16 ***
    ## 8 (2017)  2.6e-01    -5.0e-04  3.1e-05               47          <2e-16 ***
    ## 9 (2017)  2.6e-01    -5.0e-04  2.8e-05               48          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH pielou_1km`
    ## Spatial correlogram for GHH pielou_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.0e-01    -5.0e-04  1.7e-04             22.9          <2e-16 ***
    ## 2 (2017)  1.1e-01    -5.0e-04  9.1e-05             12.1          <2e-16 ***
    ## 3 (2017) -9.8e-04    -5.0e-04  6.4e-05             -0.1            0.95    
    ## 4 (2017)  1.8e-02    -5.0e-04  5.1e-05              2.7            0.02 *  
    ## 5 (2017)  2.6e-02    -5.0e-04  4.3e-05              4.0           3e-04 ***
    ## 6 (2017)  2.8e-02    -5.0e-04  3.7e-05              4.7           2e-05 ***
    ## 7 (2017)  1.7e-02    -5.0e-04  3.3e-05              3.0            0.01 *  
    ## 8 (2017)  1.1e-02    -5.0e-04  3.0e-05              2.1            0.08 .  
    ## 9 (2017)  2.1e-02    -5.0e-04  2.8e-05              4.1           2e-04 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH range_1km`
    ## Spatial correlogram for GHH range_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.4e-01    -5.0e-04  1.8e-04             33.2          <2e-16 ***
    ## 2 (2017)  2.3e-01    -5.0e-04  9.4e-05             23.4          <2e-16 ***
    ## 3 (2017)  1.4e-01    -5.0e-04  6.6e-05             16.7          <2e-16 ***
    ## 4 (2017)  1.0e-01    -5.0e-04  5.2e-05             13.9          <2e-16 ***
    ## 5 (2017)  5.8e-02    -5.0e-04  4.4e-05              8.8          <2e-16 ***
    ## 6 (2017)  3.8e-02    -5.0e-04  3.8e-05              6.2           3e-09 ***
    ## 7 (2017)  2.9e-02    -5.0e-04  3.4e-05              5.0           2e-06 ***
    ## 8 (2017)  1.6e-02    -5.0e-04  3.1e-05              3.0           0.005 ** 
    ## 9 (2017)  1.2e-02    -5.0e-04  2.8e-05              2.3           0.022 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH shannon_1km`
    ## Spatial correlogram for GHH shannon_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.8e-01    -5.0e-04  1.7e-04             29.0          <2e-16 ***
    ## 2 (2017)  2.0e-01    -5.0e-04  9.3e-05             20.6          <2e-16 ***
    ## 3 (2017)  8.2e-02    -5.0e-04  6.5e-05             10.2          <2e-16 ***
    ## 4 (2017)  7.1e-02    -5.0e-04  5.2e-05             10.0          <2e-16 ***
    ## 5 (2017)  5.4e-02    -5.0e-04  4.4e-05              8.3           4e-16 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.8e-05              5.7           4e-08 ***
    ## 7 (2017)  2.5e-02    -5.0e-04  3.4e-05              4.3           4e-05 ***
    ## 8 (2017)  1.5e-02    -5.0e-04  3.1e-05              2.8           0.005 ** 
    ## 9 (2017)  2.1e-02    -5.0e-04  2.8e-05              4.0           1e-04 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH simpson_1km`
    ## Spatial correlogram for GHH simpson_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.2e-01    -5.0e-04  1.7e-04             24.8          <2e-16 ***
    ## 2 (2017)  1.5e-01    -5.0e-04  9.1e-05             15.4          <2e-16 ***
    ## 3 (2017)  2.9e-02    -5.0e-04  6.4e-05              3.7           5e-04 ***
    ## 4 (2017)  4.0e-02    -5.0e-04  5.1e-05              5.6           1e-07 ***
    ## 5 (2017)  3.8e-02    -5.0e-04  4.3e-05              5.9           3e-08 ***
    ## 6 (2017)  3.1e-02    -5.0e-04  3.7e-05              5.2           1e-06 ***
    ## 7 (2017)  2.1e-02    -5.0e-04  3.3e-05              3.8           5e-04 ***
    ## 8 (2017)  1.4e-02    -5.0e-04  3.0e-05              2.6            0.01 *  
    ## 9 (2017)  2.2e-02    -5.0e-04  2.8e-05              4.3           6e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH standard_deviation_1km`
    ## Spatial correlogram for GHH standard_deviation_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.3e-01    -5.0e-04  1.8e-04             32.4          <2e-16 ***
    ## 2 (2017)  2.2e-01    -5.0e-04  9.3e-05             22.9          <2e-16 ***
    ## 3 (2017)  1.3e-01    -5.0e-04  6.6e-05             16.2          <2e-16 ***
    ## 4 (2017)  1.0e-01    -5.0e-04  5.2e-05             13.9          <2e-16 ***
    ## 5 (2017)  5.5e-02    -5.0e-04  4.4e-05              8.4          <2e-16 ***
    ## 6 (2017)  3.6e-02    -5.0e-04  3.8e-05              5.9           2e-08 ***
    ## 7 (2017)  2.6e-02    -5.0e-04  3.4e-05              4.6           1e-05 ***
    ## 8 (2017)  1.6e-02    -5.0e-04  3.1e-05              2.9           0.008 ** 
    ## 9 (2017)  1.0e-02    -5.0e-04  2.8e-05              2.0           0.044 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH uniformity_1km`
    ## Spatial correlogram for GHH uniformity_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.0e-01    -5.0e-04  1.8e-04             38.1          <2e-16 ***
    ## 2 (2017)  3.2e-01    -5.0e-04  9.3e-05             32.7          <2e-16 ***
    ## 3 (2017)  2.1e-01    -5.0e-04  6.6e-05             26.5          <2e-16 ***
    ## 4 (2017)  1.8e-01    -5.0e-04  5.2e-05             24.8          <2e-16 ***
    ## 5 (2017)  1.5e-01    -5.0e-04  4.4e-05             23.4          <2e-16 ***
    ## 6 (2017)  1.1e-01    -5.0e-04  3.8e-05             18.3          <2e-16 ***
    ## 7 (2017)  7.7e-02    -5.0e-04  3.4e-05             13.3          <2e-16 ***
    ## 8 (2017)  5.7e-02    -5.0e-04  3.1e-05             10.4          <2e-16 ***
    ## 9 (2017)  4.7e-02    -5.0e-04  2.8e-05              8.9          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GHH variance_1km`
    ## Spatial correlogram for GHH variance_1km 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.0e-01    -5.0e-04  1.7e-04             30.5          <2e-16 ***
    ## 2 (2017)  2.1e-01    -5.0e-04  9.3e-05             21.8          <2e-16 ***
    ## 3 (2017)  1.3e-01    -5.0e-04  6.5e-05             16.1          <2e-16 ***
    ## 4 (2017)  1.0e-01    -5.0e-04  5.2e-05             14.3          <2e-16 ***
    ## 5 (2017)  5.6e-02    -5.0e-04  4.4e-05              8.6          <2e-16 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.8e-05              5.7           5e-08 ***
    ## 7 (2017)  3.0e-02    -5.0e-04  3.4e-05              5.3           4e-07 ***
    ## 8 (2017)  1.7e-02    -5.0e-04  3.1e-05              3.2           0.002 ** 
    ## 9 (2017)  1.1e-02    -5.0e-04  2.8e-05              2.1           0.035 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio01 Annual mean temperature`
    ## Spatial correlogram for WCL bio01 Annual mean temperature 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.5e-01    -5.0e-04  1.8e-04               49          <2e-16 ***
    ## 2 (2017)  5.1e-01    -5.0e-04  9.3e-05               53          <2e-16 ***
    ## 3 (2017)  3.7e-01    -5.0e-04  6.6e-05               45          <2e-16 ***
    ## 4 (2017)  3.0e-01    -5.0e-04  5.2e-05               42          <2e-16 ***
    ## 5 (2017)  2.3e-01    -5.0e-04  4.4e-05               35          <2e-16 ***
    ## 6 (2017)  1.7e-01    -5.0e-04  3.8e-05               28          <2e-16 ***
    ## 7 (2017)  1.2e-01    -5.0e-04  3.4e-05               20          <2e-16 ***
    ## 8 (2017)  9.3e-02    -5.0e-04  3.1e-05               17          <2e-16 ***
    ## 9 (2017)  8.3e-02    -5.0e-04  2.8e-05               16          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio02 Mean diurnal range mean of monthly max temp - min temp`
    ## Spatial correlogram for WCL bio02 Mean diurnal range mean of monthly max temp - min temp 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.4e-01    -5.0e-04  1.8e-04               56          <2e-16 ***
    ## 2 (2017)  6.6e-01    -5.0e-04  9.3e-05               68          <2e-16 ***
    ## 3 (2017)  5.7e-01    -5.0e-04  6.6e-05               70          <2e-16 ***
    ## 4 (2017)  5.4e-01    -5.0e-04  5.2e-05               75          <2e-16 ***
    ## 5 (2017)  5.0e-01    -5.0e-04  4.4e-05               76          <2e-16 ***
    ## 6 (2017)  4.6e-01    -5.0e-04  3.8e-05               75          <2e-16 ***
    ## 7 (2017)  4.1e-01    -5.0e-04  3.4e-05               71          <2e-16 ***
    ## 8 (2017)  3.8e-01    -5.0e-04  3.1e-05               68          <2e-16 ***
    ## 9 (2017)  3.5e-01    -5.0e-04  2.8e-05               65          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio03 Isothermality bio02 div/bio07`
    ## Spatial correlogram for WCL bio03 Isothermality bio02 div/bio07 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.8e-01    -5.0e-04  1.7e-04               29          <2e-16 ***
    ## 2 (2017)  2.4e-01    -5.0e-04  9.0e-05               26          <2e-16 ***
    ## 3 (2017)  1.0e-01    -5.0e-04  6.4e-05               13          <2e-16 ***
    ## 4 (2017)  1.1e-01    -5.0e-04  5.0e-05               16          <2e-16 ***
    ## 5 (2017)  1.1e-01    -5.0e-04  4.2e-05               17          <2e-16 ***
    ## 6 (2017)  9.7e-02    -5.0e-04  3.7e-05               16          <2e-16 ***
    ## 7 (2017)  6.8e-02    -5.0e-04  3.3e-05               12          <2e-16 ***
    ## 8 (2017)  6.6e-02    -5.0e-04  3.0e-05               12          <2e-16 ***
    ## 9 (2017)  7.5e-02    -5.0e-04  2.7e-05               14          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio04 Temperature seasonality Standard deviation times 100`
    ## Spatial correlogram for WCL bio04 Temperature seasonality Standard deviation times 100 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.0e-01    -5.0e-04  1.8e-04               53          <2e-16 ***
    ## 2 (2017)  6.1e-01    -5.0e-04  9.3e-05               63          <2e-16 ***
    ## 3 (2017)  5.1e-01    -5.0e-04  6.6e-05               64          <2e-16 ***
    ## 4 (2017)  5.0e-01    -5.0e-04  5.2e-05               70          <2e-16 ***
    ## 5 (2017)  4.8e-01    -5.0e-04  4.4e-05               72          <2e-16 ***
    ## 6 (2017)  4.5e-01    -5.0e-04  3.8e-05               74          <2e-16 ***
    ## 7 (2017)  4.2e-01    -5.0e-04  3.4e-05               72          <2e-16 ***
    ## 8 (2017)  4.0e-01    -5.0e-04  3.1e-05               73          <2e-16 ***
    ## 9 (2017)  3.9e-01    -5.0e-04  2.8e-05               73          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio05 Max temperature of warmest month`
    ## Spatial correlogram for WCL bio05 Max temperature of warmest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.5e-01    -5.0e-04  1.7e-04             41.4          <2e-16 ***
    ## 2 (2017)  4.0e-01    -5.0e-04  9.3e-05             41.5          <2e-16 ***
    ## 3 (2017)  2.4e-01    -5.0e-04  6.5e-05             29.7          <2e-16 ***
    ## 4 (2017)  1.9e-01    -5.0e-04  5.2e-05             26.5          <2e-16 ***
    ## 5 (2017)  1.3e-01    -5.0e-04  4.4e-05             20.2          <2e-16 ***
    ## 6 (2017)  8.3e-02    -5.0e-04  3.8e-05             13.6          <2e-16 ***
    ## 7 (2017)  3.6e-02    -5.0e-04  3.4e-05              6.2           1e-09 ***
    ## 8 (2017)  1.9e-02    -5.0e-04  3.1e-05              3.6           6e-04 ***
    ## 9 (2017)  1.8e-02    -5.0e-04  2.8e-05              3.4           6e-04 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio06 Min temperature of coldest month`
    ## Spatial correlogram for WCL bio06 Min temperature of coldest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.9e-01    -5.0e-04  1.8e-04               60          <2e-16 ***
    ## 2 (2017)  6.8e-01    -5.0e-04  9.4e-05               71          <2e-16 ***
    ## 3 (2017)  5.6e-01    -5.0e-04  6.6e-05               69          <2e-16 ***
    ## 4 (2017)  4.8e-01    -5.0e-04  5.2e-05               66          <2e-16 ***
    ## 5 (2017)  4.0e-01    -5.0e-04  4.4e-05               60          <2e-16 ***
    ## 6 (2017)  3.3e-01    -5.0e-04  3.8e-05               53          <2e-16 ***
    ## 7 (2017)  2.7e-01    -5.0e-04  3.4e-05               46          <2e-16 ***
    ## 8 (2017)  2.3e-01    -5.0e-04  3.1e-05               42          <2e-16 ***
    ## 9 (2017)  2.1e-01    -5.0e-04  2.9e-05               40          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio07 Temperature annual range bio05-bio06`
    ## Spatial correlogram for WCL bio07 Temperature annual range bio05-bio06 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.1e-01    -5.0e-04  1.7e-04               54          <2e-16 ***
    ## 2 (2017)  6.1e-01    -5.0e-04  9.3e-05               64          <2e-16 ***
    ## 3 (2017)  5.1e-01    -5.0e-04  6.6e-05               64          <2e-16 ***
    ## 4 (2017)  4.9e-01    -5.0e-04  5.2e-05               68          <2e-16 ***
    ## 5 (2017)  4.6e-01    -5.0e-04  4.4e-05               69          <2e-16 ***
    ## 6 (2017)  4.2e-01    -5.0e-04  3.8e-05               69          <2e-16 ***
    ## 7 (2017)  3.8e-01    -5.0e-04  3.4e-05               66          <2e-16 ***
    ## 8 (2017)  3.5e-01    -5.0e-04  3.1e-05               64          <2e-16 ***
    ## 9 (2017)  3.3e-01    -5.0e-04  2.8e-05               62          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio08 Mean temperature of wettest quarter`
    ## Spatial correlogram for WCL bio08 Mean temperature of wettest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.5e-01    -5.0e-04  1.8e-04               49          <2e-16 ***
    ## 2 (2017)  5.2e-01    -5.0e-04  9.3e-05               54          <2e-16 ***
    ## 3 (2017)  3.7e-01    -5.0e-04  6.6e-05               46          <2e-16 ***
    ## 4 (2017)  3.0e-01    -5.0e-04  5.2e-05               42          <2e-16 ***
    ## 5 (2017)  2.3e-01    -5.0e-04  4.4e-05               35          <2e-16 ***
    ## 6 (2017)  1.7e-01    -5.0e-04  3.8e-05               28          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05               20          <2e-16 ***
    ## 8 (2017)  8.6e-02    -5.0e-04  3.1e-05               16          <2e-16 ***
    ## 9 (2017)  7.4e-02    -5.0e-04  2.8e-05               14          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio09 Mean temperature of driest quarter`
    ## Spatial correlogram for WCL bio09 Mean temperature of driest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.7e-01    -5.0e-04  1.8e-04               51          <2e-16 ***
    ## 2 (2017)  5.4e-01    -5.0e-04  9.3e-05               56          <2e-16 ***
    ## 3 (2017)  4.1e-01    -5.0e-04  6.6e-05               50          <2e-16 ***
    ## 4 (2017)  3.4e-01    -5.0e-04  5.2e-05               48          <2e-16 ***
    ## 5 (2017)  2.8e-01    -5.0e-04  4.4e-05               42          <2e-16 ***
    ## 6 (2017)  2.2e-01    -5.0e-04  3.8e-05               35          <2e-16 ***
    ## 7 (2017)  1.6e-01    -5.0e-04  3.4e-05               28          <2e-16 ***
    ## 8 (2017)  1.4e-01    -5.0e-04  3.1e-05               25          <2e-16 ***
    ## 9 (2017)  1.3e-01    -5.0e-04  2.8e-05               24          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio10 Mean temperature of warmest quarter`
    ## Spatial correlogram for WCL bio10 Mean temperature of warmest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.3e-01    -5.0e-04  1.8e-04               48          <2e-16 ***
    ## 2 (2017)  5.0e-01    -5.0e-04  9.3e-05               52          <2e-16 ***
    ## 3 (2017)  3.5e-01    -5.0e-04  6.6e-05               43          <2e-16 ***
    ## 4 (2017)  2.9e-01    -5.0e-04  5.2e-05               40          <2e-16 ***
    ## 5 (2017)  2.2e-01    -5.0e-04  4.4e-05               33          <2e-16 ***
    ## 6 (2017)  1.6e-01    -5.0e-04  3.8e-05               27          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05               19          <2e-16 ***
    ## 8 (2017)  8.9e-02    -5.0e-04  3.1e-05               16          <2e-16 ***
    ## 9 (2017)  7.9e-02    -5.0e-04  2.8e-05               15          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio11 Mean temperature of coldest quarter`
    ## Spatial correlogram for WCL bio11 Mean temperature of coldest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.7e-01    -5.0e-04  1.8e-04               51          <2e-16 ***
    ## 2 (2017)  5.4e-01    -5.0e-04  9.3e-05               56          <2e-16 ***
    ## 3 (2017)  4.0e-01    -5.0e-04  6.6e-05               49          <2e-16 ***
    ## 4 (2017)  3.3e-01    -5.0e-04  5.2e-05               45          <2e-16 ***
    ## 5 (2017)  2.5e-01    -5.0e-04  4.4e-05               38          <2e-16 ***
    ## 6 (2017)  1.9e-01    -5.0e-04  3.8e-05               30          <2e-16 ***
    ## 7 (2017)  1.3e-01    -5.0e-04  3.4e-05               23          <2e-16 ***
    ## 8 (2017)  1.1e-01    -5.0e-04  3.1e-05               19          <2e-16 ***
    ## 9 (2017)  9.4e-02    -5.0e-04  2.8e-05               18          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio12 Annual precipitation`
    ## Spatial correlogram for WCL bio12 Annual precipitation 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.9e-01    -5.0e-04  1.8e-04               67          <2e-16 ***
    ## 2 (2017)  8.1e-01    -5.0e-04  9.4e-05               84          <2e-16 ***
    ## 3 (2017)  7.2e-01    -5.0e-04  6.6e-05               88          <2e-16 ***
    ## 4 (2017)  6.3e-01    -5.0e-04  5.3e-05               88          <2e-16 ***
    ## 5 (2017)  5.5e-01    -5.0e-04  4.4e-05               83          <2e-16 ***
    ## 6 (2017)  4.8e-01    -5.0e-04  3.8e-05               77          <2e-16 ***
    ## 7 (2017)  4.0e-01    -5.0e-04  3.4e-05               69          <2e-16 ***
    ## 8 (2017)  3.4e-01    -5.0e-04  3.1e-05               62          <2e-16 ***
    ## 9 (2017)  3.0e-01    -5.0e-04  2.9e-05               56          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio13 Precipitation of wettest month`
    ## Spatial correlogram for WCL bio13 Precipitation of wettest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.7e-01    -5.0e-04  1.8e-04               65          <2e-16 ***
    ## 2 (2017)  7.5e-01    -5.0e-04  9.4e-05               78          <2e-16 ***
    ## 3 (2017)  6.3e-01    -5.0e-04  6.6e-05               77          <2e-16 ***
    ## 4 (2017)  5.1e-01    -5.0e-04  5.3e-05               70          <2e-16 ***
    ## 5 (2017)  3.9e-01    -5.0e-04  4.4e-05               59          <2e-16 ***
    ## 6 (2017)  2.9e-01    -5.0e-04  3.8e-05               46          <2e-16 ***
    ## 7 (2017)  1.9e-01    -5.0e-04  3.4e-05               33          <2e-16 ***
    ## 8 (2017)  1.1e-01    -5.0e-04  3.1e-05               20          <2e-16 ***
    ## 9 (2017)  6.2e-02    -5.0e-04  2.9e-05               12          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio14 Precipitation of driest month`
    ## Spatial correlogram for WCL bio14 Precipitation of driest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.6e-01    -5.0e-04  1.8e-04               72          <2e-16 ***
    ## 2 (2017)  9.3e-01    -5.0e-04  9.4e-05               96          <2e-16 ***
    ## 3 (2017)  8.9e-01    -5.0e-04  6.6e-05              109          <2e-16 ***
    ## 4 (2017)  8.5e-01    -5.0e-04  5.3e-05              117          <2e-16 ***
    ## 5 (2017)  8.1e-01    -5.0e-04  4.4e-05              122          <2e-16 ***
    ## 6 (2017)  7.7e-01    -5.0e-04  3.8e-05              124          <2e-16 ***
    ## 7 (2017)  7.2e-01    -5.0e-04  3.4e-05              124          <2e-16 ***
    ## 8 (2017)  6.8e-01    -5.0e-04  3.1e-05              123          <2e-16 ***
    ## 9 (2017)  6.5e-01    -5.0e-04  2.9e-05              121          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio15 Precipitation seasonality`
    ## Spatial correlogram for WCL bio15 Precipitation seasonality 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.0e-01    -5.0e-04  1.8e-04               68          <2e-16 ***
    ## 2 (2017)  8.7e-01    -5.0e-04  9.4e-05               90          <2e-16 ***
    ## 3 (2017)  8.3e-01    -5.0e-04  6.6e-05              102          <2e-16 ***
    ## 4 (2017)  8.0e-01    -5.0e-04  5.3e-05              110          <2e-16 ***
    ## 5 (2017)  7.6e-01    -5.0e-04  4.4e-05              114          <2e-16 ***
    ## 6 (2017)  7.2e-01    -5.0e-04  3.8e-05              117          <2e-16 ***
    ## 7 (2017)  6.8e-01    -5.0e-04  3.4e-05              117          <2e-16 ***
    ## 8 (2017)  6.5e-01    -5.0e-04  3.1e-05              116          <2e-16 ***
    ## 9 (2017)  6.1e-01    -5.0e-04  2.9e-05              114          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio16 Precipitation of wettest quarter`
    ## Spatial correlogram for WCL bio16 Precipitation of wettest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.6e-01    -5.0e-04  1.8e-04               65          <2e-16 ***
    ## 2 (2017)  7.6e-01    -5.0e-04  9.4e-05               78          <2e-16 ***
    ## 3 (2017)  6.3e-01    -5.0e-04  6.6e-05               78          <2e-16 ***
    ## 4 (2017)  5.2e-01    -5.0e-04  5.3e-05               72          <2e-16 ***
    ## 5 (2017)  4.1e-01    -5.0e-04  4.4e-05               62          <2e-16 ***
    ## 6 (2017)  3.1e-01    -5.0e-04  3.8e-05               50          <2e-16 ***
    ## 7 (2017)  2.2e-01    -5.0e-04  3.4e-05               38          <2e-16 ***
    ## 8 (2017)  1.5e-01    -5.0e-04  3.1e-05               27          <2e-16 ***
    ## 9 (2017)  1.1e-01    -5.0e-04  2.9e-05               20          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio17 Precipitation of driest quarter`
    ## Spatial correlogram for WCL bio17 Precipitation of driest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.5e-01    -5.0e-04  1.8e-04               72          <2e-16 ***
    ## 2 (2017)  9.1e-01    -5.0e-04  9.4e-05               94          <2e-16 ***
    ## 3 (2017)  8.7e-01    -5.0e-04  6.6e-05              107          <2e-16 ***
    ## 4 (2017)  8.3e-01    -5.0e-04  5.3e-05              114          <2e-16 ***
    ## 5 (2017)  7.8e-01    -5.0e-04  4.4e-05              118          <2e-16 ***
    ## 6 (2017)  7.4e-01    -5.0e-04  3.8e-05              120          <2e-16 ***
    ## 7 (2017)  7.0e-01    -5.0e-04  3.4e-05              120          <2e-16 ***
    ## 8 (2017)  6.6e-01    -5.0e-04  3.1e-05              119          <2e-16 ***
    ## 9 (2017)  6.3e-01    -5.0e-04  2.9e-05              118          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio18 Precipitation of warmest quarter`
    ## Spatial correlogram for WCL bio18 Precipitation of warmest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               69          <2e-16 ***
    ## 2 (2017)  8.5e-01    -5.0e-04  9.4e-05               88          <2e-16 ***
    ## 3 (2017)  7.7e-01    -5.0e-04  6.6e-05               95          <2e-16 ***
    ## 4 (2017)  7.0e-01    -5.0e-04  5.3e-05               96          <2e-16 ***
    ## 5 (2017)  6.2e-01    -5.0e-04  4.4e-05               94          <2e-16 ***
    ## 6 (2017)  5.6e-01    -5.0e-04  3.8e-05               90          <2e-16 ***
    ## 7 (2017)  5.0e-01    -5.0e-04  3.4e-05               85          <2e-16 ***
    ## 8 (2017)  4.4e-01    -5.0e-04  3.1e-05               80          <2e-16 ***
    ## 9 (2017)  4.0e-01    -5.0e-04  2.9e-05               74          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`WCL bio19 Precipitation of coldest quarter`
    ## Spatial correlogram for WCL bio19 Precipitation of coldest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.6e-01    -5.0e-04  1.8e-04               72          <2e-16 ***
    ## 2 (2017)  9.3e-01    -5.0e-04  9.4e-05               96          <2e-16 ***
    ## 3 (2017)  8.8e-01    -5.0e-04  6.6e-05              109          <2e-16 ***
    ## 4 (2017)  8.4e-01    -5.0e-04  5.3e-05              115          <2e-16 ***
    ## 5 (2017)  7.8e-01    -5.0e-04  4.4e-05              118          <2e-16 ***
    ## 6 (2017)  7.2e-01    -5.0e-04  3.8e-05              117          <2e-16 ***
    ## 7 (2017)  6.7e-01    -5.0e-04  3.4e-05              115          <2e-16 ***
    ## 8 (2017)  6.2e-01    -5.0e-04  3.1e-05              112          <2e-16 ***
    ## 9 (2017)  5.8e-01    -5.0e-04  2.9e-05              109          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio01 mean annual air temperature`
    ## Spatial correlogram for CH-BIO bio01 mean annual air temperature 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               69          <2e-16 ***
    ## 2 (2017)  8.1e-01    -5.0e-04  9.4e-05               83          <2e-16 ***
    ## 3 (2017)  6.9e-01    -5.0e-04  6.6e-05               84          <2e-16 ***
    ## 4 (2017)  5.6e-01    -5.0e-04  5.2e-05               78          <2e-16 ***
    ## 5 (2017)  4.5e-01    -5.0e-04  4.4e-05               68          <2e-16 ***
    ## 6 (2017)  3.6e-01    -5.0e-04  3.8e-05               58          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               50          <2e-16 ***
    ## 8 (2017)  2.4e-01    -5.0e-04  3.1e-05               43          <2e-16 ***
    ## 9 (2017)  2.0e-01    -5.0e-04  2.9e-05               38          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio02 mean diurnal air temperature range`
    ## Spatial correlogram for CH-BIO bio02 mean diurnal air temperature range 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.8e-01    -5.0e-04  1.8e-04               74          <2e-16 ***
    ## 2 (2017)  9.2e-01    -5.0e-04  9.4e-05               95          <2e-16 ***
    ## 3 (2017)  8.4e-01    -5.0e-04  6.6e-05              104          <2e-16 ***
    ## 4 (2017)  7.5e-01    -5.0e-04  5.3e-05              103          <2e-16 ***
    ## 5 (2017)  6.5e-01    -5.0e-04  4.4e-05               98          <2e-16 ***
    ## 6 (2017)  5.6e-01    -5.0e-04  3.8e-05               90          <2e-16 ***
    ## 7 (2017)  4.8e-01    -5.0e-04  3.4e-05               82          <2e-16 ***
    ## 8 (2017)  4.0e-01    -5.0e-04  3.1e-05               72          <2e-16 ***
    ## 9 (2017)  3.5e-01    -5.0e-04  2.9e-05               65          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio03 isothermality`
    ## Spatial correlogram for CH-BIO bio03 isothermality 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.6e-01    -5.0e-04  1.8e-04               72          <2e-16 ***
    ## 2 (2017)  8.8e-01    -5.0e-04  9.4e-05               90          <2e-16 ***
    ## 3 (2017)  7.6e-01    -5.0e-04  6.6e-05               94          <2e-16 ***
    ## 4 (2017)  6.4e-01    -5.0e-04  5.2e-05               88          <2e-16 ***
    ## 5 (2017)  5.3e-01    -5.0e-04  4.4e-05               79          <2e-16 ***
    ## 6 (2017)  4.3e-01    -5.0e-04  3.8e-05               70          <2e-16 ***
    ## 7 (2017)  3.6e-01    -5.0e-04  3.4e-05               62          <2e-16 ***
    ## 8 (2017)  2.9e-01    -5.0e-04  3.1e-05               52          <2e-16 ***
    ## 9 (2017)  2.3e-01    -5.0e-04  2.9e-05               44          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio04 temperature seasonality`
    ## Spatial correlogram for CH-BIO bio04 temperature seasonality 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.9e-01    -5.0e-04  1.8e-04               74          <2e-16 ***
    ## 2 (2017)  9.6e-01    -5.0e-04  9.4e-05               99          <2e-16 ***
    ## 3 (2017)  9.2e-01    -5.0e-04  6.6e-05              113          <2e-16 ***
    ## 4 (2017)  8.8e-01    -5.0e-04  5.3e-05              121          <2e-16 ***
    ## 5 (2017)  8.3e-01    -5.0e-04  4.4e-05              125          <2e-16 ***
    ## 6 (2017)  7.8e-01    -5.0e-04  3.8e-05              126          <2e-16 ***
    ## 7 (2017)  7.2e-01    -5.0e-04  3.4e-05              124          <2e-16 ***
    ## 8 (2017)  6.7e-01    -5.0e-04  3.1e-05              120          <2e-16 ***
    ## 9 (2017)  6.1e-01    -5.0e-04  2.9e-05              114          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio05 mean daily maximum air temperature of the warmest month`
    ## Spatial correlogram for CH-BIO bio05 mean daily maximum air temperature of the warmest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               70          <2e-16 ***
    ## 2 (2017)  8.2e-01    -5.0e-04  9.4e-05               84          <2e-16 ***
    ## 3 (2017)  7.0e-01    -5.0e-04  6.6e-05               86          <2e-16 ***
    ## 4 (2017)  5.7e-01    -5.0e-04  5.2e-05               78          <2e-16 ***
    ## 5 (2017)  4.5e-01    -5.0e-04  4.4e-05               67          <2e-16 ***
    ## 6 (2017)  3.4e-01    -5.0e-04  3.8e-05               55          <2e-16 ***
    ## 7 (2017)  2.6e-01    -5.0e-04  3.4e-05               44          <2e-16 ***
    ## 8 (2017)  1.9e-01    -5.0e-04  3.1e-05               35          <2e-16 ***
    ## 9 (2017)  1.4e-01    -5.0e-04  2.9e-05               26          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio06 mean daily minimum air temperature of the coldest month`
    ## Spatial correlogram for CH-BIO bio06 mean daily minimum air temperature of the coldest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.4e-01    -5.0e-04  1.8e-04               70          <2e-16 ***
    ## 2 (2017)  8.4e-01    -5.0e-04  9.4e-05               87          <2e-16 ***
    ## 3 (2017)  7.4e-01    -5.0e-04  6.6e-05               92          <2e-16 ***
    ## 4 (2017)  6.4e-01    -5.0e-04  5.3e-05               88          <2e-16 ***
    ## 5 (2017)  5.4e-01    -5.0e-04  4.4e-05               82          <2e-16 ***
    ## 6 (2017)  4.6e-01    -5.0e-04  3.8e-05               75          <2e-16 ***
    ## 7 (2017)  4.0e-01    -5.0e-04  3.4e-05               69          <2e-16 ***
    ## 8 (2017)  3.5e-01    -5.0e-04  3.1e-05               63          <2e-16 ***
    ## 9 (2017)  3.2e-01    -5.0e-04  2.9e-05               60          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio07 annual range of air temperature`
    ## Spatial correlogram for CH-BIO bio07 annual range of air temperature 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.8e-01    -5.0e-04  1.8e-04               74          <2e-16 ***
    ## 2 (2017)  9.3e-01    -5.0e-04  9.4e-05               96          <2e-16 ***
    ## 3 (2017)  8.5e-01    -5.0e-04  6.6e-05              105          <2e-16 ***
    ## 4 (2017)  7.7e-01    -5.0e-04  5.3e-05              106          <2e-16 ***
    ## 5 (2017)  6.7e-01    -5.0e-04  4.4e-05              101          <2e-16 ***
    ## 6 (2017)  5.9e-01    -5.0e-04  3.8e-05               95          <2e-16 ***
    ## 7 (2017)  5.1e-01    -5.0e-04  3.4e-05               87          <2e-16 ***
    ## 8 (2017)  4.4e-01    -5.0e-04  3.1e-05               79          <2e-16 ***
    ## 9 (2017)  3.8e-01    -5.0e-04  2.9e-05               72          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`
    ## Spatial correlogram for CH-BIO bio08 mean daily mean air temperatures of the wettest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               69          <2e-16 ***
    ## 2 (2017)  8.1e-01    -5.0e-04  9.4e-05               83          <2e-16 ***
    ## 3 (2017)  6.9e-01    -5.0e-04  6.6e-05               85          <2e-16 ***
    ## 4 (2017)  5.7e-01    -5.0e-04  5.2e-05               78          <2e-16 ***
    ## 5 (2017)  4.5e-01    -5.0e-04  4.4e-05               68          <2e-16 ***
    ## 6 (2017)  3.6e-01    -5.0e-04  3.8e-05               58          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               49          <2e-16 ***
    ## 8 (2017)  2.3e-01    -5.0e-04  3.1e-05               42          <2e-16 ***
    ## 9 (2017)  1.9e-01    -5.0e-04  2.9e-05               36          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio09 mean daily mean air temperatures of the driest quarter`
    ## Spatial correlogram for CH-BIO bio09 mean daily mean air temperatures of the driest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               69          <2e-16 ***
    ## 2 (2017)  8.1e-01    -5.0e-04  9.4e-05               84          <2e-16 ***
    ## 3 (2017)  7.0e-01    -5.0e-04  6.6e-05               86          <2e-16 ***
    ## 4 (2017)  5.9e-01    -5.0e-04  5.2e-05               81          <2e-16 ***
    ## 5 (2017)  4.8e-01    -5.0e-04  4.4e-05               73          <2e-16 ***
    ## 6 (2017)  4.0e-01    -5.0e-04  3.8e-05               64          <2e-16 ***
    ## 7 (2017)  3.3e-01    -5.0e-04  3.4e-05               57          <2e-16 ***
    ## 8 (2017)  2.8e-01    -5.0e-04  3.1e-05               50          <2e-16 ***
    ## 9 (2017)  2.4e-01    -5.0e-04  2.9e-05               45          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio10 mean daily mean air temperatures of the warmest quarter`
    ## Spatial correlogram for CH-BIO bio10 mean daily mean air temperatures of the warmest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               69          <2e-16 ***
    ## 2 (2017)  8.1e-01    -5.0e-04  9.4e-05               84          <2e-16 ***
    ## 3 (2017)  7.0e-01    -5.0e-04  6.6e-05               86          <2e-16 ***
    ## 4 (2017)  5.8e-01    -5.0e-04  5.2e-05               80          <2e-16 ***
    ## 5 (2017)  4.7e-01    -5.0e-04  4.4e-05               70          <2e-16 ***
    ## 6 (2017)  3.7e-01    -5.0e-04  3.8e-05               60          <2e-16 ***
    ## 7 (2017)  3.0e-01    -5.0e-04  3.4e-05               52          <2e-16 ***
    ## 8 (2017)  2.5e-01    -5.0e-04  3.1e-05               45          <2e-16 ***
    ## 9 (2017)  2.1e-01    -5.0e-04  2.9e-05               39          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio11 mean daily mean air temperatures of the coldest quarter`
    ## Spatial correlogram for CH-BIO bio11 mean daily mean air temperatures of the coldest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               69          <2e-16 ***
    ## 2 (2017)  8.0e-01    -5.0e-04  9.4e-05               83          <2e-16 ***
    ## 3 (2017)  6.8e-01    -5.0e-04  6.6e-05               84          <2e-16 ***
    ## 4 (2017)  5.6e-01    -5.0e-04  5.2e-05               77          <2e-16 ***
    ## 5 (2017)  4.5e-01    -5.0e-04  4.4e-05               67          <2e-16 ***
    ## 6 (2017)  3.5e-01    -5.0e-04  3.8e-05               57          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               49          <2e-16 ***
    ## 8 (2017)  2.4e-01    -5.0e-04  3.1e-05               43          <2e-16 ***
    ## 9 (2017)  2.0e-01    -5.0e-04  2.9e-05               38          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio12 annual precipitation amount`
    ## Spatial correlogram for CH-BIO bio12 annual precipitation amount 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.7e-01    -5.0e-04  1.8e-04               73          <2e-16 ***
    ## 2 (2017)  9.1e-01    -5.0e-04  9.4e-05               94          <2e-16 ***
    ## 3 (2017)  8.5e-01    -5.0e-04  6.6e-05              104          <2e-16 ***
    ## 4 (2017)  7.8e-01    -5.0e-04  5.3e-05              108          <2e-16 ***
    ## 5 (2017)  7.1e-01    -5.0e-04  4.4e-05              107          <2e-16 ***
    ## 6 (2017)  6.4e-01    -5.0e-04  3.8e-05              104          <2e-16 ***
    ## 7 (2017)  5.8e-01    -5.0e-04  3.4e-05               99          <2e-16 ***
    ## 8 (2017)  5.2e-01    -5.0e-04  3.1e-05               94          <2e-16 ***
    ## 9 (2017)  4.7e-01    -5.0e-04  2.9e-05               88          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio13 precipitation amount of the wettest month`
    ## Spatial correlogram for CH-BIO bio13 precipitation amount of the wettest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.6e-01    -5.0e-04  1.8e-04               72          <2e-16 ***
    ## 2 (2017)  8.9e-01    -5.0e-04  9.4e-05               92          <2e-16 ***
    ## 3 (2017)  8.2e-01    -5.0e-04  6.6e-05              100          <2e-16 ***
    ## 4 (2017)  7.4e-01    -5.0e-04  5.3e-05              102          <2e-16 ***
    ## 5 (2017)  6.6e-01    -5.0e-04  4.4e-05               99          <2e-16 ***
    ## 6 (2017)  5.7e-01    -5.0e-04  3.8e-05               93          <2e-16 ***
    ## 7 (2017)  5.0e-01    -5.0e-04  3.4e-05               86          <2e-16 ***
    ## 8 (2017)  4.4e-01    -5.0e-04  3.1e-05               78          <2e-16 ***
    ## 9 (2017)  3.8e-01    -5.0e-04  2.9e-05               70          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio14 precipitation amount of the driest month`
    ## Spatial correlogram for CH-BIO bio14 precipitation amount of the driest month 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.9e-01    -5.0e-04  1.8e-04               74          <2e-16 ***
    ## 2 (2017)  9.6e-01    -5.0e-04  9.4e-05               99          <2e-16 ***
    ## 3 (2017)  9.2e-01    -5.0e-04  6.6e-05              113          <2e-16 ***
    ## 4 (2017)  8.8e-01    -5.0e-04  5.3e-05              121          <2e-16 ***
    ## 5 (2017)  8.3e-01    -5.0e-04  4.4e-05              125          <2e-16 ***
    ## 6 (2017)  7.8e-01    -5.0e-04  3.8e-05              126          <2e-16 ***
    ## 7 (2017)  7.2e-01    -5.0e-04  3.4e-05              124          <2e-16 ***
    ## 8 (2017)  6.8e-01    -5.0e-04  3.1e-05              122          <2e-16 ***
    ## 9 (2017)  6.3e-01    -5.0e-04  2.9e-05              119          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio15 precipitation seasonality`
    ## Spatial correlogram for CH-BIO bio15 precipitation seasonality 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.9e-01    -5.0e-04  1.8e-04               75          <2e-16 ***
    ## 2 (2017)  9.8e-01    -5.0e-04  9.4e-05              101          <2e-16 ***
    ## 3 (2017)  9.5e-01    -5.0e-04  6.6e-05              117          <2e-16 ***
    ## 4 (2017)  9.1e-01    -5.0e-04  5.3e-05              126          <2e-16 ***
    ## 5 (2017)  8.7e-01    -5.0e-04  4.4e-05              131          <2e-16 ***
    ## 6 (2017)  8.2e-01    -5.0e-04  3.8e-05              133          <2e-16 ***
    ## 7 (2017)  7.7e-01    -5.0e-04  3.4e-05              131          <2e-16 ***
    ## 8 (2017)  7.1e-01    -5.0e-04  3.1e-05              127          <2e-16 ***
    ## 9 (2017)  6.5e-01    -5.0e-04  2.9e-05              122          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio16 mean monthly precipitation amount of the wettest quarter`
    ## Spatial correlogram for CH-BIO bio16 mean monthly precipitation amount of the wettest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.6e-01    -5.0e-04  1.8e-04               72          <2e-16 ***
    ## 2 (2017)  8.9e-01    -5.0e-04  9.4e-05               92          <2e-16 ***
    ## 3 (2017)  8.1e-01    -5.0e-04  6.6e-05              100          <2e-16 ***
    ## 4 (2017)  7.3e-01    -5.0e-04  5.3e-05              101          <2e-16 ***
    ## 5 (2017)  6.5e-01    -5.0e-04  4.4e-05               98          <2e-16 ***
    ## 6 (2017)  5.7e-01    -5.0e-04  3.8e-05               92          <2e-16 ***
    ## 7 (2017)  4.9e-01    -5.0e-04  3.4e-05               84          <2e-16 ***
    ## 8 (2017)  4.2e-01    -5.0e-04  3.1e-05               76          <2e-16 ***
    ## 9 (2017)  3.6e-01    -5.0e-04  2.9e-05               67          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio17 mean monthly precipitation amount of the driest quarter`
    ## Spatial correlogram for CH-BIO bio17 mean monthly precipitation amount of the driest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.9e-01    -5.0e-04  1.8e-04               74          <2e-16 ***
    ## 2 (2017)  9.6e-01    -5.0e-04  9.4e-05               99          <2e-16 ***
    ## 3 (2017)  9.2e-01    -5.0e-04  6.6e-05              113          <2e-16 ***
    ## 4 (2017)  8.8e-01    -5.0e-04  5.3e-05              121          <2e-16 ***
    ## 5 (2017)  8.3e-01    -5.0e-04  4.4e-05              125          <2e-16 ***
    ## 6 (2017)  7.8e-01    -5.0e-04  3.8e-05              126          <2e-16 ***
    ## 7 (2017)  7.3e-01    -5.0e-04  3.4e-05              125          <2e-16 ***
    ## 8 (2017)  6.8e-01    -5.0e-04  3.1e-05              122          <2e-16 ***
    ## 9 (2017)  6.3e-01    -5.0e-04  2.9e-05              119          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio18 mean monthly precipitation amount of the warmest quarter`
    ## Spatial correlogram for CH-BIO bio18 mean monthly precipitation amount of the warmest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.7e-01    -5.0e-04  1.8e-04               73          <2e-16 ***
    ## 2 (2017)  9.1e-01    -5.0e-04  9.4e-05               94          <2e-16 ***
    ## 3 (2017)  8.4e-01    -5.0e-04  6.6e-05              104          <2e-16 ***
    ## 4 (2017)  7.7e-01    -5.0e-04  5.3e-05              106          <2e-16 ***
    ## 5 (2017)  6.9e-01    -5.0e-04  4.4e-05              104          <2e-16 ***
    ## 6 (2017)  6.2e-01    -5.0e-04  3.8e-05              100          <2e-16 ***
    ## 7 (2017)  5.5e-01    -5.0e-04  3.4e-05               95          <2e-16 ***
    ## 8 (2017)  4.9e-01    -5.0e-04  3.1e-05               88          <2e-16 ***
    ## 9 (2017)  4.3e-01    -5.0e-04  2.9e-05               81          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`
    ## Spatial correlogram for CH-BIO bio19 mean monthly precipitation amount of the coldest quarter 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.9e-01    -5.0e-04  1.8e-04               74          <2e-16 ***
    ## 2 (2017)  9.6e-01    -5.0e-04  9.4e-05               99          <2e-16 ***
    ## 3 (2017)  9.2e-01    -5.0e-04  6.6e-05              114          <2e-16 ***
    ## 4 (2017)  8.9e-01    -5.0e-04  5.3e-05              122          <2e-16 ***
    ## 5 (2017)  8.4e-01    -5.0e-04  4.4e-05              127          <2e-16 ***
    ## 6 (2017)  7.9e-01    -5.0e-04  3.8e-05              128          <2e-16 ***
    ## 7 (2017)  7.4e-01    -5.0e-04  3.4e-05              126          <2e-16 ***
    ## 8 (2017)  6.9e-01    -5.0e-04  3.1e-05              123          <2e-16 ***
    ## 9 (2017)  6.4e-01    -5.0e-04  2.9e-05              120          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Compound Topographic Index`
    ## Spatial correlogram for G90 Compound Topographic Index 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.7e-01    -5.0e-04  1.8e-04               58          <2e-16 ***
    ## 2 (2017)  6.0e-01    -5.0e-04  9.4e-05               62          <2e-16 ***
    ## 3 (2017)  4.6e-01    -5.0e-04  6.6e-05               56          <2e-16 ***
    ## 4 (2017)  3.5e-01    -5.0e-04  5.3e-05               48          <2e-16 ***
    ## 5 (2017)  2.7e-01    -5.0e-04  4.4e-05               40          <2e-16 ***
    ## 6 (2017)  2.1e-01    -5.0e-04  3.8e-05               34          <2e-16 ***
    ## 7 (2017)  1.7e-01    -5.0e-04  3.4e-05               29          <2e-16 ***
    ## 8 (2017)  1.3e-01    -5.0e-04  3.1e-05               24          <2e-16 ***
    ## 9 (2017)  1.1e-01    -5.0e-04  2.9e-05               21          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Roughness`
    ## Spatial correlogram for G90 Roughness 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.4e-01    -5.0e-04  1.8e-04               63          <2e-16 ***
    ## 2 (2017)  6.9e-01    -5.0e-04  9.4e-05               72          <2e-16 ***
    ## 3 (2017)  5.7e-01    -5.0e-04  6.6e-05               70          <2e-16 ***
    ## 4 (2017)  4.7e-01    -5.0e-04  5.3e-05               65          <2e-16 ***
    ## 5 (2017)  3.9e-01    -5.0e-04  4.4e-05               59          <2e-16 ***
    ## 6 (2017)  3.3e-01    -5.0e-04  3.8e-05               54          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               49          <2e-16 ***
    ## 8 (2017)  2.5e-01    -5.0e-04  3.1e-05               45          <2e-16 ***
    ## 9 (2017)  2.2e-01    -5.0e-04  2.9e-05               41          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Slope`
    ## Spatial correlogram for G90 Slope 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.4e-01    -5.0e-04  1.8e-04               63          <2e-16 ***
    ## 2 (2017)  6.9e-01    -5.0e-04  9.4e-05               72          <2e-16 ***
    ## 3 (2017)  5.7e-01    -5.0e-04  6.6e-05               70          <2e-16 ***
    ## 4 (2017)  4.7e-01    -5.0e-04  5.3e-05               65          <2e-16 ***
    ## 5 (2017)  3.9e-01    -5.0e-04  4.4e-05               59          <2e-16 ***
    ## 6 (2017)  3.3e-01    -5.0e-04  3.8e-05               54          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               50          <2e-16 ***
    ## 8 (2017)  2.5e-01    -5.0e-04  3.1e-05               45          <2e-16 ***
    ## 9 (2017)  2.2e-01    -5.0e-04  2.9e-05               42          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Stream Power Index`
    ## Spatial correlogram for G90 Stream Power Index 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.7e-01    -5.0e-04  1.7e-04             28.5          <2e-16 ***
    ## 2 (2017)  1.5e-01    -5.0e-04  9.1e-05             15.7          <2e-16 ***
    ## 3 (2017)  8.3e-02    -5.0e-04  6.4e-05             10.4          <2e-16 ***
    ## 4 (2017)  6.0e-02    -5.0e-04  5.1e-05              8.4           3e-16 ***
    ## 5 (2017)  3.5e-02    -5.0e-04  4.3e-05              5.4           3e-07 ***
    ## 6 (2017)  1.8e-02    -5.0e-04  3.7e-05              3.1           0.008 ** 
    ## 7 (2017)  1.7e-02    -5.0e-04  3.3e-05              3.0           0.008 ** 
    ## 8 (2017)  1.1e-02    -5.0e-04  3.0e-05              2.0           0.081 .  
    ## 9 (2017) -5.4e-03    -5.0e-04  2.8e-05             -0.9           0.355    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Terrain Ruggedness Index`
    ## Spatial correlogram for G90 Terrain Ruggedness Index 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.4e-01    -5.0e-04  1.8e-04               63          <2e-16 ***
    ## 2 (2017)  6.9e-01    -5.0e-04  9.4e-05               71          <2e-16 ***
    ## 3 (2017)  5.7e-01    -5.0e-04  6.6e-05               70          <2e-16 ***
    ## 4 (2017)  4.7e-01    -5.0e-04  5.3e-05               65          <2e-16 ***
    ## 5 (2017)  3.9e-01    -5.0e-04  4.4e-05               59          <2e-16 ***
    ## 6 (2017)  3.3e-01    -5.0e-04  3.8e-05               54          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               49          <2e-16 ***
    ## 8 (2017)  2.5e-01    -5.0e-04  3.1e-05               44          <2e-16 ***
    ## 9 (2017)  2.2e-01    -5.0e-04  2.9e-05               41          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Topographic Position Index`
    ## Spatial correlogram for G90 Topographic Position Index 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.1e-01    -5.0e-04  1.7e-04              8.6          <2e-16 ***
    ## 2 (2017)  1.6e-01    -5.0e-04  9.1e-05             17.0          <2e-16 ***
    ## 3 (2017)  6.4e-02    -5.0e-04  6.4e-05              8.0           7e-15 ***
    ## 4 (2017)  5.6e-02    -5.0e-04  5.1e-05              7.9           1e-14 ***
    ## 5 (2017)  5.9e-02    -5.0e-04  4.3e-05              9.1          <2e-16 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.7e-05              5.8           2e-08 ***
    ## 7 (2017)  3.7e-02    -5.0e-04  3.3e-05              6.5           4e-10 ***
    ## 8 (2017)  2.5e-02    -5.0e-04  3.0e-05              4.6           7e-06 ***
    ## 9 (2017)  2.0e-02    -5.0e-04  2.8e-05              4.0           8e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90 Vector Ruggedness Measure`
    ## Spatial correlogram for G90 Vector Ruggedness Measure 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.2e-01    -5.0e-04  1.8e-04               61          <2e-16 ***
    ## 2 (2017)  6.6e-01    -5.0e-04  9.4e-05               68          <2e-16 ***
    ## 3 (2017)  5.4e-01    -5.0e-04  6.6e-05               67          <2e-16 ***
    ## 4 (2017)  4.5e-01    -5.0e-04  5.2e-05               62          <2e-16 ***
    ## 5 (2017)  3.8e-01    -5.0e-04  4.4e-05               57          <2e-16 ***
    ## 6 (2017)  3.2e-01    -5.0e-04  3.8e-05               52          <2e-16 ***
    ## 7 (2017)  2.9e-01    -5.0e-04  3.4e-05               49          <2e-16 ***
    ## 8 (2017)  2.5e-01    -5.0e-04  3.1e-05               45          <2e-16 ***
    ## 9 (2017)  2.1e-01    -5.0e-04  2.9e-05               40          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM flat`
    ## Spatial correlogram for G90-GEOM flat 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.6e-01    -5.0e-04  1.8e-04             57.2          <2e-16 ***
    ## 2 (2017)  5.7e-01    -5.0e-04  9.4e-05             59.1          <2e-16 ***
    ## 3 (2017)  4.3e-01    -5.0e-04  6.6e-05             53.1          <2e-16 ***
    ## 4 (2017)  3.3e-01    -5.0e-04  5.3e-05             45.3          <2e-16 ***
    ## 5 (2017)  2.4e-01    -5.0e-04  4.4e-05             36.3          <2e-16 ***
    ## 6 (2017)  1.7e-01    -5.0e-04  3.8e-05             27.1          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05             19.1          <2e-16 ***
    ## 8 (2017)  7.0e-02    -5.0e-04  3.1e-05             12.6          <2e-16 ***
    ## 9 (2017)  4.7e-02    -5.0e-04  2.9e-05              8.9          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM pit`
    ## Spatial correlogram for G90-GEOM pit 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.3e-01    -5.0e-04  1.7e-04             55.5          <2e-16 ***
    ## 2 (2017)  5.1e-01    -5.0e-04  9.2e-05             53.6          <2e-16 ***
    ## 3 (2017)  3.6e-01    -5.0e-04  6.5e-05             44.8          <2e-16 ***
    ## 4 (2017)  2.4e-01    -5.0e-04  5.2e-05             34.1          <2e-16 ***
    ## 5 (2017)  1.6e-01    -5.0e-04  4.3e-05             24.6          <2e-16 ***
    ## 6 (2017)  1.2e-01    -5.0e-04  3.8e-05             19.0          <2e-16 ***
    ## 7 (2017)  9.3e-02    -5.0e-04  3.3e-05             16.2          <2e-16 ***
    ## 8 (2017)  6.6e-02    -5.0e-04  3.0e-05             12.0          <2e-16 ***
    ## 9 (2017)  3.9e-02    -5.0e-04  2.8e-05              7.5           8e-14 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM peak`
    ## Spatial correlogram for G90-GEOM peak 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  4.4e-01    -5.0e-04  1.6e-04             35.2          <2e-16 ***
    ## 2 (2017)  3.0e-01    -5.0e-04  8.4e-05             33.1          <2e-16 ***
    ## 3 (2017)  2.1e-01    -5.0e-04  5.9e-05             27.6          <2e-16 ***
    ## 4 (2017)  1.6e-01    -5.0e-04  4.7e-05             22.7          <2e-16 ***
    ## 5 (2017)  1.1e-01    -5.0e-04  4.0e-05             17.3          <2e-16 ***
    ## 6 (2017)  8.1e-02    -5.0e-04  3.4e-05             14.0          <2e-16 ***
    ## 7 (2017)  4.9e-02    -5.0e-04  3.0e-05              8.9          <2e-16 ***
    ## 8 (2017)  4.0e-02    -5.0e-04  2.8e-05              7.6           4e-14 ***
    ## 9 (2017)  3.2e-02    -5.0e-04  2.6e-05              6.4           1e-10 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM ridge`
    ## Spatial correlogram for G90-GEOM ridge 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.4e-01    -5.0e-04  1.7e-04             41.2          <2e-16 ***
    ## 2 (2017)  4.8e-01    -5.0e-04  9.3e-05             50.3          <2e-16 ***
    ## 3 (2017)  2.9e-01    -5.0e-04  6.6e-05             36.4          <2e-16 ***
    ## 4 (2017)  2.3e-01    -5.0e-04  5.2e-05             32.1          <2e-16 ***
    ## 5 (2017)  1.6e-01    -5.0e-04  4.4e-05             25.0          <2e-16 ***
    ## 6 (2017)  1.4e-01    -5.0e-04  3.8e-05             22.2          <2e-16 ***
    ## 7 (2017)  8.3e-02    -5.0e-04  3.4e-05             14.3          <2e-16 ***
    ## 8 (2017)  6.0e-02    -5.0e-04  3.1e-05             10.9          <2e-16 ***
    ## 9 (2017)  4.3e-02    -5.0e-04  2.8e-05              8.1           4e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM shoulder`
    ## Spatial correlogram for G90-GEOM shoulder 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.6e-01    -5.0e-04  1.8e-04               42          <2e-16 ***
    ## 2 (2017)  3.7e-01    -5.0e-04  9.4e-05               39          <2e-16 ***
    ## 3 (2017)  2.8e-01    -5.0e-04  6.6e-05               35          <2e-16 ***
    ## 4 (2017)  2.2e-01    -5.0e-04  5.2e-05               30          <2e-16 ***
    ## 5 (2017)  1.8e-01    -5.0e-04  4.4e-05               27          <2e-16 ***
    ## 6 (2017)  1.4e-01    -5.0e-04  3.8e-05               23          <2e-16 ***
    ## 7 (2017)  1.2e-01    -5.0e-04  3.4e-05               20          <2e-16 ***
    ## 8 (2017)  1.1e-01    -5.0e-04  3.1e-05               20          <2e-16 ***
    ## 9 (2017)  1.1e-01    -5.0e-04  2.8e-05               21          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM spur`
    ## Spatial correlogram for G90-GEOM spur 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.0e-01    -5.0e-04  1.8e-04               53          <2e-16 ***
    ## 2 (2017)  5.5e-01    -5.0e-04  9.4e-05               57          <2e-16 ***
    ## 3 (2017)  4.3e-01    -5.0e-04  6.6e-05               53          <2e-16 ***
    ## 4 (2017)  3.5e-01    -5.0e-04  5.2e-05               48          <2e-16 ***
    ## 5 (2017)  2.8e-01    -5.0e-04  4.4e-05               42          <2e-16 ***
    ## 6 (2017)  2.2e-01    -5.0e-04  3.8e-05               36          <2e-16 ***
    ## 7 (2017)  1.8e-01    -5.0e-04  3.4e-05               31          <2e-16 ***
    ## 8 (2017)  1.4e-01    -5.0e-04  3.1e-05               26          <2e-16 ***
    ## 9 (2017)  1.3e-01    -5.0e-04  2.8e-05               24          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM slope`
    ## Spatial correlogram for G90-GEOM slope 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.0e-01    -5.0e-04  1.8e-04               53          <2e-16 ***
    ## 2 (2017)  5.3e-01    -5.0e-04  9.4e-05               54          <2e-16 ***
    ## 3 (2017)  4.1e-01    -5.0e-04  6.6e-05               51          <2e-16 ***
    ## 4 (2017)  3.4e-01    -5.0e-04  5.3e-05               47          <2e-16 ***
    ## 5 (2017)  2.8e-01    -5.0e-04  4.4e-05               42          <2e-16 ***
    ## 6 (2017)  2.3e-01    -5.0e-04  3.8e-05               37          <2e-16 ***
    ## 7 (2017)  1.9e-01    -5.0e-04  3.4e-05               32          <2e-16 ***
    ## 8 (2017)  1.5e-01    -5.0e-04  3.1e-05               26          <2e-16 ***
    ## 9 (2017)  1.3e-01    -5.0e-04  2.9e-05               24          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM hollow`
    ## Spatial correlogram for G90-GEOM hollow 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  8.2e-01    -5.0e-04  1.8e-04               62          <2e-16 ***
    ## 2 (2017)  6.5e-01    -5.0e-04  9.4e-05               67          <2e-16 ***
    ## 3 (2017)  5.2e-01    -5.0e-04  6.6e-05               64          <2e-16 ***
    ## 4 (2017)  4.3e-01    -5.0e-04  5.3e-05               59          <2e-16 ***
    ## 5 (2017)  3.5e-01    -5.0e-04  4.4e-05               52          <2e-16 ***
    ## 6 (2017)  2.8e-01    -5.0e-04  3.8e-05               46          <2e-16 ***
    ## 7 (2017)  2.2e-01    -5.0e-04  3.4e-05               38          <2e-16 ***
    ## 8 (2017)  1.8e-01    -5.0e-04  3.1e-05               32          <2e-16 ***
    ## 9 (2017)  1.5e-01    -5.0e-04  2.9e-05               28          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM footslope`
    ## Spatial correlogram for G90-GEOM footslope 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.6e-01    -5.0e-04  1.8e-04             42.3          <2e-16 ***
    ## 2 (2017)  3.8e-01    -5.0e-04  9.4e-05             38.8          <2e-16 ***
    ## 3 (2017)  2.5e-01    -5.0e-04  6.6e-05             31.1          <2e-16 ***
    ## 4 (2017)  1.8e-01    -5.0e-04  5.3e-05             24.4          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.4e-05             17.8          <2e-16 ***
    ## 6 (2017)  8.8e-02    -5.0e-04  3.8e-05             14.4          <2e-16 ***
    ## 7 (2017)  6.5e-02    -5.0e-04  3.4e-05             11.2          <2e-16 ***
    ## 8 (2017)  5.7e-02    -5.0e-04  3.1e-05             10.4          <2e-16 ***
    ## 9 (2017)  5.1e-02    -5.0e-04  2.9e-05              9.7          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`G90-GEOM valley`
    ## Spatial correlogram for G90-GEOM valley 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.5e-01    -5.0e-04  1.8e-04             56.1          <2e-16 ***
    ## 2 (2017)  5.4e-01    -5.0e-04  9.4e-05             56.0          <2e-16 ***
    ## 3 (2017)  3.9e-01    -5.0e-04  6.6e-05             48.5          <2e-16 ***
    ## 4 (2017)  3.0e-01    -5.0e-04  5.3e-05             41.3          <2e-16 ***
    ## 5 (2017)  2.2e-01    -5.0e-04  4.4e-05             33.9          <2e-16 ***
    ## 6 (2017)  1.6e-01    -5.0e-04  3.8e-05             26.1          <2e-16 ***
    ## 7 (2017)  1.1e-01    -5.0e-04  3.4e-05             18.9          <2e-16 ***
    ## 8 (2017)  7.1e-02    -5.0e-04  3.1e-05             12.9          <2e-16 ***
    ## 9 (2017)  5.0e-02    -5.0e-04  2.9e-05              9.4          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`CGIAR-ELE mean`
    ## Spatial correlogram for CGIAR-ELE mean 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  9.2e-01    -5.0e-04  1.8e-04               70          <2e-16 ***
    ## 2 (2017)  8.2e-01    -5.0e-04  9.4e-05               85          <2e-16 ***
    ## 3 (2017)  7.1e-01    -5.0e-04  6.6e-05               88          <2e-16 ***
    ## 4 (2017)  6.0e-01    -5.0e-04  5.2e-05               84          <2e-16 ***
    ## 5 (2017)  5.0e-01    -5.0e-04  4.4e-05               76          <2e-16 ***
    ## 6 (2017)  4.2e-01    -5.0e-04  3.8e-05               68          <2e-16 ***
    ## 7 (2017)  3.6e-01    -5.0e-04  3.4e-05               61          <2e-16 ***
    ## 8 (2017)  3.1e-01    -5.0e-04  3.1e-05               55          <2e-16 ***
    ## 9 (2017)  2.7e-01    -5.0e-04  2.9e-05               51          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-PTC YEAR 2000 mean`
    ## Spatial correlogram for GFC-PTC YEAR 2000 mean 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.1e-01    -5.0e-04  1.8e-04             53.5          <2e-16 ***
    ## 2 (2017)  5.1e-01    -5.0e-04  9.4e-05             52.4          <2e-16 ***
    ## 3 (2017)  3.6e-01    -5.0e-04  6.6e-05             44.7          <2e-16 ***
    ## 4 (2017)  2.6e-01    -5.0e-04  5.3e-05             36.5          <2e-16 ***
    ## 5 (2017)  1.9e-01    -5.0e-04  4.4e-05             28.9          <2e-16 ***
    ## 6 (2017)  1.4e-01    -5.0e-04  3.8e-05             22.5          <2e-16 ***
    ## 7 (2017)  9.6e-02    -5.0e-04  3.4e-05             16.5          <2e-16 ***
    ## 8 (2017)  5.4e-02    -5.0e-04  3.1e-05              9.9          <2e-16 ***
    ## 9 (2017)  2.1e-02    -5.0e-04  2.9e-05              4.1           5e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2001`
    ## Spatial correlogram for GFC-LOSS year 2001 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.8e-01    -5.0e-04  1.7e-04             21.5          <2e-16 ***
    ## 2 (2017)  1.0e-01    -5.0e-04  9.1e-05             10.8          <2e-16 ***
    ## 3 (2017)  3.5e-02    -5.0e-04  6.4e-05              4.4           9e-05 ***
    ## 4 (2017)  2.2e-02    -5.0e-04  5.1e-05              3.2           0.008 ** 
    ## 5 (2017)  2.1e-02    -5.0e-04  4.3e-05              3.3           0.005 ** 
    ## 6 (2017)  8.0e-03    -5.0e-04  3.7e-05              1.4           0.492    
    ## 7 (2017)  5.4e-03    -5.0e-04  3.3e-05              1.0           0.609    
    ## 8 (2017)  4.6e-03    -5.0e-04  3.0e-05              0.9           0.609    
    ## 9 (2017)  8.9e-03    -5.0e-04  2.8e-05              1.8           0.295    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2002`
    ## Spatial correlogram for GFC-LOSS year 2002 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.6e-01    -5.0e-04  1.7e-04             12.0          <2e-16 ***
    ## 2 (2017)  8.7e-02    -5.0e-04  9.1e-05              9.2          <2e-16 ***
    ## 3 (2017)  5.4e-02    -5.0e-04  6.4e-05              6.8           5e-11 ***
    ## 4 (2017)  5.0e-02    -5.0e-04  5.1e-05              7.1           1e-11 ***
    ## 5 (2017)  4.1e-02    -5.0e-04  4.3e-05              6.4           8e-10 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.7e-05              5.9           2e-08 ***
    ## 7 (2017)  2.2e-02    -5.0e-04  3.3e-05              3.8           4e-04 ***
    ## 8 (2017)  2.0e-02    -5.0e-04  3.0e-05              3.7           4e-04 ***
    ## 9 (2017)  4.3e-03    -5.0e-04  2.8e-05              0.9             0.4    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2003`
    ## Spatial correlogram for GFC-LOSS year 2003 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.0e-01    -5.0e-04  1.7e-04             15.3          <2e-16 ***
    ## 2 (2017)  1.0e-01    -5.0e-04  9.2e-05             10.4          <2e-16 ***
    ## 3 (2017)  8.4e-02    -5.0e-04  6.5e-05             10.5          <2e-16 ***
    ## 4 (2017)  7.4e-02    -5.0e-04  5.2e-05             10.4          <2e-16 ***
    ## 5 (2017)  6.4e-02    -5.0e-04  4.3e-05              9.7          <2e-16 ***
    ## 6 (2017)  4.7e-02    -5.0e-04  3.8e-05              7.7           8e-14 ***
    ## 7 (2017)  3.1e-02    -5.0e-04  3.3e-05              5.4           2e-07 ***
    ## 8 (2017)  2.9e-02    -5.0e-04  3.0e-05              5.3           2e-07 ***
    ## 9 (2017)  2.1e-02    -5.0e-04  2.8e-05              4.1           3e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2004`
    ## Spatial correlogram for GFC-LOSS year 2004 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.6e-01    -5.0e-04  1.7e-04               20          <2e-16 ***
    ## 2 (2017)  1.3e-01    -5.0e-04  9.2e-05               14          <2e-16 ***
    ## 3 (2017)  1.2e-01    -5.0e-04  6.5e-05               15          <2e-16 ***
    ## 4 (2017)  8.8e-02    -5.0e-04  5.2e-05               12          <2e-16 ***
    ## 5 (2017)  7.2e-02    -5.0e-04  4.3e-05               11          <2e-16 ***
    ## 6 (2017)  7.2e-02    -5.0e-04  3.8e-05               12          <2e-16 ***
    ## 7 (2017)  6.8e-02    -5.0e-04  3.3e-05               12          <2e-16 ***
    ## 8 (2017)  7.3e-02    -5.0e-04  3.0e-05               13          <2e-16 ***
    ## 9 (2017)  7.2e-02    -5.0e-04  2.8e-05               14          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2005`
    ## Spatial correlogram for GFC-LOSS year 2005 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  5.7e-01    -5.0e-04  1.7e-04             43.6          <2e-16 ***
    ## 2 (2017)  4.1e-01    -5.0e-04  9.2e-05             42.7          <2e-16 ***
    ## 3 (2017)  3.0e-01    -5.0e-04  6.5e-05             36.9          <2e-16 ***
    ## 4 (2017)  2.1e-01    -5.0e-04  5.1e-05             29.0          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.3e-05             18.2          <2e-16 ***
    ## 6 (2017)  6.9e-02    -5.0e-04  3.8e-05             11.3          <2e-16 ***
    ## 7 (2017)  4.0e-02    -5.0e-04  3.3e-05              7.0           9e-12 ***
    ## 8 (2017)  1.4e-02    -5.0e-04  3.0e-05              2.6            0.02 *  
    ## 9 (2017) -7.8e-04    -5.0e-04  2.8e-05             -0.1            0.96    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2006`
    ## Spatial correlogram for GFC-LOSS year 2006 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.7e-01    -5.0e-04  1.7e-04               20          <2e-16 ***
    ## 2 (2017)  1.6e-01    -5.0e-04  9.3e-05               17          <2e-16 ***
    ## 3 (2017)  1.3e-01    -5.0e-04  6.5e-05               16          <2e-16 ***
    ## 4 (2017)  1.2e-01    -5.0e-04  5.2e-05               17          <2e-16 ***
    ## 5 (2017)  1.1e-01    -5.0e-04  4.4e-05               16          <2e-16 ***
    ## 6 (2017)  1.1e-01    -5.0e-04  3.8e-05               17          <2e-16 ***
    ## 7 (2017)  9.2e-02    -5.0e-04  3.4e-05               16          <2e-16 ***
    ## 8 (2017)  8.2e-02    -5.0e-04  3.1e-05               15          <2e-16 ***
    ## 9 (2017)  7.5e-02    -5.0e-04  2.8e-05               14          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2007`
    ## Spatial correlogram for GFC-LOSS year 2007 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.2e-01    -5.0e-04  1.7e-04              9.1          <2e-16 ***
    ## 2 (2017)  1.0e-01    -5.0e-04  9.0e-05             11.0          <2e-16 ***
    ## 3 (2017)  4.4e-02    -5.0e-04  6.4e-05              5.6           6e-08 ***
    ## 4 (2017)  5.7e-02    -5.0e-04  5.1e-05              8.1           3e-15 ***
    ## 5 (2017)  3.6e-02    -5.0e-04  4.3e-05              5.6           6e-08 ***
    ## 6 (2017)  3.6e-02    -5.0e-04  3.7e-05              6.0           1e-08 ***
    ## 7 (2017)  2.5e-02    -5.0e-04  3.3e-05              4.4           3e-05 ***
    ## 8 (2017)  2.0e-02    -5.0e-04  3.0e-05              3.8           2e-04 ***
    ## 9 (2017)  2.9e-02    -5.0e-04  2.8e-05              5.7           6e-08 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2008`
    ## Spatial correlogram for GFC-LOSS year 2008 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.2e-01    -5.0e-04  1.7e-04             16.9          <2e-16 ***
    ## 2 (2017)  1.3e-01    -5.0e-04  9.3e-05             13.9          <2e-16 ***
    ## 3 (2017)  8.7e-02    -5.0e-04  6.6e-05             10.8          <2e-16 ***
    ## 4 (2017)  6.0e-02    -5.0e-04  5.2e-05              8.3           3e-16 ***
    ## 5 (2017)  5.9e-02    -5.0e-04  4.4e-05              9.0          <2e-16 ***
    ## 6 (2017)  5.1e-02    -5.0e-04  3.8e-05              8.4           3e-16 ***
    ## 7 (2017)  4.4e-02    -5.0e-04  3.4e-05              7.6           1e-13 ***
    ## 8 (2017)  2.4e-02    -5.0e-04  3.1e-05              4.4           2e-05 ***
    ## 9 (2017)  8.5e-03    -5.0e-04  2.8e-05              1.7            0.09 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2009`
    ## Spatial correlogram for GFC-LOSS year 2009 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.5e-01    -5.0e-04  1.7e-04             11.8          <2e-16 ***
    ## 2 (2017)  1.3e-01    -5.0e-04  9.0e-05             14.1          <2e-16 ***
    ## 3 (2017)  9.9e-02    -5.0e-04  6.4e-05             12.5          <2e-16 ***
    ## 4 (2017)  7.0e-02    -5.0e-04  5.0e-05              9.9          <2e-16 ***
    ## 5 (2017)  6.0e-02    -5.0e-04  4.2e-05              9.3          <2e-16 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.7e-05              5.9           8e-09 ***
    ## 7 (2017)  3.8e-02    -5.0e-04  3.3e-05              6.7           1e-10 ***
    ## 8 (2017)  3.6e-02    -5.0e-04  3.0e-05              6.6           1e-10 ***
    ## 9 (2017)  1.7e-02    -5.0e-04  2.7e-05              3.4           6e-04 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2010`
    ## Spatial correlogram for GFC-LOSS year 2010 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.0e-01    -5.0e-04  1.7e-04             22.9          <2e-16 ***
    ## 2 (2017)  2.1e-01    -5.0e-04  9.1e-05             22.2          <2e-16 ***
    ## 3 (2017)  1.5e-01    -5.0e-04  6.4e-05             18.5          <2e-16 ***
    ## 4 (2017)  1.1e-01    -5.0e-04  5.1e-05             14.9          <2e-16 ***
    ## 5 (2017)  6.5e-02    -5.0e-04  4.3e-05             10.0          <2e-16 ***
    ## 6 (2017)  4.0e-02    -5.0e-04  3.7e-05              6.6           2e-10 ***
    ## 7 (2017)  9.0e-03    -5.0e-04  3.3e-05              1.7             0.3    
    ## 8 (2017)  6.6e-04    -5.0e-04  3.0e-05              0.2             1.0    
    ## 9 (2017)  1.2e-03    -5.0e-04  2.8e-05              0.3             1.0    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2011`
    ## Spatial correlogram for GFC-LOSS year 2011 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.3e-01    -5.0e-04  1.7e-04             17.9          <2e-16 ***
    ## 2 (2017)  1.7e-01    -5.0e-04  9.1e-05             17.7          <2e-16 ***
    ## 3 (2017)  1.3e-01    -5.0e-04  6.4e-05             15.9          <2e-16 ***
    ## 4 (2017)  9.0e-02    -5.0e-04  5.1e-05             12.7          <2e-16 ***
    ## 5 (2017)  7.0e-02    -5.0e-04  4.3e-05             10.7          <2e-16 ***
    ## 6 (2017)  6.7e-02    -5.0e-04  3.7e-05             11.1          <2e-16 ***
    ## 7 (2017)  5.3e-02    -5.0e-04  3.3e-05              9.3          <2e-16 ***
    ## 8 (2017)  4.6e-02    -5.0e-04  3.0e-05              8.6          <2e-16 ***
    ## 9 (2017)  3.7e-02    -5.0e-04  2.8e-05              7.2           6e-13 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2012`
    ## Spatial correlogram for GFC-LOSS year 2012 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.8e-01    -5.0e-04  1.7e-04             21.3          <2e-16 ***
    ## 2 (2017)  1.3e-01    -5.0e-04  9.2e-05             13.8          <2e-16 ***
    ## 3 (2017)  8.6e-02    -5.0e-04  6.5e-05             10.7          <2e-16 ***
    ## 4 (2017)  7.1e-02    -5.0e-04  5.1e-05              9.9          <2e-16 ***
    ## 5 (2017)  6.3e-02    -5.0e-04  4.3e-05              9.7          <2e-16 ***
    ## 6 (2017)  5.2e-02    -5.0e-04  3.7e-05              8.6          <2e-16 ***
    ## 7 (2017)  2.8e-02    -5.0e-04  3.3e-05              4.9           2e-06 ***
    ## 8 (2017)  1.3e-02    -5.0e-04  3.0e-05              2.4            0.03 *  
    ## 9 (2017)  1.2e-02    -5.0e-04  2.8e-05              2.3            0.03 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2013`
    ## Spatial correlogram for GFC-LOSS year 2013 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.8e-01    -5.0e-04  1.7e-04             21.2          <2e-16 ***
    ## 2 (2017)  1.2e-01    -5.0e-04  9.2e-05             12.5          <2e-16 ***
    ## 3 (2017)  9.1e-02    -5.0e-04  6.5e-05             11.3          <2e-16 ***
    ## 4 (2017)  7.1e-02    -5.0e-04  5.1e-05              9.9          <2e-16 ***
    ## 5 (2017)  6.3e-02    -5.0e-04  4.3e-05              9.6          <2e-16 ***
    ## 6 (2017)  4.5e-02    -5.0e-04  3.8e-05              7.4           3e-13 ***
    ## 7 (2017)  4.0e-02    -5.0e-04  3.3e-05              7.1           1e-12 ***
    ## 8 (2017)  5.1e-02    -5.0e-04  3.0e-05              9.4          <2e-16 ***
    ## 9 (2017)  5.5e-02    -5.0e-04  2.8e-05             10.6          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2014`
    ## Spatial correlogram for GFC-LOSS year 2014 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.4e-01    -5.0e-04  1.7e-04             18.3          <2e-16 ***
    ## 2 (2017)  1.0e-01    -5.0e-04  9.2e-05             10.5          <2e-16 ***
    ## 3 (2017)  6.9e-02    -5.0e-04  6.5e-05              8.6          <2e-16 ***
    ## 4 (2017)  5.8e-02    -5.0e-04  5.1e-05              8.1           3e-15 ***
    ## 5 (2017)  2.2e-02    -5.0e-04  4.3e-05              3.4           0.003 ** 
    ## 6 (2017)  1.0e-02    -5.0e-04  3.8e-05              1.8           0.151    
    ## 7 (2017)  1.8e-02    -5.0e-04  3.3e-05              3.1           0.005 ** 
    ## 8 (2017)  6.7e-03    -5.0e-04  3.0e-05              1.3           0.193    
    ## 9 (2017)  1.9e-02    -5.0e-04  2.8e-05              3.6           0.001 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2015`
    ## Spatial correlogram for GFC-LOSS year 2015 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.8e-01    -5.0e-04  1.7e-04             21.4          <2e-16 ***
    ## 2 (2017)  1.1e-01    -5.0e-04  9.2e-05             11.9          <2e-16 ***
    ## 3 (2017)  8.5e-02    -5.0e-04  6.5e-05             10.6          <2e-16 ***
    ## 4 (2017)  6.7e-02    -5.0e-04  5.2e-05              9.4          <2e-16 ***
    ## 5 (2017)  5.7e-02    -5.0e-04  4.3e-05              8.7          <2e-16 ***
    ## 6 (2017)  5.6e-02    -5.0e-04  3.8e-05              9.3          <2e-16 ***
    ## 7 (2017)  4.7e-02    -5.0e-04  3.3e-05              8.2           3e-16 ***
    ## 8 (2017)  4.8e-02    -5.0e-04  3.0e-05              8.8          <2e-16 ***
    ## 9 (2017)  5.7e-02    -5.0e-04  2.8e-05             10.9          <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2016`
    ## Spatial correlogram for GFC-LOSS year 2016 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.2e-01    -5.0e-04  1.7e-04             16.8          <2e-16 ***
    ## 2 (2017)  1.2e-01    -5.0e-04  9.2e-05             12.8          <2e-16 ***
    ## 3 (2017)  8.1e-02    -5.0e-04  6.5e-05             10.0          <2e-16 ***
    ## 4 (2017)  4.4e-02    -5.0e-04  5.2e-05              6.2           4e-09 ***
    ## 5 (2017)  1.4e-02    -5.0e-04  4.3e-05              2.3             0.1    
    ## 6 (2017)  1.3e-02    -5.0e-04  3.8e-05              2.3             0.1    
    ## 7 (2017)  7.4e-03    -5.0e-04  3.3e-05              1.4             0.3    
    ## 8 (2017)  9.6e-03    -5.0e-04  3.0e-05              1.8             0.2    
    ## 9 (2017) -4.1e-03    -5.0e-04  2.8e-05             -0.7             0.5    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2017`
    ## Spatial correlogram for GFC-LOSS year 2017 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.1e-01    -5.0e-04  1.7e-04             23.3          <2e-16 ***
    ## 2 (2017)  1.9e-01    -5.0e-04  9.3e-05             19.7          <2e-16 ***
    ## 3 (2017)  1.1e-01    -5.0e-04  6.5e-05             13.7          <2e-16 ***
    ## 4 (2017)  8.0e-02    -5.0e-04  5.2e-05             11.2          <2e-16 ***
    ## 5 (2017)  6.9e-02    -5.0e-04  4.4e-05             10.6          <2e-16 ***
    ## 6 (2017)  4.5e-02    -5.0e-04  3.8e-05              7.4           6e-13 ***
    ## 7 (2017)  3.7e-02    -5.0e-04  3.4e-05              6.5           3e-10 ***
    ## 8 (2017)  2.6e-02    -5.0e-04  3.1e-05              4.8           2e-06 ***
    ## 9 (2017)  2.9e-02    -5.0e-04  2.8e-05              5.5           7e-08 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2018`
    ## Spatial correlogram for GFC-LOSS year 2018 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.4e-01    -5.0e-04  1.7e-04             18.0          <2e-16 ***
    ## 2 (2017)  1.2e-01    -5.0e-04  9.2e-05             12.8          <2e-16 ***
    ## 3 (2017)  1.0e-01    -5.0e-04  6.5e-05             12.8          <2e-16 ***
    ## 4 (2017)  7.1e-02    -5.0e-04  5.2e-05             10.0          <2e-16 ***
    ## 5 (2017)  6.4e-02    -5.0e-04  4.3e-05              9.8          <2e-16 ***
    ## 6 (2017)  4.6e-02    -5.0e-04  3.8e-05              7.6           5e-14 ***
    ## 7 (2017)  4.6e-02    -5.0e-04  3.4e-05              8.0           3e-15 ***
    ## 8 (2017)  4.7e-02    -5.0e-04  3.0e-05              8.5          <2e-16 ***
    ## 9 (2017)  3.6e-02    -5.0e-04  2.8e-05              6.9           7e-12 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2019`
    ## Spatial correlogram for GFC-LOSS year 2019 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.2e-01    -5.0e-04  1.7e-04             16.6          <2e-16 ***
    ## 2 (2017)  8.8e-02    -5.0e-04  9.2e-05              9.2          <2e-16 ***
    ## 3 (2017)  7.1e-02    -5.0e-04  6.5e-05              8.8          <2e-16 ***
    ## 4 (2017)  7.1e-02    -5.0e-04  5.2e-05              9.9          <2e-16 ***
    ## 5 (2017)  5.6e-02    -5.0e-04  4.3e-05              8.6          <2e-16 ***
    ## 6 (2017)  3.5e-02    -5.0e-04  3.8e-05              5.8           2e-08 ***
    ## 7 (2017)  2.4e-02    -5.0e-04  3.3e-05              4.3           5e-05 ***
    ## 8 (2017)  1.9e-02    -5.0e-04  3.0e-05              3.6           7e-04 ***
    ## 9 (2017)  1.4e-02    -5.0e-04  2.8e-05              2.7           0.006 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2020`
    ## Spatial correlogram for GFC-LOSS year 2020 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.2e-01    -5.0e-04  1.7e-04             24.2          <2e-16 ***
    ## 2 (2017)  1.7e-01    -5.0e-04  9.3e-05             17.3          <2e-16 ***
    ## 3 (2017)  1.2e-01    -5.0e-04  6.5e-05             14.9          <2e-16 ***
    ## 4 (2017)  8.0e-02    -5.0e-04  5.2e-05             11.2          <2e-16 ***
    ## 5 (2017)  6.2e-02    -5.0e-04  4.4e-05              9.5          <2e-16 ***
    ## 6 (2017)  5.4e-02    -5.0e-04  3.8e-05              8.9          <2e-16 ***
    ## 7 (2017)  5.2e-02    -5.0e-04  3.4e-05              9.1          <2e-16 ***
    ## 8 (2017)  4.9e-02    -5.0e-04  3.1e-05              8.9          <2e-16 ***
    ## 9 (2017)  3.3e-02    -5.0e-04  2.8e-05              6.3           2e-10 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GFC-LOSS year 2021`
    ## Spatial correlogram for GFC-LOSS year 2021 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.9e-01    -5.0e-04  1.7e-04             14.2          <2e-16 ***
    ## 2 (2017)  1.3e-01    -5.0e-04  9.2e-05             13.4          <2e-16 ***
    ## 3 (2017)  7.3e-02    -5.0e-04  6.5e-05              9.1          <2e-16 ***
    ## 4 (2017)  6.5e-02    -5.0e-04  5.2e-05              9.1          <2e-16 ***
    ## 5 (2017)  3.7e-02    -5.0e-04  4.3e-05              5.7           6e-08 ***
    ## 6 (2017)  1.7e-02    -5.0e-04  3.8e-05              2.9            0.02 *  
    ## 7 (2017)  3.4e-03    -5.0e-04  3.4e-05              0.7            0.50    
    ## 8 (2017)  9.6e-03    -5.0e-04  3.0e-05              1.8            0.20    
    ## 9 (2017)  8.3e-03    -5.0e-04  2.8e-05              1.7            0.20    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`OSM-DIST mean`
    ## Spatial correlogram for OSM-DIST mean 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.9e-01    -5.0e-04  1.7e-04             59.5          <2e-16 ***
    ## 2 (2017)  5.1e-01    -5.0e-04  9.2e-05             53.5          <2e-16 ***
    ## 3 (2017)  3.1e-01    -5.0e-04  6.5e-05             38.3          <2e-16 ***
    ## 4 (2017)  1.9e-01    -5.0e-04  5.2e-05             26.8          <2e-16 ***
    ## 5 (2017)  1.2e-01    -5.0e-04  4.4e-05             17.6          <2e-16 ***
    ## 6 (2017)  9.6e-02    -5.0e-04  3.8e-05             15.7          <2e-16 ***
    ## 7 (2017)  7.4e-02    -5.0e-04  3.4e-05             12.9          <2e-16 ***
    ## 8 (2017)  4.1e-02    -5.0e-04  3.1e-05              7.4           2e-13 ***
    ## 9 (2017)  2.8e-02    -5.0e-04  2.8e-05              5.5           5e-08 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`GP-CONSUNadj YEAR 2020 sum`
    ## Spatial correlogram for GP-CONSUNadj YEAR 2020 sum 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  6.2e-01    -5.0e-04  1.7e-04             48.2          <2e-16 ***
    ## 2 (2017)  3.8e-01    -5.0e-04  8.8e-05             40.0          <2e-16 ***
    ## 3 (2017)  2.1e-01    -5.0e-04  6.2e-05             27.0          <2e-16 ***
    ## 4 (2017)  1.1e-01    -5.0e-04  5.0e-05             15.5          <2e-16 ***
    ## 5 (2017)  5.5e-02    -5.0e-04  4.2e-05              8.6          <2e-16 ***
    ## 6 (2017)  3.4e-02    -5.0e-04  3.6e-05              5.8           3e-08 ***
    ## 7 (2017)  1.8e-02    -5.0e-04  3.2e-05              3.3           0.003 ** 
    ## 8 (2017)  9.8e-03    -5.0e-04  2.9e-05              1.9           0.112    
    ## 9 (2017)  3.8e-03    -5.0e-04  2.7e-05              0.8           0.403    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $riqueza
    ## Spatial correlogram for riqueza 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.9e-01    -5.0e-04  1.7e-04             14.9          <2e-16 ***
    ## 2 (2017)  1.5e-01    -5.0e-04  9.0e-05             15.8          <2e-16 ***
    ## 3 (2017)  1.0e-01    -5.0e-04  6.3e-05             13.1          <2e-16 ***
    ## 4 (2017)  6.1e-02    -5.0e-04  5.0e-05              8.7          <2e-16 ***
    ## 5 (2017)  1.9e-02    -5.0e-04  4.2e-05              3.0           0.005 ** 
    ## 6 (2017)  2.2e-02    -5.0e-04  3.7e-05              3.8           6e-04 ***
    ## 7 (2017)  1.3e-02    -5.0e-04  3.3e-05              2.3           0.023 *  
    ## 8 (2017)  2.0e-02    -5.0e-04  3.0e-05              3.7           6e-04 ***
    ## 9 (2017)  2.8e-02    -5.0e-04  2.7e-05              5.4           3e-07 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
# Necesitaremos los prefijos de variables para graficarlas:
prefijos_disponibles <- c('ESA', 'CGL', 'GSL', 'GHH', 'WCL', 'CH-BIO', 'G90', 'G90-GEOM',
              'CGIAR-ELE', 'GFC-PTC YEAR 2000', 'GFC-LOSS', 'OSM-DIST', 'GP-CONSUNadj YEAR 2020')
suppressWarnings(invisible(lapply(prefijos_disponibles, 
       function(x) {
         dim_panel <- rev(n2mfrow(ncol(env_num %>% select(matches(paste0('^', x))))))
         if(interactive()) dev.new()
         par(mfrow = dim_panel)
         suppressWarnings(invisible(lapply(
           auto_amb[grep(paste0('^', x), names(auto_amb), value=T)],
           function(x) plot(x, main = x$var))))
       })))
```

![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-2.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-3.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-4.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-5.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-6.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-7.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-8.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-9.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-10.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-11.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-12.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-18-13.png)<!-- -->

I de Moran local, por medio de mapas LISA de *hotspots* y *coldspots*
(los explico en el vídeo referido). Aquí descubirás los *hotspots* de
las variables ambientales y de las especies. La coincidencia de
*hotspots* es un indicador, a priori, de que existe algún grado de
asociación.

``` r
env_sf_num <- env_sf %>%
  select_if(is.numeric) %>% 
  replace(is.na(.), 0)
env_sf_num %>% tibble
```

    ## # A tibble: 2,017 × 138
    ##    `ESA Trees` `ESA Shrubland` `ESA Grassland` `ESA Cropland` `ESA Built-up`
    ##          <dbl>           <dbl>           <dbl>          <dbl>          <dbl>
    ##  1      7.34           39.3              38.3           1.62         0.405  
    ##  2     21.6             4.86             34.8          36.0          0.626  
    ##  3      0.0194          1.58              1.80          0            0.00152
    ##  4      1.69           19.0              25.7           0.479        1.36   
    ##  5     12.8            35.4              35.5           5.06         2.89   
    ##  6     43.7            18.2              28.3           6.92         0.818  
    ##  7      1.12            8.72              8.71          0            0.00335
    ##  8      7.15            0.514             7.17         84.6          0.151  
    ##  9     20.4            20.0              43.9           7.80         5.83   
    ## 10      2.71            0.0319            4.07         92.7          0.0595 
    ## # … with 2,007 more rows, and 133 more variables:
    ## #   `ESA Barren / sparse vegetation` <dbl>, `ESA Open water` <dbl>,
    ## #   `ESA Herbaceous wetland` <dbl>, `ESA Mangroves` <dbl>,
    ## #   `CGL Closed forest, evergreen needle leaf` <dbl>,
    ## #   `CGL Closed forest, evergreen broad leaf` <dbl>,
    ## #   `CGL Closed forest, deciduous broad leaf` <dbl>,
    ## #   `CGL Closed forest, mixed` <dbl>, …

``` r
lisamaps_amb <- sapply(
  grep('geom', names(env_sf_num), invert = T, value = T),
  function(x) {
    tryCatch(
      {m <- lisamap(
      objesp = env_sf_num[x],
      var = x,
      pesos = pesos_b,
      tituloleyenda = 'Significancia ("x-y", léase como "x" rodeado de "y")',
      leyenda = F,
      anchuratitulo = 50,
      tamanotitulo = 10,
      fuentedatos = '',
      titulomapa = paste0('Clusters LISA de "', x, '"'))
    return(m$grafico)}, error = function(e) e)
    }, simplify = F)
lisamaps_amb_rango <- seq_along(lisamaps_amb)
lisamaps_amb_cortes <- unique(c(
  min(lisamaps_amb_rango),
  (lisamaps_amb_rango)[which(lisamaps_amb_rango%%8==0)],
  max(lisamaps_amb_rango)))
lisamaps_amb_intervalos <- cut(lisamaps_amb_rango, lisamaps_amb_cortes, include.lowest = T)
lisamaps_amb_df <- data.frame(lisamaps_amb_rango, lisamaps_amb_intervalos)
lisamaps_amb$leyenda <- gtable_filter(ggplot_gtable(ggplot_build(lisamaps_amb[[1]] + theme(legend.position = "bottom"))), "guide-box")
suppressWarnings(invisible(sapply(levels(lisamaps_amb_df[, 'lisamaps_amb_intervalos']),
       function(x) {
         if(interactive()) dev.new()
         grid.arrange(
           do.call(
             'arrangeGrob',
             c(lisamaps_amb[
               lisamaps_amb_df[
                 lisamaps_amb_df$lisamaps_amb_intervalos==x, 'lisamaps_amb_rango', drop=T]
               ], nrow = 3)),
           lisamaps_amb$leyenda,
           heights=c(1.1, 0.1), nrow = 2)
       })))
```

![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-2.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-3.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-4.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-5.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-6.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-7.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-8.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-9.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-10.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-11.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-12.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-13.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-14.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-15.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-16.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-17.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-19-18.png)<!-- -->

Finalmente, haré lo propio con los datos de la matriz de comunidad, para
calcular la autocorrelación de los datos de incidencia a partir de la
matriz transformada. El objetivo es comparar los resultados de los mapas
LISA

``` r
mi_fam_t_sf <- env_sf %>% select(hex_id) %>%
  left_join(mi_fam_t %>% rownames_to_column('hex_id'), by = 'hex_id') %>%
  replace(is.na(.), 0) %>% 
  select(-hex_id)
lisamaps_mifam <- sapply(
  grep('geom', names(mi_fam_t_sf), invert = T, value = T),
  function(x) {
    tryCatch(
    {m <- lisamap(
      objesp = mi_fam_t_sf[x],
      var = x,
      pesos = pesos_b,
      tituloleyenda = 'Significancia ("x-y", léase como "x" rodeado de "y")',
      leyenda = F,
      anchuratitulo = 50,
      tamanotitulo = 10,
      fuentedatos = '',
      titulomapa = paste0('Clusters LISA de "', x, '"'))
    # dev.new();print(m$grafico)
    return(m$grafico)}, error = function(e) e)
    }, simplify = F)
lisamaps_mifam_rango <- seq_along(lisamaps_mifam)
lisamaps_mifam_cortes <- unique(c(
  min(lisamaps_mifam_rango),
  (lisamaps_mifam_rango)[which(lisamaps_mifam_rango%%8==0)],
  max(lisamaps_mifam_rango)))
lisamaps_mifam_intervalos <- cut(lisamaps_mifam_rango, lisamaps_mifam_cortes, include.lowest = T)
lisamaps_mifam_df <- data.frame(lisamaps_mifam_rango, lisamaps_mifam_intervalos)
lisamaps_mifam$leyenda <- gtable_filter(ggplot_gtable(ggplot_build(lisamaps_mifam[[1]] + theme(legend.position = "bottom"))), "guide-box")
suppressWarnings(invisible(sapply(levels(lisamaps_mifam_df[, 'lisamaps_mifam_intervalos']),
       function(x) {
         if(interactive()) dev.new()
         grid.arrange(
           do.call(
             'arrangeGrob',
             c(lisamaps_mifam[
               lisamaps_mifam_df[
                 lisamaps_mifam_df$lisamaps_mifam_intervalos==x, 'lisamaps_mifam_rango', drop=T]
               ], nrow = 3)),
           lisamaps_mifam$leyenda,
           heights=c(1.1, 0.1), nrow = 2)
       })))
```

![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-20-2.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-20-3.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-20-4.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-cactaceae_files/figure-gfm/unnamed-chunk-20-5.png)<!-- -->

# Referencias
