Práctica 99. Resultados de tu manuscrito. Emydidae, ordenación y
ecología espacial.
================
José Ramón Martínez Batlle
26-11-2022

NOTA. Este cuaderno es una aplicación a datos de Emydidae en GBIF, a
partir de una simple adaptación del cuaderno general
[practica-99-tu-manuscrito-3-resultados.md (basado en un análisis
demostrativo de la familia
Polygonaceae)](../practica-99-tu-manuscrito-3-resultados.md). Si
comparas este archivo con el original, notarás que, básicamente, edité
el nombre del archivo fuente de la matriz de comunidad (para adaptarlo a
este grupo) y otros detalles menores. Por lo tanto, aunque el código y
los gráficos sí se refieren a Emydidae, probablemente el texto no.

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
mc_orig <- readRDS('matriz_de_comunidad_emydidae.RDS')
nrow(mc_orig) #Número de filas, equivale a número de hexágonos con registros de presencia
```

    ## [1] 48

``` r
ncol(mc_orig)  #Número de columnas, equivale a número de especies, riqueza
```

    ## [1] 9

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
Trachemys scripta (Thunberg In Schoepff, 1792)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys scripta elegans (Wied, 1838)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decorata (Barbour & Carr, 1940)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys stejnegeri vicina (Barbour & Carr, 1940)
</td>
</tr>
<tr>
<td style="text-align:left;">
Pseudemys concinna floridana (Le Conte, 1830)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys stejnegeri Schmidt, 1928
</td>
</tr>
<tr>
<td style="text-align:left;">
Chrysemys Gray, 1844
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys Agassiz, 1857
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decussata (Gray, 1831)
</td>
</tr>
</tbody>
</table>

``` r
unique(word(names(mc_orig), 1, 1)) #Géneros representados
```

    ## [1] "Trachemys" "Pseudemys" "Chrysemys"

``` r
table(word(names(mc_orig), 1, 1)) #Número de especies por género
```

    ## 
    ## Chrysemys Pseudemys Trachemys 
    ##         1         1         7

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
Trachemys stejnegeri vicina (Barbour & Carr, 1940)
</td>
<td style="text-align:right;">
19
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decorata (Barbour & Carr, 1940)
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys scripta (Thunberg In Schoepff, 1792)
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys scripta elegans (Wied, 1838)
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys stejnegeri Schmidt, 1928
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Chrysemys Gray, 1844
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys Agassiz, 1857
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Pseudemys concinna floridana (Le Conte, 1830)
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decussata (Gray, 1831)
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

    ##  [1]  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19

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
864cd42efffffff
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
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42c7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd55b7ffffff
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
864cc610fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf3427ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd660fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864c882c7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6c0fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8994fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd64b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42f7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6c4fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0977ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd420fffffff
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
864cd42dfffffff
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
864cd422fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4117ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf20efffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89557ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5cf7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5ca7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd552fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5c97ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6077ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4b17ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6107ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd424fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4277ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc602fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf3017ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd20b7ffffff
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
864cd219fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf3437ffffff
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
864cd5cafffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd08afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd425fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc655fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6ccfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0907ffffff
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
864cf2407ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89877ffffff
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

    ## [1] 48

``` r
# mi_fam <- mc_orig_seleccionadas[!rowSums(mc_orig_seleccionadas)==0, ] #Elimina filas sin registros
# rowSums(mi_fam) #Riqueza por hexágonos con especies seleccionadas. Comentado por extenso
all(rowSums(mi_fam)>0) #Debe ser TRUE: todos los hexágonos tienen al menos 1 registro
```

    ## [1] TRUE

``` r
ncol(mi_fam) #Riqueza de especies
```

    ## [1] 7

``` r
# Usar nombres cortos o abreviados para las especies
nombres_largos <- colnames(mi_fam)
(colnames(mi_fam) <- make.cepnames(word(colnames(mi_fam), 1, 2)))
```

    ## [1] "Tracscri"   "Tracscri.1" "Tracdeco"   "Tracstej"   "Tracstej.1"
    ## [6] "ChryGray"   "TracAgas"

``` r
(df_equivalencias <- data.frame(
  nombre_original = nombres_largos,
  abreviado = colnames(mi_fam)))
