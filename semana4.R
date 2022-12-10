
#ggplot(quartet, aes(x,y) + geom_point() + geom_smooth(method=1m, se=FALSE) + facet_wrap(set))

install.packages('datasauRus')
library(datasauRus)

#ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(-dataset)
install.packages("SimDesign")
library("SimDesign")

vendas <- c(110, 122, 222)
vendasF <- c(222, 213, 111)
bias(vendas, vendasF)

View(penguins)
colnames(penguins)

penguins %>% filter(flipper_length_mm >230)
                    
penguins %>% filter(body_mass_g > 5000)

install.packages('ggplot2')

library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

install.packages("tidyverse")
library(tidyverse)
glimpse(penguins)

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species, size=species))

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha=species), color="purple")

ggplot(data = penguins) +geom_line(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha=species), color="purple")

ggplot(data = penguins) +geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha=species)) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=cut))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=clarity))

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(mapping = aes(color=species))+
  facet_wrap(~species)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color, fill=cut))+
  facet_wrap(~cut)

#ggplot(data = penguins))+
#  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))+
#  facet_grid(~sex)

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))+
  labs(title="Palme pingins: massa corporal vs tamanho da nadadeira", 
       subtitle="subtitulo",
       caption="dados coletados pela Dra. Kristen Gorman")+
  annotate("text", x=220, y=3500, label="The Gentos are the largest",
           color="blue", fontface="bold", size=4.5, angle=10)

ggsave("teste13.png")

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)
