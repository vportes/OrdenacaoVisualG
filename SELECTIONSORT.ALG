Algoritmo "SelectionSort"
// Descrição   : Implementação de SelectionSort em VisualG
// Autor(a)    : Vinícius Portes Carvalho do Nascimento
// Data atual  : 25/02/2024
Var
   n, i, j, min, temp: inteiro
   array: vetor [1..5] de inteiro

Inicio
   //Escreva("Digite o tamanho do vetor: ")
   //Leia(n)
   //nao utilizado, o vetor vai de 0 a 5

   n <- 5

   Para i de 1 ate n faca
      Escreva("Digite o elemento no índice",i," do vetor: ")
      Leia(array[i])
   FimPara

   Escreva("Vetor desordenado: ")
   Para i de 1 ate n faca
      Escreva(array[i], " ")
   FimPara
   Escreval("")

   Para i de 1 ate n-1 faca
      min <- i
      Para j de i+1 ate n faca
         Se array[j] < array[min] Entao
            min <- j
         FimSe
      FimPara

      Se min <> i Entao
         temp <- array[i]
         array[i] <- array[min]
         array[min] <- temp
      FimSe
   FimPara

   Escreva("Vetor ordenado: ")
   Para i de 1 ate n faca
      Escreva(array[i], " ")
   FimPara

FimAlgoritmo