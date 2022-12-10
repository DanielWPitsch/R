install.packages('rmarkdown')
bars_df <- read_csv("flavors_of_cacao.csv")

colnames(bars_df)

bars_df %>%
  select(Rating, 'Cocoa\nPercent', 'Bean\nType')

View(bars_df)

bars_df %>%
  resume(Rating)

bars_df %>%  select(Rating)

bars_df %>% filter('Cocoa\nPercent' > 85)

data <- transform(
  bars_df,'Cocoa\nPercent' = as.numeric(as.factor('Cocoa\nPercent'))

  