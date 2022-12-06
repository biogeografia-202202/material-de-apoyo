Práctica 99. Resultados de tu manuscrito.
================
José Ramón Martínez Batlle
26-11-2022

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

## Análisis de agrupamiento

## 

## Técnicas de ordenación

Me basaré en los scripts que comienzan por `to_` de este
[repo](https://github.com/biogeografia-master/scripts-de-analisis-BCI),
los cuales explico en los vídeos de “Técnicas de ordenación” de la lista
de reproducción [“Ecología Numérica con R” de mi
canal](https://www.youtube.com/playlist?list=PLDcT2n8UzsCRDqjqSeqHI1wsiNOqpYmsJ).

### Ordenación restringida

Fijar un directorio de trabajo no es recomendable, mejor trabaja por
proyecto. En cualquier caso, si no quieres o no puedes crear un
proyecto, usa la sentencia que verás abajo, cambiando `TU_DIRECTORIO`
por la ruta del directorio donde tengas almacenados tus datos y tus
scripts.

``` r
# setwd('practicas/')
```

Cargar paquetes.

``` r
library(vegan)
```

    ## Loading required package: permute

    ## Loading required package: lattice

    ## This is vegan 2.5-7

``` r
library(sf)
```

    ## Linking to GEOS 3.10.2, GDAL 3.4.3, PROJ 8.2.0; sf_use_s2() is TRUE

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──

    ## ✔ ggplot2 3.3.5      ✔ purrr   0.3.4 
    ## ✔ tibble  3.1.7      ✔ dplyr   1.0.10
    ## ✔ tidyr   1.2.1      ✔ stringr 1.4.0 
    ## ✔ readr   2.1.3      ✔ forcats 0.5.1

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(tmap)
gh_content <- 'https://raw.githubusercontent.com/'
gh_zonal_stats <- 'https://github.com/geofis/zonal-statistics/raw/main/out/'
repo_analisis <- 'biogeografia-master/scripts-de-analisis-BCI/master'
devtools::source_url(paste0(gh_content, repo_analisis, '/biodata/funciones.R'))
```

    ## ℹ SHA-1 hash of file is b0dc507338fe6a7d927760b5a7a06b2612b753c7

``` r
source(paste0(gh_content, 'biogeografia-202202/material-de-apoyo/master/practicas/', 'train.R'))
```

Carga tu matriz de comunidad, que habrás generado en la práctica 2.

``` r
mc_orig <- readRDS("matriz_de_comunidad.RDS")
nrow(mc_orig)
```

    ## [1] 149

``` r
ncol(mc_orig)
```

    ## [1] 44

``` r
names(mc_orig)
```

    ##  [1] "Coccoloba uvifera (L.) L."                         
    ##  [2] "Antigonon leptopus Hook. & Arn."                   
    ##  [3] "Coccoloba pubescens L."                            
    ##  [4] "Coccoloba diversifolia Jacq."                      
    ##  [5] "Coccoloba P.Browne"                                
    ##  [6] "Coccoloba jimenezii Alain"                         
    ##  [7] "Persicaria punctata (Elliott) Small"               
    ##  [8] "Coccoloba flavescens Jacq."                        
    ##  [9] "Leptogonum domingensis var. molle (Urb.) Brandbyge"
    ## [10] "Leptogonum domingense Benth."                      
    ## [11] "Leptogonum domingensis Benth."                     
    ## [12] "Coccoloba costata Wright"                          
    ## [13] "Coccoloba incrassata Urb."                         
    ## [14] "Coccoloba wrightii Lindau"                         
    ## [15] "Coccoloba picardae Urb."                           
    ## [16] "Rumex acetosella L."                               
    ## [17] "Rumex crispus L."                                  
    ## [18] "Coccoloba leonardii Howard"                        
    ## [19] "Coccoloba ceibensis O.C.Schmidt"                   
    ## [20] "Coccoloba venosa L."                               
    ## [21] "Coccoloba leoganensis Jacq."                       
    ## [22] "Coccoloba microstachya Willd."                     
    ## [23] "Coccoloba krugii Lindau"                           
    ## [24] "Coccoloba buchii O.Schmidt"                        
    ## [25] "Coccoloba fuertesii Urb."                          
    ## [26] "Coccoloba nodosa Lindau"                           
    ## [27] "Coccoloba pauciflora Urb."                         
    ## [28] "Polygonum L."                                      
    ## [29] "Rumex L."                                          
    ## [30] "Persicaria pensylvanica (L.) M.Gómez"              
    ## [31] "Persicaria hydropiperoides (Michx.) Small"         
    ## [32] "Coccoloba samanensis O.C.Schmidt"                  
    ## [33] "Persicaria ferruginea (Wedd.) Soják"               
    ## [34] "Brunnichia ovata (Walter) Shinners"                
    ## [35] "Ruprechtia C.A.Mey."                               
    ## [36] "Coccoloba subcordata Lindau"                       
    ## [37] "Polygonum punctatum Kit., 1864"                    
    ## [38] "Persicaria segetum (Kunth) Small"                  
    ## [39] "Persicaria acuminata (Kunth) M.Gómez"              
    ## [40] "Coccoloba swartzii Meisn."                         
    ## [41] "Persicaria lapathifolia subsp. lapathifolia"       
    ## [42] "Persicaria glabra (Willd.) M.Gómez"                
    ## [43] "Rumex obtusifolius L."                             
    ## [44] "Coccoloba fawcettii O.Schmidt"

``` r
unique(word(names(mc_orig), 1, 1))
```

    ## [1] "Coccoloba"  "Antigonon"  "Persicaria" "Leptogonum" "Rumex"     
    ## [6] "Polygonum"  "Brunnichia" "Ruprechtia"

``` r
table(word(names(mc_orig), 1, 1))
```

    ## 
    ##  Antigonon Brunnichia  Coccoloba Leptogonum Persicaria  Polygonum      Rumex 
    ##          1          1         24          3          8          2          4 
    ## Ruprechtia 
    ##          1

``` r
# ¿En cuántos hexágonos está cada especie?
# Puede usar un único valor mínimo (inclusive) o un rango con dos números (extremos inclusive)
en_cuantos_hex <- 15
# en_cuantos_hex <- 10:20
{if(length(en_cuantos_hex)==1) selector <- en_cuantos_hex:max(colSums(mc_orig)) else
  if(length(en_cuantos_hex)==2)
    selector <- min(en_cuantos_hex):max(en_cuantos_hex) else
      stop('Debes indicar uno o dos valores numéricos')}
selector
```

    ##  [1] 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
    ## [26] 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54

``` r
mi_fam <- mc_orig[, colSums(mc_orig) %in% selector]
ncol(mi_fam)
```

    ## [1] 6

``` r
nombres_largos <- colnames(mi_fam)
(colnames(mi_fam) <- make.cepnames(word(colnames(mi_fam), 1, 2)))
```

    ## [1] "Coccuvif" "Antilept" "Coccpube" "Coccdive" "Cocccost" "Coccwrig"

``` r
(df_equivalencias <- data.frame(
  nombre_original = nombres_largos,
  colnames(mi_fam)))
```

    ##                   nombre_original colnames.mi_fam.
    ## 1       Coccoloba uvifera (L.) L.         Coccuvif
    ## 2 Antigonon leptopus Hook. & Arn.         Antilept
    ## 3          Coccoloba pubescens L.         Coccpube
    ## 4    Coccoloba diversifolia Jacq.         Coccdive
    ## 5        Coccoloba costata Wright         Cocccost
    ## 6       Coccoloba wrightii Lindau         Coccwrig

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
res <- 5 #Resolución H3
tmpfile <- tempfile()
download.file(paste0(gh_zonal_stats, 'all_sources_all_variables_res_', res, '.gpkg'), tmpfile)
za <- st_read(tmpfile, optional = T)
```

    ## Warning in CPL_read_ogr(dsn, layer, query, as.character(options), quiet, : GDAL
    ## Message 1: File /tmp/RtmpQrR7fX/file37cb8843c4d5b5 has GPKG application_id, but
    ## non conformant file extension

    ## Reading layer `all_sources_all_variables_res_5' from data source 
    ##   `/tmp/RtmpQrR7fX/file37cb8843c4d5b5' using driver `GPKG'
    ## Simple feature collection with 335 features and 142 fields
    ## Geometry type: POLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: -72.13564 ymin: 17.40413 xmax: -68.20998 ymax: 20.04043
    ## Geodetic CRS:  WGS 84

``` r
za %>% st_as_sf('geom') %>%
  pivot_longer(cols = -matches('base|hex_id|geom')) %>% 
  tm_shape() + tm_fill(col = 'value') +
  tm_facets(by = 'name', free.scales = T)
```

    ## Variable(s) "value" contains positive and negative values, so midpoint is set to 0. Set midpoint = NA to show the full spectrum of the color palette.
    ## Variable(s) "value" contains positive and negative values, so midpoint is set to 0. Set midpoint = NA to show the full spectrum of the color palette.
    ## Variable(s) "value" contains positive and negative values, so midpoint is set to 0. Set midpoint = NA to show the full spectrum of the color palette.
    ## Variable(s) "value" contains positive and negative values, so midpoint is set to 0. Set midpoint = NA to show the full spectrum of the color palette.

    ## Legend labels were too wide. The labels have been resized to 0.14, 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.16, 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.
    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.
    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.14, 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.
    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.13, 0.12, 0.12, 0.12, 0.12. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.16, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.09, 0.09, 0.09, 0.09, 0.09. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.12, 0.12, 0.12, 0.11, 0.11, 0.11. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.13, 0.12, 0.12, 0.12, 0.12. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.13, 0.12, 0.12, 0.12. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.15, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.16, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.11, 0.11, 0.11, 0.10, 0.09, 0.09. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.15, 0.09, 0.08, 0.08. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.13, 0.13, 0.13, 0.13. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Legend labels were too wide. The labels have been resized to 0.14, 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.14, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

    ## Some legend labels were too wide. These labels have been resized to 0.16, 0.14, 0.14, 0.14. Increase legend.width (argument of tm_layout) to make the legend wider and therefore the labels larger.

![](practica-99-tu-manuscrito-3-resultados_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

``` r
za_intermedia <- za %>%
  st_drop_geometry() %>% 
  select(-matches(c(' base'))) %>% 
  column_to_rownames('hex_id')
env <- za_intermedia[match(rownames(mi_fam), rownames(za_intermedia)), ]
all(rownames(mi_fam) == rownames(env)) #Si es TRUE, sigue adelante
```

    ## [1] TRUE

Se puede probar con un subconunto de variables, generando una matriz
ambiental que seleccione variables según el grupo al que pertenecen, con
ayuda del sufijo.

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

    ## 
    ## Attaching package: 'foreach'

    ## The following objects are masked from 'package:purrr':
    ## 
    ##     accumulate, when

    ## 
    ## Attaching package: 'caret'

    ## The following object is masked from 'package:purrr':
    ## 
    ##     lift

    ## The following object is masked from 'package:vegan':
    ## 
    ##     tolerance

    ## Warning in leaps.setup(x, y, wt = weights, nbest = nbest, nvmax = nvmax, : 2
    ## linear dependencies found

    ## Reordering variables and trying again:

    ## Warning in leaps.setup(x, y, wt = weights, nbest = nbest, nvmax = nvmax, : 2
    ## linear dependencies found

    ## Reordering variables and trying again:

    ## Warning in leaps.setup(x, y, wt = weights, nbest = nbest, nvmax = nvmax, : 2
    ## linear dependencies found

    ## Reordering variables and trying again:

    ## Warning in leaps.setup(x, y, wt = weights, nbest = nbest, nvmax = nvmax, : 2
    ## linear dependencies found

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
    ## 1  ( 1 ) " "         " "             " "             " "           
    ## 2  ( 1 ) " "         " "             " "             " "           
    ## 3  ( 1 ) " "         "*"             " "             " "           
    ## 4  ( 1 ) " "         "*"             "*"             " "           
    ## 5  ( 1 ) " "         "*"             "*"             "*"           
    ## 6  ( 1 ) "*"         "*"             "*"             "*"           
    ##          `ESA Built-up` `ESA Barren / sparse vegetation` `ESA Open water`
    ## 1  ( 1 ) " "            " "                              " "             
    ## 2  ( 1 ) "*"            " "                              " "             
    ## 3  ( 1 ) "*"            " "                              " "             
    ## 4  ( 1 ) "*"            " "                              " "             
    ## 5  ( 1 ) "*"            " "                              " "             
    ## 6  ( 1 ) "*"            "*"                              " "             
    ##          `ESA Herbaceous wetland` `ESA Mangroves`
    ## 1  ( 1 ) " "                      " "            
    ## 2  ( 1 ) " "                      " "            
    ## 3  ( 1 ) " "                      " "            
    ## 4  ( 1 ) " "                      " "            
    ## 5  ( 1 ) " "                      " "            
    ## 6  ( 1 ) " "                      " "            
    ##          `CH-BIO bio01 mean annual air temperature`
    ## 1  ( 1 ) " "                                       
    ## 2  ( 1 ) " "                                       
    ## 3  ( 1 ) " "                                       
    ## 4  ( 1 ) " "                                       
    ## 5  ( 1 ) " "                                       
    ## 6  ( 1 ) " "                                       
    ##          `CH-BIO bio02 mean diurnal air temperature range`
    ## 1  ( 1 ) "*"                                              
    ## 2  ( 1 ) "*"                                              
    ## 3  ( 1 ) "*"                                              
    ## 4  ( 1 ) " "                                              
    ## 5  ( 1 ) " "                                              
    ## 6  ( 1 ) " "                                              
    ##          `CH-BIO bio03 isothermality` `CH-BIO bio04 temperature seasonality`
    ## 1  ( 1 ) " "                          " "                                   
    ## 2  ( 1 ) " "                          " "                                   
    ## 3  ( 1 ) " "                          " "                                   
    ## 4  ( 1 ) " "                          " "                                   
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
    ## 4  ( 1 ) "*"                                                                   
    ## 5  ( 1 ) "*"                                                                   
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
    ## 5  ( 1 ) " "                                                                   
    ## 6  ( 1 ) " "                                                                   
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
    ##   nvmax      RMSE  Rsquared       MAE      RMSESD RsquaredSD       MAESD
    ## 1     3 0.5807513 0.1173287 0.5071039 0.018815389 0.04807114 0.021826713
    ## 2     4 0.5852752 0.1108160 0.5075534 0.005334268 0.06577334 0.013658919
    ## 3     5 0.5682681 0.1542786 0.4812342 0.018674183 0.05648562 0.006333601
    ## 4     6 0.5757097 0.1374158 0.4840508 0.020000723 0.03847769 0.008474150
    ## 5     7 0.5713153 0.1563021 0.4928490 0.014168506 0.06888058 0.005817602
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

    ## [1] "`ESA Shrubland`"                                                       
    ## [2] "`ESA Grassland`"                                                       
    ## [3] "`ESA Cropland`"                                                        
    ## [4] "`ESA Built-up`"                                                        
    ## [5] "`CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`"

``` r
mi_fam_t_rda <- rda(mi_fam_t_sel %>% rename_all(~ gsub('^ESPECIE ', '', .)) ~ .,
                    env %>% select_at(all_of(gsub('\\`', '', covar))), scale = T)
summary(mi_fam_t_rda)
```

    ## 
    ## Call:
    ## rda(formula = mi_fam_t_sel %>% rename_all(~gsub("^ESPECIE ",      "", .)) ~ `ESA Shrubland` + `ESA Grassland` + `ESA Cropland` +      `ESA Built-up` + `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`,      data = env %>% select_at(all_of(gsub("\\`", "", covar))),      scale = T) 
    ## 
    ## Partitioning of correlations:
    ##               Inertia Proportion
    ## Total          6.0000     1.0000
    ## Constrained    0.6102     0.1017
    ## Unconstrained  5.3898     0.8983
    ## 
    ## Eigenvalues, and their contribution to the correlations 
    ## 
    ## Importance of components:
    ##                          RDA1    RDA2    RDA3     RDA4     RDA5    PC1    PC2
    ## Eigenvalue            0.37271 0.14433 0.06238 0.018377 0.012427 1.1354 1.0408
    ## Proportion Explained  0.06212 0.02405 0.01040 0.003063 0.002071 0.1892 0.1735
    ## Cumulative Proportion 0.06212 0.08617 0.09657 0.099632 0.101703 0.2909 0.4644
    ##                          PC3    PC4    PC5     PC6
    ## Eigenvalue            0.9774 0.9187 0.8328 0.48474
    ## Proportion Explained  0.1629 0.1531 0.1388 0.08079
    ## Cumulative Proportion 0.6273 0.7804 0.9192 1.00000
    ## 
    ## Accumulated constrained eigenvalues
    ## Importance of components:
    ##                         RDA1   RDA2    RDA3    RDA4    RDA5
    ## Eigenvalue            0.3727 0.1443 0.06238 0.01838 0.01243
    ## Proportion Explained  0.6108 0.2365 0.10223 0.03012 0.02036
    ## Cumulative Proportion 0.6108 0.8473 0.94952 0.97964 1.00000
    ## 
    ## Scaling 2 for species and site scores
    ## * Species are scaled proportional to eigenvalues
    ## * Sites are unscaled: weighted dispersion equal on all dimensions
    ## * General scaling constant of scores:  5.458876 
    ## 
    ## 
    ## Species scores
    ## 
    ##             RDA1    RDA2     RDA3     RDA4     RDA5     PC1
    ## Coccuvif -1.0422 -0.1839  0.05258  0.16790 -0.03508  0.1891
    ## Antilept -0.3580  0.1956 -0.36238 -0.03176 -0.10080 -0.7922
    ## Coccpube -0.3098 -0.2349 -0.04542 -0.20087 -0.09595 -0.6835
    ## Coccdive -0.3832 -0.4027 -0.13762 -0.08406  0.17466 -1.5411
    ## Cocccost  0.1658 -0.4791  0.25099 -0.01922 -0.09803 -0.2920
    ## Coccwrig  0.6053 -0.4448 -0.30290  0.11953 -0.03169  1.4311
    ## 
    ## 
    ## Site scores (weighted sums of species scores)
    ## 
    ##                    RDA1     RDA2     RDA3     RDA4    RDA5       PC1
    ## 854cf243fffffff -1.2061  0.23684 -2.94059  -0.4880  1.1875 -0.668183
    ## 854cf24bfffffff -1.2461  0.45145 -2.48306  -4.3902 -8.0915 -0.503155
    ## 854cc2d3fffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.339626
    ## 854cd423fffffff -0.1609 -1.36793 -1.26874  -1.1320 -4.8545  0.410082
    ## 854cd5b7fffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.337481
    ## 854cd427fffffff -1.3521 -0.39269 -2.78609  -5.3602 -2.3002 -0.243486
    ## 854cd42ffffffff -1.3521 -0.39269 -2.78609  -5.3602 -2.3002 -0.205133
    ## 854cd58ffffffff -1.2061  0.23684 -2.94059  -0.4880  1.1875 -0.660623
    ## 854cf313fffffff -1.1079  1.36461 -2.72488   1.6227 -5.2329 -0.231360
    ## 854cc60ffffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.293071
    ## 854cf3cffffffff -0.2636 -1.27897  3.09995   2.1459 -4.3855  0.115375
    ## 854cc613fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.359934
    ## 854cd553fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.424768
    ## 854cf20ffffffff -1.1407 -1.29760 -0.33167  -5.2283  1.3784 -0.638468
    ## 854c8997fffffff -0.2636 -1.27897  3.09995   2.1459 -4.3855  0.089789
    ## 854cd623fffffff -0.5168 -1.92164  1.81537  -0.0608  1.8794 -0.401675
    ## 854cf353fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.256645
    ## 854cd28bfffffff -1.2061  0.23684 -2.94059  -0.4880  1.1875 -0.658866
    ## 854cd51bfffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.320686
    ## 854cd0cffffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.311563
    ## 85672527fffffff -1.0278 -0.51468  0.47037  -4.1829 -4.9991 -0.066417
    ## 856725a7fffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -1.010279
    ## 854cd083fffffff -1.1079  1.36461 -2.72488   1.6227 -5.2329 -0.173265
    ## 854cf26ffffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.241674
    ## 854cd2dbfffffff  0.1067  0.01778 -0.84814  -2.1256 -8.5047 -0.613854
    ## 854cd513fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.384308
    ## 854c8993fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.210202
    ## 854c8833fffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.323393
    ## 854cf32ffffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.173791
    ## 854cd5b3fffffff -1.2061  0.23684 -2.94059  -0.4880  1.1875 -0.496504
    ## 854c890ffffffff -0.3836  2.16182 -4.53230  -2.0118 -6.3628 -0.564578
    ## 854cf373fffffff -0.2636 -1.27897  3.09995   2.1459 -4.3855  0.083899
    ## 854cd293fffffff -1.1079  1.36461 -2.72488   1.6227 -5.2329 -0.141746
    ## 854cc6c7fffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.365518
    ## 854cd4a7fffffff -1.1407 -1.29760 -0.33167  -5.2283  1.3784 -0.613434
    ## 854c898ffffffff  0.2213 -0.86367 -1.23766   5.6131 -1.2683  0.694605
    ## 854c89c7fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.167084
    ## 854c8913fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.191884
    ## 854c8953fffffff -0.3836  2.16182 -4.53230  -2.0118 -6.3628 -0.532107
    ## 854cd667fffffff -1.2061  0.23684 -2.94059  -0.4880  1.1875 -0.614178
    ## 854c882ffffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.184767
    ## 854c88affffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.287366
    ## 854cc657fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.262038
    ## 854cc6c3fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.260139
    ## 854c89abfffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.245995
    ## 854cf31bfffffff -0.5168 -1.92164  1.81537  -0.0608  1.8794 -0.426953
    ## 854cc6cffffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.208575
    ## 854cd5cbfffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.225330
    ## 854cd2cbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.112205
    ## 854cc617fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.308132
    ## 854cf247fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.184633
    ## 854cc66bfffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.660712
    ## 854cf333fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.284438
    ## 854c89a3fffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.119624
    ## 854c89d7fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.223110
    ## 854cd40bfffffff  0.8103 -1.57677  3.70526  -1.2719 -5.1644 -0.089034
    ## 854c883bfffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.316744
    ## 854cd59bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.114035
    ## 854cf347fffffff  0.8103 -1.57677  3.70526  -1.2719 -5.1644  0.003910
    ## 85672537fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.158744
    ## 854cd5c3fffffff  0.5916  0.43309 -5.18575   1.3416 -5.3874  0.112142
    ## 854cd453fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.719337
    ## 854c89bbfffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.905320
    ## 854cd643fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.094822
    ## 854cd44ffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.273289
    ## 854cd44bfffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.594581
    ## 85672597fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.100822
    ## 854cd653fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.059688
    ## 854c8927fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.814294
    ## 854cd43bfffffff  0.1867 -1.86151  2.34711  -7.9312 -8.2708 -0.393720
    ## 854cf263fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.059038
    ## 854cd583fffffff -0.5284 -1.36007 -0.84282  -9.4809  2.4800 -0.952023
    ## 854cf233fffffff  0.8103 -1.57677  3.70526  -1.2719 -5.1644 -0.042334
    ## 854cd6bbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.056949
    ## 854cc6cbfffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.931069
    ## 854cd407fffffff -0.2704 -0.49591 -0.01352 -10.2222 -6.0322 -0.385454
    ## 854cc67bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.180721
    ## 854c894bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.143386
    ## 854cd4cbfffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.865048
    ## 85672587fffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.721773
    ## 854cd0d7fffffff -0.6084  0.51922 -4.03808  -3.6753  2.2462 -0.934516
    ## 854cd42bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.237929
    ## 854cd0d3fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.912768
    ## 854cf303fffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.701246
    ## 854cd46bfffffff  0.2358 -2.12436  1.78675  -3.1521  3.0936 -0.718074
    ## 854cd6b7fffffff  0.8103 -1.57677  3.70526  -1.2719 -5.1644 -0.372184
    ## 854cd687fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.100578
    ## 854cd0c3fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.099964
    ## 854cd29bfffffff  0.2358 -2.12436  1.78675  -3.1521  3.0936 -0.714513
    ## 854cd253fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.086274
    ## 854cd4a3fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.142241
    ## 854cf30ffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.190975
    ## 854c896ffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.162163
    ## 854cd693fffffff -0.2704 -0.49591 -0.01352 -10.2222 -6.0322 -0.796087
    ## 854cd66bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.024284
    ## 854c89b7fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.821848
    ## 854cf36bfffffff  0.1867 -1.86151  2.34711  -7.9312 -8.2708 -0.364857
    ## 854cd5bbfffffff -0.5284 -1.36007 -0.84282  -9.4809  2.4800 -0.764545
    ## 854cf37bfffffff  0.8103 -1.57677  3.70526  -1.2719 -5.1644 -0.040804
    ## 854cd2d3fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.037629
    ## 854cd243fffffff -0.2704 -0.49591 -0.01352 -10.2222 -6.0322 -0.330687
    ## 854cd093fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.321459
    ## 854cd457fffffff  1.4358 -2.21050  0.63908   1.8649 -4.5401  0.553614
    ## 854cd4dbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.199535
    ## 854cc65bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.081474
    ## 854cd247fffffff -0.2704 -0.49591 -0.01352 -10.2222 -6.0322 -0.288533
    ## 854cd633fffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.861816
    ## 854c89b3fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.049022
    ## 854cf273fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.105922
    ## 854cd473fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.799367
    ## 854cd63bfffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.828189
    ## 854c8957fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.110013
    ## 854c8baffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.063902
    ## 854c8823fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.127218
    ## 854cd0c7fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.324898
    ## 854c890bfffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.760473
    ## 856725b7fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.080266
    ## 856725a3fffffff  1.4358 -2.21050  0.63908   1.8649 -4.5401  0.351959
    ## 854cd437fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.125774
    ## 854cd6a7fffffff  0.8103 -1.57677  3.70526  -1.2719 -5.1644 -0.138955
    ## 856725affffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.071401
    ## 854cf343fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.963911
    ## 854cd46ffffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.808561
    ## 854cd64ffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.208824
    ## 854cd40ffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.089289
    ## 854cc673fffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.229485
    ## 854cc653fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.092822
    ## 854cd697fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.626801
    ## 854cd447fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.007205
    ## 854cc6dbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.177965
    ## 854cd4bbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.121218
    ## 854cd21bfffffff -0.9073  0.32793  1.05115   4.0290 -0.5374  0.293860
    ## 854cc603fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.250756
    ## 854cd443fffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.994220
    ## 856725bbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.019773
    ## 854cd64bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.136221
    ## 854cd08bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.223991
    ## 854cd6a3fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.077129
    ## 854cd6affffffff -0.9788 -0.77753 -0.08999   0.5962  6.3654 -0.380697
    ## 854cc643fffffff -0.3836  2.16182 -4.53230  -2.0118 -6.3628 -0.540265
    ## 854cd2d7fffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.015789
    ## 854c899bfffffff -0.2010 -0.86763 -0.80599  -3.4635 10.0396 -0.789770
    ## 854cd0dbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.218179
    ## 854cf34ffffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.173221
    ## 854c89cbfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.046270
    ## 854c895bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538  0.138088
    ## 854cd647fffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.929816
    ## 854cd65bfffffff  0.4710  0.95580  0.63576  -0.4740  0.8538 -0.117562
    ## 854cd45bfffffff  1.4961 -0.98944 -2.42905   3.6315 -0.7561  0.635207
    ## 
    ## 
    ## Site constraints (linear combinations of constraining variables)
    ## 
    ##                       RDA1      RDA2      RDA3      RDA4      RDA5       PC1
    ## 854cf243fffffff -0.0859144 -0.386083  0.181773 -0.068542 -0.063075 -0.668183
    ## 854cf24bfffffff -0.0081223  0.078996  0.031198 -0.068305 -0.318820 -0.503155
    ## 854cc2d3fffffff -0.3787752 -0.477028  0.494386  0.136983  0.111267 -0.339626
    ## 854cd423fffffff -0.3279544  0.365418 -0.079875 -0.122855 -0.394395  0.410082
    ## 854cd5b7fffffff -0.3837882 -0.407933  0.451755  0.110075  0.078652 -0.337481
    ## 854cd427fffffff -1.4278472 -0.112618 -1.893520 -2.070217 -0.392994 -0.243486
    ## 854cd42ffffffff -1.4829411 -0.381373 -1.972395 -2.226727 -0.285461 -0.205133
    ## 854cd58ffffffff -0.3245330  0.297802 -0.181624  0.530986 -0.143941 -0.660623
    ## 854cf313fffffff -0.1235501 -0.251376  0.313616  0.080991 -0.083322 -0.231360
    ## 854cc60ffffffff -0.3284428 -0.174228  0.346906  0.082950 -0.040866  0.293071
    ## 854cf3cffffffff -0.2483606 -0.426424  0.351918  0.045264  0.027208  0.115375
    ## 854cc613fffffff -0.4735554 -0.327219  0.171901 -0.126349 -0.011651  0.359934
    ## 854cd553fffffff -0.6182227 -0.209857 -0.132720 -0.389808 -0.094485  0.424768
    ## 854cf20ffffffff -0.0699476 -0.239007  0.258791  0.039497 -0.114754 -0.638468
    ## 854c8997fffffff -0.1255625 -0.209918  0.036570 -0.160110 -0.159589  0.089789
    ## 854cd623fffffff -0.1655980 -0.322413  0.310311  0.051167  0.310330 -0.401675
    ## 854cf353fffffff -0.1987004 -0.354227  0.374359  0.092236 -0.010103  0.256645
    ## 854cd28bfffffff -0.1373075 -0.507972  0.351500  0.043711  0.039682 -0.658866
    ## 854cd51bfffffff -0.4284730 -0.423412  0.409911  0.079490  0.080512 -0.320686
    ## 854cd0cffffffff -0.3094021 -0.068784  0.456810 -0.095251  0.375523  0.311563
    ## 85672527fffffff -0.4485983 -0.220168  0.544239  0.072352  0.238531 -0.066417
    ## 856725a7fffffff  0.9126042 -0.403173 -0.105287 -0.330676 -0.108878 -1.010279
    ## 854cd083fffffff -0.3212241 -0.157166  0.168141  0.101979 -0.050596 -0.173265
    ## 854cf26ffffffff -0.0512091 -0.321895 -0.110310 -0.258208 -0.154134  0.241674
    ## 854cd2dbfffffff  0.6155765 -0.103568  0.059302 -0.314735  0.064701 -0.613854
    ## 854cd513fffffff -0.5729043 -0.056972 -0.169271 -0.119319 -0.109291  0.384308
    ## 854c8993fffffff -0.0814702 -0.003363  0.259734  0.097475 -0.212459  0.210202
    ## 854c8833fffffff -0.3718987 -0.203859  0.385549 -0.080915  0.223379 -0.323393
    ## 854cf32ffffffff -0.1401358  1.109566 -0.157165  0.391666 -0.665530  0.173791
    ## 854cd5b3fffffff -0.6440978  0.160817 -0.339567 -0.212907 -0.215013 -0.496504
    ## 854c890ffffffff  0.1315721  0.354484  0.079272  0.061410 -0.431448 -0.564578
    ## 854cf373fffffff -0.2255963 -0.114355  0.096003  0.252937 -0.065746  0.083899
    ## 854cd293fffffff -0.3986417 -0.477115  0.457880  0.099270  0.109792 -0.141746
    ## 854cc6c7fffffff -0.3240014 -0.099419  0.354878  0.117628 -0.099967 -0.365518
    ## 854cd4a7fffffff -0.2173990  0.180838  0.262742  0.136995 -0.262728 -0.613434
    ## 854c898ffffffff  0.0557128 -0.537874 -0.362743  0.556343  0.379846  0.694605
    ## 854c89c7fffffff  0.1791866  0.800793 -0.168228 -0.161518  0.698722  0.167084
    ## 854c8913fffffff -0.2543179 -0.829835 -1.673423  1.535111  0.999658  0.191884
    ## 854c8953fffffff  0.1194520  1.050269 -0.115279 -0.061824  0.657547 -0.532107
    ## 854cd667fffffff -0.3271062 -0.181294 -0.339143  0.248891  0.302514 -0.614178
    ## 854c882ffffffff -0.1708694  0.158569 -0.634737  0.936380  0.530629  0.184767
    ## 854c88affffffff -0.1880124 -0.042617  0.524296 -0.195066  0.548928  0.287366
    ## 854cc657fffffff -0.3110521  0.877620 -0.585811  0.077693 -0.580470  0.262038
    ## 854cc6c3fffffff -0.2796785 -0.078738  0.212660  0.270342 -0.068954  0.260139
    ## 854c89abfffffff -0.1641752  0.160605 -0.509607  0.048646 -0.034902  0.245995
    ## 854cf31bfffffff -0.1127934 -0.311304  0.292026  0.044328 -0.066286 -0.426953
    ## 854cc6cffffffff -0.1570234  0.509262  0.166544  0.222342 -0.417451  0.208575
    ## 854cd5cbfffffff -0.2567842  0.983806 -0.081539  0.240815 -0.620271  0.225330
    ## 854cd2cbfffffff  0.2821395  0.450603  0.445121 -0.693789  1.039221  0.112205
    ## 854cc617fffffff -0.3687878 -0.422627  0.466024  0.125548  0.080301  0.308132
    ## 854cf247fffffff  0.0219547 -0.044106  0.145769  0.042956 -0.230244  0.184633
    ## 854cc66bfffffff -0.3679692 -0.479480  0.491159  0.136112  0.108321 -0.660712
    ## 854cf333fffffff -0.3101098 -0.261799  0.360464  0.141667 -0.012700  0.284438
    ## 854c89a3fffffff -0.7274081 -0.314030 -1.253468 -1.161610 -0.209260 -0.119624
    ## 854c89d7fffffff -0.2015101  0.644110  0.206177  0.178679 -0.429058  0.223110
    ## 854cd40bfffffff -0.0277946 -0.157510 -0.073296  0.239917 -0.082241 -0.089034
    ## 854c883bfffffff -0.3929810 -0.472987  0.510065  0.134179  0.136627  0.316744
    ## 854cd59bfffffff -0.2076399  0.776535 -0.052188  0.489526 -0.450239  0.114035
    ## 854cf347fffffff -0.2728102 -0.500307  0.446691  0.108054  0.086483  0.003910
    ## 85672537fffffff  0.0098281  0.483141  0.299867 -0.419680  0.584398  0.158744
    ## 854cd5c3fffffff -0.0936645  0.001922 -1.644707  2.036786  0.463411  0.112142
    ## 854cd453fffffff  0.6976558 -0.510964 -0.122103 -0.135621 -0.213775  0.719337
    ## 854c89bbfffffff -0.0377121 -0.346556 -0.528388  0.370243  0.118618  0.905320
    ## 854cd643fffffff  0.6924350  0.094145 -0.136415 -0.102395 -0.486345 -0.094822
    ## 854cd44ffffffff  1.4201766 -0.640502 -0.398194 -0.391766 -0.401576 -0.273289
    ## 854cd44bfffffff  1.0447121 -0.580002 -0.912745  0.177217 -0.129196  0.594581
    ## 85672597fffffff  0.6576550  0.408505 -0.216865 -0.008862 -0.617364 -0.100822
    ## 854cd653fffffff  0.4369468  0.688622 -0.415296  0.255379 -0.566799 -0.059688
    ## 854c8927fffffff  0.3637266 -0.170372 -0.082444 -0.162826 -0.312065  0.814294
    ## 854cd43bfffffff -0.0470335 -0.167220  0.263824  0.068140 -0.149271 -0.393720
    ## 854cf263fffffff  0.2104328 -0.373961  0.175088 -0.020790 -0.133816  0.059038
    ## 854cd583fffffff -0.1834948  0.265241 -0.965666  1.400871  0.126541 -0.952023
    ## 854cf233fffffff -0.1417883 -0.167684  0.282911  0.068139 -0.124758 -0.042334
    ## 854cd6bbfffffff  0.5812287  0.247237 -0.072598 -0.148332 -0.367888 -0.056949
    ## 854cc6cbfffffff -0.1207154  0.063382  0.283742  0.128633 -0.230912  0.931069
    ## 854cd407fffffff -0.1210176 -0.209546  0.258209  0.037029 -0.115585 -0.385454
    ## 854cc67bfffffff -0.2639085  0.063065  0.332424  0.133125 -0.131662  0.180721
    ## 854c894bfffffff -0.1776595  0.390613  0.222380  0.138903 -0.356441  0.143386
    ## 854cd4cbfffffff  0.1774229 -0.321242  0.133074 -0.039144 -0.155507  0.865048
    ## 85672587fffffff -0.0447540  0.599604  0.335863 -0.315382  0.641612 -0.721773
    ## 854cd0d7fffffff  0.0146120 -0.182011  0.269977 -0.134002  0.139537 -0.934516
    ## 854cd42bfffffff -0.3469597 -0.008016 -0.113588 -0.212151 -0.223808  0.237929
    ## 854cd0d3fffffff  0.0531847 -0.270682  0.286606 -0.090645  0.124538  0.912768
    ## 854cf303fffffff -0.2165812 -0.481141  0.383629  0.067444  0.051834 -0.701246
    ## 854cd46bfffffff  0.2433769 -0.210215 -0.002666 -0.051290 -0.215387 -0.718074
    ## 854cd6b7fffffff  1.0354724 -0.275377 -0.275145 -0.240776 -0.357479 -0.372184
    ## 854cd687fffffff  0.6979214  0.347355 -0.163541 -0.120877 -0.549206 -0.100578
    ## 854cd0c3fffffff  0.2787674  0.786847  0.170514 -0.589338  1.040539  0.099964
    ## 854cd29bfffffff  0.2531847 -0.471970  0.178650 -0.048006 -0.081423 -0.714513
    ## 854cd253fffffff  0.4903893  0.964474  0.487466 -1.069661  1.523244  0.086274
    ## 854cd4a3fffffff -0.1476365  0.223304  0.202065  0.095099 -0.313433  0.142241
    ## 854cf30ffffffff -0.2682231 -0.442432  0.352686  0.190301  0.084777  0.190975
    ## 854c896ffffffff  0.9940860 -0.397174 -0.215740 -0.239742 -0.369824 -0.162163
    ## 854cd693fffffff  1.3805588 -0.681713 -0.360256 -0.393721 -0.345393 -0.796087
    ## 854cd66bfffffff  0.5686647  0.614454  0.005157 -0.570932  1.416832  0.024284
    ## 854c89b7fffffff  0.3240835 -0.324556  0.087043 -0.061299 -0.197922  0.821848
    ## 854cf36bfffffff -0.1541778 -0.159895  0.331174  0.112851 -0.113800 -0.364857
    ## 854cd5bbfffffff -0.4485592 -0.117104  0.377649  0.122845 -0.051367 -0.764545
    ## 854cf37bfffffff -0.1236444 -0.435069  0.360884  0.073028  0.006434 -0.040804
    ## 854cd2d3fffffff  0.6441508 -0.293493  0.071778 -0.340042  0.134876 -0.037629
    ## 854cd243fffffff -0.1714690  0.044039  0.541303 -0.255249  0.631772 -0.330687
    ## 854cd093fffffff -0.5205356 -0.263212 -0.234231 -0.475259 -0.122481  0.321459
    ## 854cd457fffffff  0.0292072 -0.455384 -0.218464 -0.136939 -0.061149  0.553614
    ## 854cd4dbfffffff -0.2245998 -0.175638 -0.371592 -0.114042 -0.108751  0.199535
    ## 854cc65bfffffff -0.0980481  0.948650 -0.080809  0.410641 -0.590890  0.081474
    ## 854cd247fffffff -0.4506725 -0.427174  0.525362  0.160875  0.116801 -0.288533
    ## 854cd633fffffff  0.2749382 -0.110894 -1.158917  0.746966  1.799415 -0.861816
    ## 854c89b3fffffff  0.2304762 -0.251377  0.141644 -0.016689 -0.199861  0.049022
    ## 854cf273fffffff  0.0490543 -0.357025  0.230790  0.006955 -0.090930  0.105922
    ## 854cd473fffffff  0.3925812 -0.260222  0.059127 -0.066317 -0.246960  0.799367
    ## 854cd63bfffffff  0.5643756  0.420272  0.313615 -0.769987  0.953327  0.828189
    ## 854c8957fffffff  0.0068291  0.586480  0.022049 -0.013597  0.066608  0.110013
    ## 854c8baffffffff  0.0961742  0.609076  0.071900  0.089676 -0.287186  0.063902
    ## 854c8823fffffff -0.0742521  0.315895 -0.125280  0.282978  0.586586  0.127218
    ## 854cd0c7fffffff -0.3721750  0.054729  0.028656 -0.082418  0.184551  0.324898
    ## 854c890bfffffff -0.0534033  0.136271  0.191571  0.009090 -0.169656 -0.760473
    ## 856725b7fffffff  0.3769967  0.930712  0.188512 -0.710259  1.110467  0.080266
    ## 856725a3fffffff  0.7189253 -0.051926 -0.108563 -0.247243  0.120370  0.351959
    ## 854cd437fffffff -0.2174386  0.695442 -0.150973  0.420511 -0.423354  0.125774
    ## 854cd6a7fffffff  0.2459734 -0.189677  0.185680 -0.115836  0.008084 -0.138955
    ## 856725affffffff  0.6349560 -0.048566 -0.085580 -0.113465 -0.373469 -0.071401
    ## 854cf343fffffff -0.2683499 -0.352343  0.017298  0.466918  0.137697  0.963911
    ## 854cd46ffffffff  0.3905439 -0.502522  0.109320 -0.084082 -0.123318  0.808561
    ## 854cd64ffffffff -0.1912676  0.112067  0.332081 -0.220429  0.617115  0.208824
    ## 854cd40ffffffff  0.0653017 -0.068861  0.168979  0.047411 -0.230772  0.089289
    ## 854cc673fffffff -0.1852456  0.382665  0.253989  0.155134 -0.233688  0.229485
    ## 854cc653fffffff -0.0586823  0.725732  0.147550  0.182763 -0.566234  0.092822
    ## 854cd697fffffff  0.9444410 -0.008005 -0.346494 -0.092374 -0.477555  0.626801
    ## 854cd447fffffff  0.4012604 -0.443371  0.093240 -0.077102 -0.161643  0.007205
    ## 854cc6dbfffffff -0.2689450  0.034579  0.334087  0.177185 -0.163824  0.177965
    ## 854cd4bbfffffff -0.1330479  0.495462  0.160981  0.201241 -0.422946  0.121218
    ## 854cd21bfffffff -0.3661463 -0.337826  0.280944  0.289259  0.133407  0.293860
    ## 854cc603fffffff -0.4302270  0.354911 -0.080454 -0.183893 -0.360651  0.250756
    ## 854cd443fffffff  0.8119221 -0.591683 -0.148643 -0.157723 -0.204268 -0.994220
    ## 856725bbfffffff  0.3818600  0.877636 -0.015147 -0.270654  0.263129  0.019773
    ## 854cd64bfffffff  0.0002508  0.166045  0.303928 -0.180356  0.220687  0.136221
    ## 854cd08bfffffff -0.3832302 -0.130390 -0.168381  0.162029  0.002739  0.223991
    ## 854cd6a3fffffff  0.6749221  0.128469 -0.095835 -0.194175 -0.292196 -0.077129
    ## 854cd6affffffff -0.1917925 -0.158533 -0.187924  0.028644  0.388104 -0.380697
    ## 854cc643fffffff -0.1112260  1.298963 -0.038360  0.338606 -0.791539 -0.540265
    ## 854cd2d7fffffff  0.3726863 -0.317296  0.101219 -0.094838 -0.141404  0.015789
    ## 854c899bfffffff -0.1060732  0.616255 -0.142657  0.382684 -0.399395 -0.789770
    ## 854cd0dbfffffff -0.3852674 -0.408470  0.028722  0.411210  0.469552  0.218179
    ## 854cf34ffffffff -0.1988537 -0.344415  0.385479  0.104639 -0.011793  0.173221
    ## 854c89cbfffffff  0.2771632  0.361618 -0.873803  0.374861  1.732864  0.046270
    ## 854c895bfffffff -0.2059069  1.035678  0.166041  0.193695 -0.298001  0.138088
    ## 854cd647fffffff  0.0017797  0.047339  0.108612 -0.144089  0.164374  0.929816
    ## 854cd65bfffffff  0.7025434  0.573012 -0.283392 -0.028129 -0.712919 -0.117562
    ## 854cd45bfffffff  0.9133502 -0.584862 -0.588726  0.148552 -0.123056  0.635207
    ## 
    ## 
    ## Biplot scores for constraining variables
    ## 
    ##                                                                             RDA1
    ## `ESA Shrubland`                                                         0.218485
    ## `ESA Grassland`                                                         0.029281
    ## `ESA Cropland`                                                         -0.006907
    ## `ESA Built-up`                                                         -0.513619
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter` -0.836855
    ##                                                                            RDA2
    ## `ESA Shrubland`                                                         0.43076
    ## `ESA Grassland`                                                         0.74780
    ## `ESA Cropland`                                                          0.05313
    ## `ESA Built-up`                                                         -0.07708
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`  0.29785
    ##                                                                            RDA3
    ## `ESA Shrubland`                                                         0.03358
    ## `ESA Grassland`                                                        -0.29055
    ## `ESA Cropland`                                                         -0.64821
    ## `ESA Built-up`                                                         -0.62216
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`  0.19282
    ##                                                                           RDA4
    ## `ESA Shrubland`                                                        -0.2593
    ## `ESA Grassland`                                                         0.3352
    ## `ESA Cropland`                                                          0.6028
    ## `ESA Built-up`                                                         -0.5770
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`  0.1801
    ##                                                                           RDA5
    ## `ESA Shrubland`                                                         0.8357
    ## `ESA Grassland`                                                        -0.4931
    ## `ESA Cropland`                                                          0.4622
    ## `ESA Built-up`                                                         -0.1012
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`  0.3760
    ##                                                                        PC1
    ## `ESA Shrubland`                                                          0
    ## `ESA Grassland`                                                          0
    ## `ESA Cropland`                                                           0
    ## `ESA Built-up`                                                           0
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter`   0

``` r
RsquareAdj(mi_fam_t_rda)$adj.r.squared
```

    ## [1] 0.07029448

``` r
vif.cca(mi_fam_t_rda)
```

    ##                                                        `ESA Shrubland` 
    ##                                                               1.185977 
    ##                                                        `ESA Grassland` 
    ##                                                               1.111275 
    ##                                                         `ESA Cropland` 
    ##                                                               1.147192 
    ##                                                         `ESA Built-up` 
    ##                                                               1.046563 
    ## `CH-BIO bio08 mean daily mean air temperatures of the wettest quarter` 
    ##                                                               1.103396

``` r
escalado <- 2
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
text(mi_fam_t_rda, "species", col="red", cex=0.8, scaling="sp")
arrows(0, 0,
       mi_fam_t_rda_sc1[, 1] * 0.9,
       mi_fam_t_rda_sc1[, 2] * 0.9,
       length = 0,
       lty = 1,
       col = "red"
)
```

![](practica-99-tu-manuscrito-3-resultados_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

## Análisis de diversidad

## Ecología espacial

# Referencias
