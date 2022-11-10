# Estatística Básica

# Parte 1 - Medidas de Posição

# Definindo a pasta de trabalho
setwd("C:/Users/emidi/OneDrive/Documentos/DataScienceAcademy/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Média
?mean
mean(vendas$Valor)
mean(vendas$Custo)

# Média Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma função
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo a Moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_Custo <- moda(vendas$Custo)
print(resultado_Custo)

# Criando gráfico de Média de Valor Por Estado com o ggplot2
install.packages('Rcpp', dependencies = TRUE)
install.packages('ggplot2', dependencies = TRUE)
install.packages('data.table', dependencies = TRUE)
library(ggplot2)

# Criando o gráfico
ggplot(vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean, 
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "Média de Valor Por Estado")