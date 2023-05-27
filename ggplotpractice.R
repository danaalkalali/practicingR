install.packages("tidyverse")
library(tidyverse)

#GGPlot practice 26/5/2023 :)

#basic format is: 
#ggplot(data, aes(x=variable1, y=variable2)) + geom_col()

#making a bar plot w/ ggplot! :D

GSE183947_long_format %>%
  filter(gene == "BRCA1") %>%
  ggplot(., aes(x=samples, y=FPKM, fill = tissue)) + geom_col()


#now making a heatmap! woooo~~~

genes.of.interest <- c('BRCA1','BRCA2', 'TP53', 'ALK', 'MYCN')

p <- GSE183947_long_format %>%
  filter(gene %in% genes.of.interest) %>%
  ggplot(., aes(x=samples, y=gene, fill=FPKM)) + geom_tile() +scale_fill_gradient(low='white', high='purple')

ggsave(p, filename= 'heatmap.pdf', width=10, height=8)