```

    ##                                      nombre_original  abreviado
    ## 1     Trachemys scripta (Thunberg In Schoepff, 1792)   Tracscri
    ## 2             Trachemys scripta elegans (Wied, 1838) Tracscri.1
    ## 3          Trachemys decorata (Barbour & Carr, 1940)   Tracdeco
    ## 4 Trachemys stejnegeri vicina (Barbour & Carr, 1940)   Tracstej
    ## 5                 Trachemys stejnegeri Schmidt, 1928 Tracstej.1
    ## 6                               Chrysemys Gray, 1844   ChryGray
    ## 7                            Trachemys Agassiz, 1857   TracAgas

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
    ## 1 subsets of each size up to 4
    ## Selection Algorithm: 'sequential replacement'
    ##          `ESA Trees` `ESA Shrubland` `ESA Grassland` `ESA Cropland`
    ## 1  ( 1 ) " "         " "             " "             " "           
    ## 2  ( 1 ) " "         " "             " "             " "           
    ## 3  ( 1 ) " "         " "             " "             " "           
    ## 4  ( 1 ) " "         " "             " "             " "           
    ##          `ESA Built-up` `ESA Barren / sparse vegetation` `ESA Open water`
    ## 1  ( 1 ) "*"            " "                              " "             
    ## 2  ( 1 ) "*"            " "                              " "             
    ## 3  ( 1 ) "*"            " "                              "*"             
    ## 4  ( 1 ) "*"            " "                              "*"             
    ##          `ESA Herbaceous wetland` `ESA Mangroves`
    ## 1  ( 1 ) " "                      " "            
    ## 2  ( 1 ) " "                      "*"            
    ## 3  ( 1 ) " "                      "*"            
    ## 4  ( 1 ) " "                      "*"            
    ##          `CH-BIO bio01 mean annual air temperature`
    ## 1  ( 1 ) " "                                       
    ## 2  ( 1 ) " "                                       
    ## 3  ( 1 ) " "                                       
    ## 4  ( 1 ) " "                                       
    ##          `CH-BIO bio02 mean diurnal air temperature range`
    ## 1  ( 1 ) " "                                              
    ## 2  ( 1 ) " "                                              
    ## 3  ( 1 ) " "                                              
    ## 4  ( 1 ) " "                                              
    ##          `CH-BIO bio03 isothermality` `CH-BIO bio04 temperature seasonality`
    ## 1  ( 1 ) " "                          " "                                   
    ## 2  ( 1 ) " "                          " "                                   
    ## 3  ( 1 ) " "                          " "                                   
    ## 4  ( 1 ) " "                          " "                                   
    ##          `CH-BIO bio05 mean daily maximum air temperature of the warmest month`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ##          `CH-BIO bio06 mean daily minimum air temperature of the coldest month`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ##          `CH-BIO bio07 annual range of air temperature`
    ## 1  ( 1 ) " "                                           
    ## 2  ( 1 ) " "                                           
    ## 3  ( 1 ) " "                                           
    ## 4  ( 1 ) "*"                                           
    ##          `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ##          `CH-BIO bio09 mean daily mean air temperatures of the driest quarter`
    ## 1  ( 1 ) " "                                                                  
    ## 2  ( 1 ) " "                                                                  
    ## 3  ( 1 ) " "                                                                  
    ## 4  ( 1 ) " "                                                                  
    ##          `CH-BIO bio10 mean daily mean air temperatures of the warmest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ##          `CH-BIO bio11 mean daily mean air temperatures of the coldest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ##          `CH-BIO bio12 annual precipitation amount`
    ## 1  ( 1 ) " "                                       
    ## 2  ( 1 ) " "                                       
    ## 3  ( 1 ) " "                                       
    ## 4  ( 1 ) " "                                       
    ##          `CH-BIO bio13 precipitation amount of the wettest month`
    ## 1  ( 1 ) " "                                                     
    ## 2  ( 1 ) " "                                                     
    ## 3  ( 1 ) " "                                                     
    ## 4  ( 1 ) " "                                                     
    ##          `CH-BIO bio14 precipitation amount of the driest month`
    ## 1  ( 1 ) " "                                                    
    ## 2  ( 1 ) " "                                                    
    ## 3  ( 1 ) " "                                                    
    ## 4  ( 1 ) " "                                                    
    ##          `CH-BIO bio15 precipitation seasonality`
    ## 1  ( 1 ) " "                                     
    ## 2  ( 1 ) " "                                     
    ## 3  ( 1 ) " "                                     
    ## 4  ( 1 ) " "                                     
    ##          `CH-BIO bio16 mean monthly precipitation amount of the wettest quarter`
    ## 1  ( 1 ) " "                                                                    
    ## 2  ( 1 ) " "                                                                    
    ## 3  ( 1 ) " "                                                                    
    ## 4  ( 1 ) " "                                                                    
    ##          `CH-BIO bio17 mean monthly precipitation amount of the driest quarter`
    ## 1  ( 1 ) " "                                                                   
    ## 2  ( 1 ) " "                                                                   
    ## 3  ( 1 ) " "                                                                   
    ## 4  ( 1 ) " "                                                                   
    ##          `CH-BIO bio18 mean monthly precipitation amount of the warmest quarter`
    ## 1  ( 1 ) " "                                                                    
    ## 2  ( 1 ) " "                                                                    
    ## 3  ( 1 ) " "                                                                    
    ## 4  ( 1 ) " "                                                                    
    ##          `CH-BIO bio19 mean monthly precipitation amount of the coldest quarter`
    ## 1  ( 1 ) " "                                                                    
    ## 2  ( 1 ) " "                                                                    
    ## 3  ( 1 ) " "                                                                    
    ## 4  ( 1 ) " "                                                                    
    ## 
    ## $resultados_nvmax
    ##   nvmax     RMSE  Rsquared       MAE   RMSESD RsquaredSD    MAESD
    ## 1     3 1.764010 0.1895800 0.7985824 2.761021  0.1677777 1.172606
    ## 2     4 2.395504 0.1961370 1.0698763 3.855822  0.1769342 1.640822
    ## 3     5 2.577288 0.1748790 1.1430755 4.172240  0.1606508 1.770336
    ## 4     6 2.451291 0.1687749 1.0950349 3.954081  0.1658994 1.671537
    ## 5     7 1.993712 0.1230543 0.9347497 2.909133  0.1883604 1.242704
    ## 
    ## $mejor_ajuste
    ##   nvmax
    ## 1     3

