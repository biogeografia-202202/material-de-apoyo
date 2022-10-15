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
