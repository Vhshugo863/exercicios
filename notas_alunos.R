rm(list = ls())

Alunos <- c(1:100)
Notas <- sample(c(0:10), 100, replace = TRUE)
df <- data.frame(Alunos, Notas)

df$Situa��o <- ifelse(df$Notas >=5,"Passou",
                      ifelse(df$Notas >=3 & df$Notas <5,
                             "Recupera��o",ifelse(df$Notas <3,"Reprovado", NA)))