``` r
(covar <- grep(
  pattern = '\\(Intercept\\)',
  x = names(coef(mod$finalModel,unlist(mod$bestTune))),
  invert = T, value = T))
```

    ## [1] "`ESA Built-up`"                            
    ## [2] "`ESA Open water`"                          
    ## [3] "`CH-BIO bio01 mean annual air temperature`"

``` r
mi_fam_t_rda <- rda(mi_fam_t_sel %>% rename_all(~ gsub('^ESPECIE ', '', .)) ~ .,
                    env %>% select_at(all_of(gsub('\\`', '', covar))), scale = T)
summary(mi_fam_t_rda)
```

    ## 
    ## Call:
    ## rda(formula = mi_fam_t_sel %>% rename_all(~gsub("^ESPECIE ",      "", .)) ~ `ESA Built-up` + `ESA Open water` + `CH-BIO bio01 mean annual air temperature`,      data = env %>% select_at(all_of(gsub("\\`", "", covar))),      scale = T) 
    ## 
    ## Partitioning of correlations:
    ##               Inertia Proportion
    ## Total          7.0000     1.0000
    ## Constrained    0.6811     0.0973
    ## Unconstrained  6.3189     0.9027
    ## 
    ## Eigenvalues, and their contribution to the correlations 
    ## 
    ## Importance of components:
    ##                          RDA1    RDA2    RDA3    PC1    PC2    PC3    PC4
    ## Eigenvalue            0.34906 0.24332 0.08874 1.3264 1.2626 1.0976 1.0388
    ## Proportion Explained  0.04987 0.03476 0.01268 0.1895 0.1804 0.1568 0.1484
    ## Cumulative Proportion 0.04987 0.08463 0.09730 0.2868 0.4671 0.6239 0.7724
    ##                          PC5    PC6      PC7
    ## Eigenvalue            0.9126 0.6566 0.024337
    ## Proportion Explained  0.1304 0.0938 0.003477
    ## Cumulative Proportion 0.9027 0.9965 1.000000
    ## 
    ## Accumulated constrained eigenvalues
    ## Importance of components:
    ##                         RDA1   RDA2    RDA3
    ## Eigenvalue            0.3491 0.2433 0.08874
    ## Proportion Explained  0.5125 0.3572 0.13029
    ## Cumulative Proportion 0.5125 0.8697 1.00000
    ## 
    ## Scaling 2 for species and site scores
    ## * Species are scaled proportional to eigenvalues
    ## * Sites are unscaled: weighted dispersion equal on all dimensions
    ## * General scaling constant of scores:  4.258915 
    ## 
    ## 
    ## Species scores
    ## 
    ##                RDA1      RDA2     RDA3      PC1      PC2      PC3
    ## Tracscri   -0.02683  0.318237  0.10107 -1.19898 -0.53403 -0.51683
    ## Tracscri.1 -0.82114 -0.139447 -0.18491 -0.59456 -0.40196  0.08289
    ## Tracdeco   -0.24481  0.377076  0.09545  1.18801 -0.38777 -0.13495
    ## Tracstej    0.06474 -0.445081  0.19436 -0.05725  1.44512 -0.36362
    ## Tracstej.1  0.27560  0.301622 -0.17763 -0.17375 -0.03954  1.50291
    ## ChryGray    0.17372  0.001243 -0.28207  0.44618 -0.76110 -0.38982
    ## TracAgas    0.24336 -0.280189 -0.16594 -0.04410  0.07190 -0.09471
    ## 
    ## 
    ## Site scores (weighted sums of species scores)
    ## 
    ##                    RDA1      RDA2    RDA3       PC1      PC2      PC3
    ## 864cc6c0fffffff  0.0984  1.484118  1.2837 -1.046137 -0.63426 -0.50145
    ## 864c8994fffffff  0.0984  1.484118  1.2837 -1.029579 -0.76769 -0.38325
    ## 864cd42cfffffff -2.4164  0.430835 -1.3447 -1.164932 -0.47272 -0.24456
    ## 864cd64b7ffffff -0.4781  1.467527  1.0100  0.831456 -0.51924  0.13408
    ## 864cd42f7ffffff -0.4781  1.467527  1.0100  0.949480 -0.30602  0.11018
    ## 864cc6c4fffffff  0.0984  1.484118  1.2837 -1.053471 -0.52942 -0.54650
    ## 864cd0977ffffff -0.4781  1.467527  1.0100  0.828266 -0.04356 -0.18338
    ## 864cd42efffffff -2.1836 -0.527939 -0.2154  0.222268  0.21401  0.10068
    ## 864cd42c7ffffff -2.4164  0.430835 -1.3447 -1.074122 -0.61077 -0.04218
    ## 864cd420fffffff  0.3384 -1.506459  1.7970  0.022399  0.80654 -0.08844
    ## 864cd421fffffff -0.4781  1.467527  1.0100  0.849339 -0.57815  0.02012
    ## 864cd55b7ffffff -0.1757 -0.027930  1.9881  0.504797  0.79139 -0.45504
    ## 864cd42dfffffff -3.4070 -0.874258 -3.1900 -0.609570 -0.46519  0.27831
    ## 864c89b07ffffff  0.3384 -1.506459  1.7970 -0.047511  0.68500 -0.06851
    ## 864cd422fffffff -0.4781  1.467527  1.0100  0.845529 -0.58968  0.01530
    ## 864cd5b77ffffff  1.1726  1.550631 -2.5102 -0.189500 -0.11229  1.69282
    ## 864cd4117ffffff  0.3384 -1.506459  1.7970 -0.057642  0.78601 -0.17832
    ## 864cf20efffffff  1.1726  1.550631 -2.5102 -0.179459 -0.15531  1.77043
    ## 864c89557ffffff  1.1726  1.550631 -2.5102 -0.167753 -0.36248  1.81859
    ## 864cd5cf7ffffff  0.3384 -1.506459  1.7970 -0.039855  0.62854 -0.16054
    ## 864cd5ca7ffffff  0.3384 -1.506459  1.7970 -0.038346  0.63823 -0.15803
    ## 864cd552fffffff  0.3384 -1.506459  1.7970  0.007236  0.84772 -0.14819
    ## 864cd5c97ffffff  0.3384 -1.506459  1.7970 -0.037559  0.63546 -0.15377
    ## 864cc6077ffffff  1.1726  1.550631 -2.5102 -0.216685  0.15733  1.58118
    ## 864cd4b17ffffff  0.0984  1.484118  1.2837 -1.034724 -0.76703 -0.37017
    ## 864cc6107ffffff  1.1726  1.550631 -2.5102 -0.219497  0.25133  1.55247
    ## 864cd424fffffff  0.3384 -1.506459  1.7970  0.066692  1.03417 -0.09458
    ## 864cd4277ffffff  0.3384 -1.506459  1.7970  0.010181  0.76857 -0.10547
    ## 864cc602fffffff -3.4070 -0.874258 -3.1900 -0.660782 -0.73467  0.24625
    ## 864cf3017ffffff  0.0984  1.484118  1.2837 -1.093363 -0.15968 -0.71627
    ## 864cc610fffffff  0.2320 -0.016199  2.1817 -0.792840  0.46344 -0.66461
    ## 864cd20b7ffffff -0.4781  1.467527  1.0100  0.810263 -0.28855 -0.17469
    ## 864cd6677ffffff -0.4781  1.467527  1.0100  0.841046 -0.54741 -0.05111
    ## 864cd219fffffff -0.4781  1.467527  1.0100  0.793833 -0.11918 -0.25252
    ## 864cf3437ffffff  0.3384 -1.506459  1.7970 -0.041476  0.61998 -0.16209
    ## 864c88357ffffff  0.3384 -1.506459  1.7970 -0.036342  0.60635 -0.19301
    ## 864cd5cafffffff  0.3384 -1.506459  1.7970 -0.039661  0.62839 -0.15722
    ## 864cd08afffffff  0.3384 -1.506459  1.7970 -0.029730  0.66432 -0.14441
    ## 864cd425fffffff -0.4781  1.467527  1.0100  0.946744 -0.14736  0.04463
    ## 864cf3427ffffff  1.3808 -2.860649 -1.6476 -0.089001  0.58418 -0.27413
    ## 864cc655fffffff  0.8408  0.007694 -4.1927  0.475831 -1.00877 -0.31837
    ## 864cc6ccfffffff  0.8408  0.007694 -4.1927  0.437347 -1.11119 -0.35011
    ## 864cd0907ffffff  0.8408  0.007694 -4.1927  0.473497 -0.99736 -0.29875
    ## 864cd660fffffff  0.1796  1.042738 -2.2473  0.857525 -0.58315 -0.56174
    ## 864c882c7ffffff  1.7231 -2.538543 -4.1317 -0.077040 -0.18487 -0.10678
    ## 864cd649fffffff  0.8408  0.007694 -4.1927  0.379207 -0.51697 -0.70819
    ## 864cf2407ffffff  0.3384 -1.506459  1.7970 -0.043451  0.85691 -0.22087
    ## 864c89877ffffff  0.3384 -1.506459  1.7970 -0.042909  0.64509 -0.12778
    ## 
    ## 
    ## Site constraints (linear combinations of constraining variables)
    ## 
    ##                     RDA1     RDA2      RDA3       PC1      PC2      PC3
    ## 864cc6c0fffffff  0.41392 -0.10231 -0.127120 -1.046137 -0.63426 -0.50145
    ## 864c8994fffffff  0.24575 -0.23843  0.669436 -1.029579 -0.76769 -0.38325
    ## 864cd42cfffffff -0.86986  0.57007 -0.214018 -1.164932 -0.47272 -0.24456
    ## 864cd64b7ffffff -0.19445  0.80380  2.696216  0.831456 -0.51924  0.13408
    ## 864cd42f7ffffff -1.21327 -0.28349 -0.047896  0.949480 -0.30602  0.11018
    ## 864cc6c4fffffff  0.35003  0.20123 -0.196165 -1.053471 -0.52942 -0.54650
    ## 864cd0977ffffff -0.23391  1.02569 -0.114736  0.828266 -0.04356 -0.18338
    ## 864cd42efffffff -1.88462 -0.25111 -0.327202  0.222268  0.21401  0.10068
    ## 864cd42c7ffffff -1.68618 -0.26039 -0.200287 -1.074122 -0.61077 -0.04218
    ## 864cd420fffffff -0.55181 -0.36741  0.055556  0.022399  0.80654 -0.08844
    ## 864cd421fffffff  0.26409 -0.42043  0.290475  0.849339 -0.57815  0.02012
    ## 864cd55b7ffffff  0.20348  1.50604 -0.113376  0.504797  0.79139 -0.45504
    ## 864cd42dfffffff -0.94784 -0.07935 -0.123811 -0.609570 -0.46519  0.27831
    ## 864c89b07ffffff  0.01963  0.33202  1.785082 -0.047511  0.68500 -0.06851
    ## 864cd422fffffff  0.32811 -0.43915  0.278077  0.845529 -0.58968  0.01530
    ## 864cd5b77ffffff  0.41712  0.01884 -0.452831 -0.189500 -0.11229  1.69282
    ## 864cd4117ffffff  0.20669  0.27500  0.814584 -0.057642  0.78601 -0.17832
    ## 864cf20efffffff  0.20096  0.13710  0.263497 -0.179459 -0.15531  1.77043
    ## 864c89557ffffff  0.48462 -0.66359 -0.132088 -0.167753 -0.36248  1.81859
    ## 864cd5cf7ffffff  0.44505 -0.58765 -0.007488 -0.039855  0.62854 -0.16054
    ## 864cd5ca7ffffff  0.40496 -0.55429  0.025970 -0.038346  0.63823 -0.15803
    ## 864cd552fffffff -0.36885 -0.30529 -0.263133  0.007236  0.84772 -0.14819
    ## 864cd5c97ffffff  0.39291 -0.55328  0.057415 -0.037559  0.63546 -0.15377
    ## 864cc6077ffffff  0.27868  0.95703 -0.341430 -0.216685  0.15733  1.58118
    ## 864cd4b17ffffff  0.22331 -0.07546  1.006124 -1.034724 -0.76703 -0.37017
    ## 864cc6107ffffff  0.16187  1.23954 -0.331794 -0.219497  0.25133  1.55247
    ## 864cd424fffffff -1.30778 -0.11461 -0.366606  0.066692  1.03417 -0.09458
    ## 864cd4277ffffff -0.33857 -0.44111 -0.011152  0.010181  0.76857 -0.10547
    ## 864cc602fffffff  0.07948 -0.63383 -0.241864 -0.660782 -0.73467  0.24625
    ## 864cf3017ffffff  0.23159  1.42940 -0.220239 -1.093363 -0.15968 -0.71627
    ## 864cc610fffffff  0.25060  0.75100 -0.304297 -0.792840  0.46344 -0.66461
    ## 864cd20b7ffffff  0.42721  0.29503 -0.435217  0.810263 -0.28855 -0.17469
    ## 864cd6677ffffff  0.47952 -0.58178 -0.425565  0.841046 -0.54741 -0.05111
    ## 864cd219fffffff  0.36417  0.82796 -0.497288  0.793833 -0.11918 -0.25252
    ## 864cf3437ffffff  0.47953 -0.60857 -0.019340 -0.041476  0.61998 -0.16209
    ## 864c88357ffffff  0.59676 -0.93494 -0.670740 -0.036342  0.60635 -0.19301
    ## 864cd5cafffffff  0.43280 -0.57151  0.035984 -0.039661  0.62839 -0.15722
    ## 864cd08afffffff  0.25059 -0.49563  0.094431 -0.029730  0.66432 -0.14441
    ## 864cd425fffffff -1.36018  0.05898 -0.340239  0.946744 -0.14736  0.04463
    ## 864cf3427ffffff  0.33779 -0.19467 -0.126737 -0.089001  0.58418 -0.27413
    ## 864cc655fffffff -0.11194 -0.52408 -0.090828  0.475831 -1.00877 -0.31837
    ## 864cc6ccfffffff  0.44040 -0.55011  0.090068  0.437347 -1.11119 -0.35011
    ## 864cd0907ffffff -0.19767 -0.31958  0.308034  0.473497 -0.99736 -0.29875
    ## 864cd660fffffff  0.38481  0.82401 -0.606339  0.857525 -0.58315 -0.56174
    ## 864c882c7ffffff  0.53362 -0.75170 -0.437091 -0.077040 -0.18487 -0.10678
    ## 864cd649fffffff  0.52073  0.81772 -1.378265  0.379207 -0.51697 -0.70819
    ## 864cf2407ffffff  0.11223  0.10382  0.068204 -0.043451  0.85691 -0.22087
    ## 864c89877ffffff  0.30395 -0.27052  0.626031 -0.042909  0.64509 -0.12778
    ## 
    ## 
    ## Biplot scores for constraining variables
    ## 
    ##                                               RDA1     RDA2   RDA3 PC1 PC2 PC3
    ## `ESA Built-up`                             -0.9758 -0.13501 -0.172   0   0   0
    ## `ESA Open water`                            0.1785  0.89025 -0.419   0   0   0
    ## `CH-BIO bio01 mean annual air temperature`  0.2450 -0.05395 -0.968   0   0   0

