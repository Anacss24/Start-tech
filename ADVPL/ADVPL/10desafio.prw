User Function desafio()
Local nome As Character
Local movel As Character
Local valor As Numeric
Local parcelas  As Numeric
Local valor_parcela  As Numeric
Local i As Numeric

nome := FwInputBox("Ol�! Qual o seu nome?")
MsgInfo("Seja bem vindo " + nome, "Sauda��o")
movel := FwInputBox("Qual m�vel ir� comprar?")
valor := FwInputBox("Qual � o valor do m�vel? ")
parcelas := Val(FwInputBox("N�mero de parcelas? "))
valor_parcela := valor / parcelas

datas_parcelas := "As datas das parcelas s�o: "

For i := 1 To parcelas
    datas_parcelas := datas_parcelas + " " + DToc(Date() + i*30)
Next

MsgInfo("O total da sua compra de " + movel + " � de R$ " + cValToChar(valor) + ".", "Simula��o")
MsgInfo("A compra foi divida em " + cValToChar(parcelas) + " de R$ " + cValToChar(valor_parcela) + ".", "Simula��o")
MsgInfo(datas_parcelas, "Simula��o")
Return
