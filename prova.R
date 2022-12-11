install.packages('rmarkdown')
library(readr)
bars_df <- read_csv("flavors_of_cacao.csv")

install.packages("tidyverse")
library(tidyverse)

colnames(bars_df)

bars_df %>%
  select(Rating, 'Cocoa\nPercent', 'Bean\nType')

View(bars_df)

str(bars_df)
summarize(bars_df)

bars_df %>%
  resume(Rating)

bars_df %>%  select(Rating)

r <-bars_df %>% filter(Rating >= 3.75)
r %>% filter('Cocoa\nPercent' == 80)

data <- bars_df %>%
  select( as.numeric('Cocoa\nPercent'))

bars_df %>%
  summarize(mean(Rating), sd(Rating), mean(Rating))

install.packages('ggplot2')

library(ggplot2)

ggplot(data = bars_df)+
  geom_bar(mapping=aes(x="Company\nLocation", fill=Rating))

bars_df %>% 
  select(Rating)                                  
  