``` r
RsquareAdj(mi_fam_t_rda)$adj.r.squared
```

    ## [1] 0.03575521

``` r
vif.cca(mi_fam_t_rda)
```

    ##                             `ESA Built-up` 
    ##                                   1.052755 
    ##                           `ESA Open water` 
    ##                                   1.249514 
    ## `CH-BIO bio01 mean annual air temperature` 
    ##                                   1.192841

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
# text(mi_fam_t_rda, "species", col="red", cex=0.8, scaling="sp")
arrows(0, 0,
       mi_fam_t_rda_sc1[, 1] * 0.9,
       mi_fam_t_rda_sc1[, 2] * 0.9,
       length = 0,
       lty = 1,
       col = "red"
)
```

![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

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
mc_orig <- readRDS('matriz_de_comunidad_emydidae.RDS')
nrow(mc_orig) #Número de filas, equivale a número de hexágonos con registros de presencia
```

    ## [1] 48

``` r
ncol(mc_orig)  #Número de columnas, equivale a número de especies, riqueza
```

    ## [1] 9

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
Trachemys scripta (Thunberg In Schoepff, 1792)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys scripta elegans (Wied, 1838)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decorata (Barbour & Carr, 1940)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys stejnegeri vicina (Barbour & Carr, 1940)
</td>
</tr>
<tr>
<td style="text-align:left;">
Pseudemys concinna floridana (Le Conte, 1830)
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys stejnegeri Schmidt, 1928
</td>
</tr>
<tr>
<td style="text-align:left;">
Chrysemys Gray, 1844
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys Agassiz, 1857
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decussata (Gray, 1831)
</td>
</tr>
</tbody>
</table>

