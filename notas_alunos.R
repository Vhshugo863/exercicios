#Limpando a mémoria
rm(list = ls())

#Criando um df para testa o codigo
## Utilizando a fuçao c() para criar 100 números que correponde a 100 alunos
Alunos <- c(1:100)
##Sorteando notas de 0 a 10 para os 100 alunos 
Notas <- sample(c(0:10), 100, replace = TRUE)
##Juntando as duas variaveis em um df
df <- data.frame(Alunos, Notas)

#Utilizando ifelse e criando uma nova coluna no df, a partir do que foi solicitado no problema 
df$Situacao <- ifelse(df$Notas >=5,"Passou",
                      ifelse(df$Notas >=3 & df$Notas <5,
                             "Recuperação",ifelse(df$Notas <3,"Reprovado", NA)))
