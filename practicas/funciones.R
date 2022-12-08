crear_grafico_mosaico_de_mc <- function(mc, tam_rotulo = 12){
  library(dplyr)
  library(tidyr)
  library(ggplot2)
  para_gg <- mc %>%
    rownames_to_column('transecto') %>%
    mutate(transecto = factor(transecto)) %>%
    mutate(transecto = fct_relevel(transecto, gtools::mixedsort(levels(transecto)))) %>% 
    gather(familia, abundancia, -transecto) %>%
    mutate(familia = factor(familia)) %>% 
    mutate(transectonum = as.numeric(factor(transecto)))
  p <- ggplot(
    para_gg,
    aes(x = transectonum, y = familia, fill = abundancia, label = abundancia)) +
    geom_tile(col='black') +
    scale_fill_gradient(
      trans = 'log1p',
      low = "white",
      high = "red") +
    geom_text(size = tam_rotulo/4) +
    scale_x_continuous(#For duplicate axis
      breaks = unique(para_gg$transectonum),
      labels = levels(para_gg$transecto),
      sec.axis = dup_axis()) +
    xlab('Transecto') + ylab('Familia') +
    theme_bw() +
    theme(
      legend.position="none",
      text = element_text(size = tam_rotulo),
      panel.background = element_rect(fill = 'white', colour = 'black'),
      panel.grid.major = element_line(colour = "grey", linetype = "dashed", size = 0.25),
      axis.text.x = element_text(angle = 90),
      axis.text = element_text(colour="black")) + 
    coord_equal()
  return(p)
}

ezonalobj <- function(objraster = NULL, nombre = '', objgeometrias = NULL, export = T, nombreexport = '', cuali = F){
  #Ejemplo cuantitativo: ezonal(objraster = 'vrm_90M_n00w090/vrm_mosaico.tif', nombre = 'vrm', objgeometrias = 'divisionRD.gpkg', capa = 'MUNCenso2010', export = T, nombreexport = 'divisionRD_vrm', cuali = F)
  #Ejemplo cualitativo: ezonal(objraster = 'geom_90M_n00w090/geom_mosaico.tif', nombre = 'geomorfonos', objgeometrias = 'divisionRD.gpkg', capa = 'MUNCenso2010', export = T, nombreexport = 'divisionRD_geom', cuali = T)
  require(raster)
  require(sf)
  require(dplyr)
  require(tidyr)
  r <- objraster
  names(r) <- nombre
  geoms <- objgeometrias
  df <- raster::extract(x = r, y = as(geoms, 'Spatial'), df = T)
  if(cuali){
    dfresumen <- df %>%
      count(.[[1]], .[[2]]) %>%
      group_by(.[[1]]) %>%
      mutate(pct=n/sum(n)*100) %>%
      dplyr::select(-n) %>%
      spread(`.[[2]]`, pct) %>%
      ungroup() %>%
      dplyr::select(-`.[[1]]`) %>%
      rename_all(function(x) paste(nombre, x, sep = '_'))
  } else {
    dfresumen <- t(sapply(unique(df[,'ID']), function(x) c(
      n = length(na.omit(df[df[,'ID']==x,nombre])),
      min = min(df[df[,'ID']==x,nombre], na.rm = T),
      cuartil_ = quantile(df[df[,'ID']==x,nombre], 1/4, na.rm = T),
      media = mean(df[df[,'ID']==x,nombre], na.rm = T),
      mediana = median(df[df[,'ID']==x,nombre], na.rm = T),
      cuartil_ = quantile(df[df[,'ID']==x,nombre], 3/4, na.rm = T),
      max = max(df[df[,'ID']==x,nombre], na.rm = T),
      desv = sd(df[df[,'ID']==x,nombre], na.rm = T))))
    colnames(dfresumen) <- paste0(nombre, '_', colnames(dfresumen))
    colnames(dfresumen) <- gsub('\\.', '', colnames(dfresumen))
  }
  # return(dfresumen)
  geomsout <- dplyr::bind_cols(geoms, as.data.frame(dfresumen))
  if (export) {
    st_write(geomsout, dsn = paste0('salidas_ezonal/', nombreexport, '.gpkg'), driver = 'GPKG')
    saveRDS(geomsout, file = paste0('salidas_ezonal/', nombreexport,'.RDS'))
  }
  return(geomsout)
}

sel_por_prefijo <- function(prefijo) {
  resultado <- bind_cols(
    indices %>% select(N0),
    env %>%
      select_if(is.numeric) %>%
      st_drop_geometry %>%
      select(matches(paste0('^', prefijo, '.*$'))))
}

mapa_leaflet <- function(mapa, variable, titulo_leyenda = NULL) {
  library(sf)
  library(leaflet)
  library(leaflet.extras)
  library(dplyr)
  library(RColorBrewer)
  variable <- mapa[, variable, drop=T]
  if(is.character(variable) | is.factor(variable)) {
    fpal <- colorFactor(
      palette = RColorBrewer::brewer.pal(length(unique(variable)), 'Set1'),
      domain = unique(variable))
  } else
    if(is.numeric(variable)) {
      if(!is.integer(variable)) variable <- round(variable, 2)
      fpal <- colorNumeric(
        palette = "Blues",
        domain = variable)
    }
  leaflet(mapa) %>% 
    addPolygons(
      group = ~ variable,
      label = variable,
      color = ~ fpal(variable),
      stroke = F, fillOpacity = 0.6
    ) %>%
    addLegend(pal = fpal, values = ~ variable,
              group = ~ variable,
              opacity = 0.6,
              title = titulo_leyenda) %>%
    addTiles(group = 'OSM') %>%
    addProviderTiles("Esri.NatGeoWorldMap", group="ESRI Mapa") %>%
    addProviderTiles("Esri.WorldImagery", group="ESRI Imagen") %>%
    addProviderTiles("CartoDB.Positron", group= "CartoDB") %>%
    addLayersControl(
      baseGroups = c("ESRI Imagen", "CartoDB", "OSM", "ESRI Mapa"),    
      {if(is.character(variable) | is.factor(variable)) overlayGroups = ~ variable},
      position = 'bottomright',
      options = layersControlOptions(collapsed = FALSE)) %>% 
    setView(lat = 18.7, lng = -70.3, zoom = 8) %>% 
    addFullscreenControl()
}
