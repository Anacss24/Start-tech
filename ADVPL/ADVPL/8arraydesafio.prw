
User Function frutas ()

local fruta As Character
local frutas := {}
local frutapesquisar As Character

   for x := 1 to 5
    fruta := FwInputBox("Digite uma fruta: ")
    AAdd(frutas, fruta) //Primeiro o array, depois o elemento a ser adicionado 
    msgInfo(frutas[x]) // Mostrando os elementos que est�o sendo inseridos
    Next
   
   frutapesquisar := FwInputBox("Digite uma fruta a ser pesquisada: ")
   frutaPes := AScan(frutas, frutapesquisar) // Ele retorna o indice do elemento
   
   if (frutaPes > 0)
     MsgInfo("Fruta Encontrada na posi��o " + cValToChar(frutaPes))
    Else
    MsgInfo("Fruta n�o encontrada")
    EndIf
   
   ASort(frutas) // Ordenando o Array 

   frutapesquisar := FwInputBox("Digite novamente uma fruta a ser pesquisada: ")
    frutaPes := AScan(frutas, frutapesquisar)
   msgInfo("Fruta Encontrada na posi��o " + cValToChar(frutaPes))
   

Return