``` r
unique(word(names(mc_orig), 1, 1)) #Géneros representados
```

    ## [1] "Trachemys" "Pseudemys" "Chrysemys"

``` r
table(word(names(mc_orig), 1, 1)) #Número de especies por género
```

    ## 
    ## Chrysemys Pseudemys Trachemys 
    ##         1         1         7

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
Trachemys stejnegeri vicina (Barbour & Carr, 1940)
</td>
<td style="text-align:right;">
19
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decorata (Barbour & Carr, 1940)
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys scripta (Thunberg In Schoepff, 1792)
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys scripta elegans (Wied, 1838)
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys stejnegeri Schmidt, 1928
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Chrysemys Gray, 1844
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys Agassiz, 1857
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Pseudemys concinna floridana (Le Conte, 1830)
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Trachemys decussata (Gray, 1831)
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

    ##  [1]  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19

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
864cd42efffffff
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
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42c7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd55b7ffffff
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
864cc610fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf3427ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd660fffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864c882c7ffffff
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6c0fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c8994fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd64b7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd42f7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6c4fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0977ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd420fffffff
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
864cd42dfffffff
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
864cd422fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4117ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf20efffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89557ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5cf7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5ca7ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd552fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd5c97ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6077ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4b17ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6107ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd424fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd4277ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc602fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf3017ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd20b7ffffff
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
864cd219fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cf3437ffffff
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
864cd5cafffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd08afffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd425fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc655fffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cc6ccfffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864cd0907ffffff
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
864cf2407ffffff
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
864c89877ffffff
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

    ## [1] 48

