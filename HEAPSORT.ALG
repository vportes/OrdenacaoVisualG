Algoritmo "HeapSort"
// Descri��o   : Implementa��o do Heapsort em VisualG
// Autor(a)    : Vin�cius Portes Carvalho do Nascimento
// Data atual  : 25/02/2024

Var
   array: vetor[1..100] de inteiro
   tamanho, i, maior, esq, dir, temp: inteiro

Inicio
   tamanho <- 6

   Para i de 1 at� tamanho faca
      Escreva("Digite o elemento ",i, ": ")
      Leia(array[i])
   FimPara

   Escreva("Vetor desordenado: ")
   Para i de 1 at� tamanho faca
      Escreva(array[i], " ")
   FimPara
   Escreval("")

   // heap maximo
   Para i de tamanho div 2 at� 1 passo -1 faca
      maior <- i
      esq <- 2 * i
      dir <- 2 * i + 1

      Se (esq <= tamanho) E (array[esq] > array[maior]) Ent�o
         maior <- esq
      FimSe
      Se (dir <= tamanho) E (array[dir] > array[maior]) Ent�o
         maior <- dir
      FimSe
      Se (maior <> i) Ent�o
         temp <- array[i]
         array[i] <- array[maior]
         array[maior] <- temp

         i <- maior
      FimSe
   FimPara

   // ordenar vetor
   Para i de tamanho at� 2 passo -1 faca
      temp <- array[1]
      array[1] <- array[i]
      array[i] <- temp

      maior <- 1

      Enquanto verdadeiro faca
         esq <- 2 * maior
         dir <- 2 * maior + 1

         Se (esq < i) E (array[esq] > array[maior]) Ent�o
            maior <- esq
         FimSe
         Se (dir < i) E (array[dir] > array[maior]) Ent�o
            maior <- dir
         FimSe
         Se (maior <> 1) Ent�o
            temp <- array[maior]
            array[maior] <- array[1]
            array[1] <- temp
            maior <- 1
         Sen�o
            interrompa // interrompe o loop se o heap for restaurado
         FimSe
      FimEnquanto
   FimPara

   Escreva("Vetor ordenado: ")
   Para i de 1 at� tamanho faca
      Escreva(array[i], " ")
   FimPara
FimAlgoritmo