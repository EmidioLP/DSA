# Exercício

#Definindo a pasta de trabalho
setwd("C:/Users/emidi/OneDrive/Documentos/DataScienceAcademy/PowerBI/Cap12")
getwd()

#Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exercício 1: Apresente um resumo de tipos de dados e estatísticas do dataset.
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercício 2: Qual a média de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exercício 3: Qual turma apresentou maior variabilidade de notas?
sd(notas$TurmaA)
sd(notas$TurmaB)

# Exercício 4: Calcule o coeficiente de variação das duas turmas.
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA 
cvB

# Exercício 5: Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)