``` r
# mi_fam <- mc_orig_seleccionadas[!rowSums(mc_orig_seleccionadas)==0, ] #Elimina filas sin registros
# rowSums(mi_fam) #Riqueza por hexágonos con especies seleccionadas. Comentado por extenso
all(rowSums(mi_fam)>0) #Debe ser TRUE: todos los hexágonos tienen al menos 1 registro
```

    ## [1] TRUE

``` r
ncol(mi_fam) #Riqueza de especies
```

    ## [1] 7

``` r
# Usar nombres cortos o abreviados para las especies
nombres_largos <- colnames(mi_fam)
(colnames(mi_fam) <- make.cepnames(word(colnames(mi_fam), 1, 2)))
```

    ## [1] "Tracscri"   "Tracscri.1" "Tracdeco"   "Tracstej"   "Tracstej.1"
    ## [6] "ChryGray"   "TracAgas"

``` r
(df_equivalencias <- data.frame(
  nombre_original = nombres_largos,
  abreviado = colnames(mi_fam)))
```

    ##                                      nombre_original  abreviado
    ## 1     Trachemys scripta (Thunberg In Schoepff, 1792)   Tracscri
    ## 2             Trachemys scripta elegans (Wied, 1838) Tracscri.1
    ## 3          Trachemys decorata (Barbour & Carr, 1940)   Tracdeco
    ## 4 Trachemys stejnegeri vicina (Barbour & Carr, 1940)   Tracstej
    ## 5                 Trachemys stejnegeri Schmidt, 1928 Tracstej.1
    ## 6                               Chrysemys Gray, 1844   ChryGray
    ## 7                            Trachemys Agassiz, 1857   TracAgas

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

