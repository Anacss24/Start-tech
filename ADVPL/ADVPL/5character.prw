User Function Character()
Local valor

// FwInputBox = Inser��o de dados pelo usu�rio
valor := FwInputBox("Insira uma frase")
 MsgInfo(Upper(valor), "Resultado")
 MsgInfo(Lower(valor), "Resultado")


Return


User Function SubStrAt()
Local valor
Local pesquisar := "@"




valor := FwInputBox("Insira o seu email")
cortado := Substr(valor, 1, At(pesquisar, valor) -1 )
MsgInfo(cortado, "Resultado")
Return
