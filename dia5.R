#Estat?stica Descritiva
if(!require(dplyr)) install.packages("dplyr")
if(!require(ggplot2)) install.packages("ggplot2")
library(dplyr)
library(ggplot2)

setwd("C:/Users/dpits/Desktop/eu/Repositorios/R/")

dataFrame <- read.csv("ds_salaries.csv", sep=",")

View(dataFrame)

excluir = c("company_size", "experience_level",'salary', 
            'salary_currency', 'remote_ratio', "work_year", 
            "employment_type",'employee_residence', 'company_location')
dataFrame = dataFrame[ , !(names(dataFrame) %in% excluir)]   
View(dataFrame)

dataFrame = rename(dataFrame, salario = salary_in_usd, cargo = job_title)
View(dataFrame)


media = mean(dataFrame$salario)
View(media)

frequenciAbsoluta = table(dataFrame$salario)
View(frequenciAbsoluta)

frequenciaRelativa = prop.table(frequenciAbsoluta)
View(frequenciaRelativa)

frequenciaRelativa100 = 100*prop.table(frequenciAbsoluta)
View(frequenciaRelativa)

frequenciAbsoluta = c(frequenciAbsoluta, sum(frequenciAbsoluta))
View(frequenciAbsoluta)
names(frequenciAbsoluta)[[32]] = "Total"
View(frequenciAbsoluta)

frequenciaRelativa = c(frequenciaRelativa, sum(frequenciaRelativa))
frequenciaRelativa100 = c(frequenciaRelativa100, sum(frequenciaRelativa100))

tabelaFinal = cbind(frequenciAbsoluta,
                     frequenciaRelativa = round(frequenciaRelativa, digits = 5),
                     frequenciaRelativa100 = round(frequenciaRelativa100, digits = 2))

View(tabelaFinal)


k = 1+3.3*log(607)
k

A = (600000 - 2859)/k
A

intervalo_de_classes = seq(1.7, 20.7, 1.07)    #(min, m?x, intervalo)

tabela_de_classes = table(cut(dataFrame$salario, breaks = intervalo_de_classes, right=FALSE))
View(tabela_de_classes)

nrow(dataFrame)
ncol(dataFrame)
dim(dataFrame)
summary(dataFrame$salario)
summarise(dataFrame,media=mean(salario))

hist(dataFrame$salario, col = "red")

plot(tabela_de_classes, type = 'l')

boxplot(dataFrame$salario)

barplot(tabela_de_classes)

pie(tabela_de_classes)

pie(dataFrame$salario)

hist(
  x = dataFrame$salario,
  breaks = 'Sturges',
  col = 'lightblue',
  main = 'Wind Plot',
  xlab = 'Wind Speed',
  ylab = 'Frequency'
)

ggplot(data = dataFrame, aes(x = "", y = salario)) +
  stat_boxplot(geom = 'errorbar', width = 0.4) +
  geom_boxplot(fill = '#3274A1') +
  coord_flip() +
  ylab("Salario") +
  xlab("") +
  ggtitle('salario 2') 
