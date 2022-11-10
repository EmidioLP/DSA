# Estatística Básica

# Parte 2 - Medidas de Dispersão

# Definindo a pasta de trabalho
setwd("C:/Users/emidi/OneDrive/Documentos/DataScienceAcademy/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância 
var(vendas$Valor)

# Desvio Padrão
sd(vendas$Valor)


