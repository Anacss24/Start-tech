User Function estruturas()
 Local valor

 valor := FwInputBox("Insira seu g�nero")

    // If valor == "M"

    //     MsgInfo("Masculino", "Resultado")

    // ElseIf valor == "F"

    //     MsgInfo("Feminino", "Resultado")
    
    // Else
    
    //     MsgInfo("Dado inv�lido", "Resultado")

    // EndIf

    Do Case
        Case valor == "M"
            MsgInfo("Masculino", "Resultado")
        Case valor == "F"
            MsgInfo("Feminino", "Resultado")
        Otherwise
             MsgInfo("Dado inv�lido", "Resultado")
    EndCase

Return

User Function repeticao()
    Local x := 0

    For x := 1 to 20 

      If x % 2 == 0
            MsgAlert(x, "Resultado") 
        EndIf
    Next
Return

User Function whil()
     Local x := 0
     Local condicao := .T.
     while condicao
        MsgInfo("Mensagem N�mero " +cValToChar(x), "Resultado")
        if x == 10
            Exit
        EndIf
        x++
    End
Return

