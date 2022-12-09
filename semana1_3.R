2-8
penguins %>%
  select(-species)

penguins %>%
  rename(renomeada=island)

penguins %>% arrange(bill_length_mm)

penguins %>% arrange(-bill_length_mm)

penguins2 = penguins %>% arrange(-bill_length_mm)

View(penguins2)

penguins2 %>% group_by(island) %>% summarize(mean_bill_length_mm =
                                               mean(bill_length_mm)) 

penguins %>% group_by(species, island) %>% summarize(max_bl =
                                                       max(bill_length_mm), mean_bl = mean(bill_length_mm)) 
penguins %>% filter(species == "Adelie")

library(readr)

#dfB2 <- readr::read_delim( 'C:/Users/dpits/Documents/hotel.csv', delim=";", skip = 1, spec(";") )
#View(dfB)

id <- c(1, 2, 3)
nome <- c("Daniel Warella", "Eu Pitsch", "Tu Sousa")
emprego <- c("dados", "web", "sap")

funcionario <- data.frame(id, nome, emprego)

print(funcionario)

funcionario2 <- separate(funcionario, nome, into= c("nome", "sobrenome"), sep=" ")

print(funcionario2)

juntando <-unite(funcionario2,"nomeInteiro", nome, sobrenome, sep =' ')

print(juntando)

View(penguins)

penguins %>%
  mutate(body_mass_kg = body_mass_g/1000)

quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))