![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

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

    ## $`Trachemys scripta (Thunberg In Schoepff, 1792)`
    ## Spatial correlogram for Trachemys scripta (Thunberg In Schoepff, 1792) (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  2.8e-02    -5.0e-04  1.5e-04              2.3             0.2    
    ## 2 (2017) -3.6e-03    -5.0e-04  8.1e-05             -0.3             1.0    
    ## 3 (2017)  5.1e-02    -5.0e-04  5.7e-05              6.8           1e-10 ***
    ## 4 (2017) -3.6e-03    -5.0e-04  4.6e-05             -0.5             1.0    
    ## 5 (2017) -3.3e-03    -5.0e-04  3.8e-05             -0.5             1.0    
    ## 6 (2017)  1.2e-02    -5.0e-04  3.3e-05              2.1             0.2    
    ## 7 (2017) -3.0e-03    -5.0e-04  3.0e-05             -0.5             1.0    
    ## 8 (2017) -3.0e-03    -5.0e-04  2.7e-05             -0.5             1.0    
    ## 9 (2017) -2.9e-03    -5.0e-04  2.5e-05             -0.5             1.0    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Trachemys scripta elegans (Wied, 1838)`
    ## Spatial correlogram for Trachemys scripta elegans (Wied, 1838) (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  3.3e-01    -5.0e-04  1.4e-04             28.0          <2e-16 ***
    ## 2 (2017)  3.6e-02    -5.0e-04  7.2e-05              4.3           1e-04 ***
    ## 3 (2017) -2.0e-03    -5.0e-04  5.1e-05             -0.2               1    
    ## 4 (2017) -1.9e-03    -5.0e-04  4.0e-05             -0.2               1    
    ## 5 (2017) -1.9e-03    -5.0e-04  3.4e-05             -0.2               1    
    ## 6 (2017) -2.0e-03    -5.0e-04  2.9e-05             -0.3               1    
    ## 7 (2017) -2.0e-03    -5.0e-04  2.6e-05             -0.3               1    
    ## 8 (2017) -2.0e-03    -5.0e-04  2.4e-05             -0.3               1    
    ## 9 (2017) -1.9e-03    -5.0e-04  2.2e-05             -0.3               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Trachemys decorata (Barbour & Carr, 1940)`
    ## Spatial correlogram for Trachemys decorata (Barbour & Carr, 1940) (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  1.5e-01    -5.0e-04  1.6e-04             11.8          <2e-16 ***
    ## 2 (2017)  3.2e-02    -5.0e-04  8.6e-05              3.6           0.002 ** 
    ## 3 (2017)  1.1e-01    -5.0e-04  6.0e-05             14.5          <2e-16 ***
    ## 4 (2017)  2.5e-02    -5.0e-04  4.8e-05              3.6           0.002 ** 
    ## 5 (2017)  3.2e-03    -5.0e-04  4.0e-05              0.6           1.000    
    ## 6 (2017) -5.6e-03    -5.0e-04  3.5e-05             -0.9           1.000    
    ## 7 (2017) -5.1e-03    -5.0e-04  3.1e-05             -0.8           1.000    
    ## 8 (2017) -5.0e-03    -5.0e-04  2.8e-05             -0.9           1.000    
    ## 9 (2017) -5.2e-03    -5.0e-04  2.6e-05             -0.9           1.000    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Trachemys stejnegeri vicina (Barbour & Carr, 1940)`
    ## Spatial correlogram for Trachemys stejnegeri vicina (Barbour & Carr, 1940) (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017)  7.4e-02    -5.0e-04  1.7e-04              5.8           4e-08 ***
    ## 2 (2017)  9.8e-02    -5.0e-04  8.9e-05             10.5          <2e-16 ***
    ## 3 (2017)  5.2e-02    -5.0e-04  6.3e-05              6.6           3e-10 ***
    ## 4 (2017)  4.8e-02    -5.0e-04  5.0e-05              6.9           4e-11 ***
    ## 5 (2017)  2.3e-02    -5.0e-04  4.2e-05              3.6           0.001 ** 
    ## 6 (2017)  2.6e-02    -5.0e-04  3.6e-05              4.4           6e-05 ***
    ## 7 (2017) -8.5e-03    -5.0e-04  3.2e-05             -1.4           0.471    
    ## 8 (2017) -2.1e-03    -5.0e-04  2.9e-05             -0.3           0.995    
    ## 9 (2017) -4.0e-03    -5.0e-04  2.7e-05             -0.7           0.995    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Trachemys stejnegeri Schmidt, 1928`
    ## Spatial correlogram for Trachemys stejnegeri Schmidt, 1928 (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided    
    ## 1 (2017) -2.4e-03    -5.0e-04  1.4e-04             -0.2               1    
    ## 2 (2017) -2.2e-03    -5.0e-04  7.5e-05             -0.2               1    
    ## 3 (2017) -2.2e-03    -5.0e-04  5.3e-05             -0.2               1    
    ## 4 (2017)  3.8e-02    -5.0e-04  4.2e-05              6.0           2e-08 ***
    ## 5 (2017) -2.2e-03    -5.0e-04  3.5e-05             -0.3               1    
    ## 6 (2017) -2.2e-03    -5.0e-04  3.1e-05             -0.3               1    
    ## 7 (2017) -2.1e-03    -5.0e-04  2.7e-05             -0.3               1    
    ## 8 (2017) -2.1e-03    -5.0e-04  2.5e-05             -0.3               1    
    ## 9 (2017) -2.1e-03    -5.0e-04  2.3e-05             -0.3               1    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Chrysemys Gray, 1844`
    ## Spatial correlogram for Chrysemys Gray, 1844 (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided  
    ## 1 (2017) -2.4e-03    -5.0e-04  1.4e-04             -0.2            1.00  
    ## 2 (2017) -2.6e-03    -5.0e-04  7.4e-05             -0.2            1.00  
    ## 3 (2017)  2.2e-02    -5.0e-04  5.2e-05              3.1            0.02 *
    ## 4 (2017) -2.9e-03    -5.0e-04  4.2e-05             -0.4            1.00  
    ## 5 (2017) -2.9e-03    -5.0e-04  3.5e-05             -0.4            1.00  
    ## 6 (2017) -2.9e-03    -5.0e-04  3.0e-05             -0.4            1.00  
    ## 7 (2017) -2.7e-03    -5.0e-04  2.7e-05             -0.4            1.00  
    ## 8 (2017) -2.2e-03    -5.0e-04  2.5e-05             -0.3            1.00  
    ## 9 (2017) -2.2e-03    -5.0e-04  2.3e-05             -0.4            1.00  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## $`Trachemys Agassiz, 1857`
    ## Spatial correlogram for Trachemys Agassiz, 1857 (matriz Hellinger) 
    ## method: Moran's I
    ##          estimate expectation variance standard deviate Pr(I) two sided
    ## 1 (2017) -1.0e-03    -5.0e-04  7.9e-05             -0.1               1
    ## 2 (2017) -1.1e-03    -5.0e-04  4.2e-05             -0.1               1
    ## 3 (2017) -8.7e-04    -5.0e-04  3.0e-05             -0.1               1
    ## 4 (2017) -9.9e-04    -5.0e-04  2.3e-05             -0.1               1
    ## 5 (2017) -1.1e-03    -5.0e-04  2.0e-05             -0.1               1
    ## 6 (2017) -1.3e-03    -5.0e-04  1.7e-05             -0.2               1
    ## 7 (2017) -1.1e-03    -5.0e-04  1.5e-05             -0.1               1
    ## 8 (2017) -1.1e-03    -5.0e-04  1.4e-05             -0.2               1
    ## 9 (2017) -9.7e-04    -5.0e-04  1.3e-05             -0.1               1

``` r
dim_panel <- rev(n2mfrow(ncol(mi_fam_t_all)))
if(interactive()) dev.new()
par(mfrow = dim_panel)
suppressWarnings(invisible(lapply(auto_spp_hel, function(x) plot(x, main = x$var))))
```

![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

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
    ## 1 (2017)  2.7e-01    -5.0e-04  1.7e-04             20.5          <2e-16 ***
    ## 2 (2017)  1.5e-01    -5.0e-04  9.0e-05             16.1          <2e-16 ***
    ## 3 (2017)  1.1e-01    -5.0e-04  6.4e-05             13.6          <2e-16 ***
    ## 4 (2017)  4.7e-02    -5.0e-04  5.1e-05              6.6           2e-10 ***
    ## 5 (2017)  2.0e-02    -5.0e-04  4.3e-05              3.2           0.004 ** 
    ## 6 (2017)  3.1e-02    -5.0e-04  3.7e-05              5.2           8e-07 ***
    ## 7 (2017)  2.2e-02    -5.0e-04  3.3e-05              4.0           3e-04 ***
    ## 8 (2017) -6.3e-03    -5.0e-04  3.0e-05             -1.1           0.291    
    ## 9 (2017) -1.2e-02    -5.0e-04  2.7e-05             -2.2           0.053 .  
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

![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-2.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-3.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-4.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-5.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-6.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-7.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-8.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-9.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-10.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-11.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-12.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-18-13.png)<!-- -->

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

![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-2.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-3.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-4.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-5.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-6.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-7.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-8.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-9.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-10.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-11.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-12.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-13.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-14.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-15.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-16.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-17.png)<!-- -->![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-19-18.png)<!-- -->

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

![](practica-99-tu-manuscrito-3-resultados-emydidae_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

# Referencias
