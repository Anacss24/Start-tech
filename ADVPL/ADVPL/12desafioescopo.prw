// Vari�vel de contador



static ultimoID := "";

User Function controleAcessos()
    entrada()
Return

Static Function entrada()
    Local entrada

    Public totalAcessos := 0

    While .T.
        entrada := FwInputBox( "Digite o seu ID ou Q para sair:" )
        If entrada == "Q"
            Exit
        EndIf

        registraAcesso( entrada )
    EndDo

    msgInfo( "Contador total de acessos: " + Str( totalAcessos ) )


    consultaUltimoID()
    totalAcessos()
return

// Fun��o que registra o acesso
Static Function registraAcesso( cID )
    Local localID := cID

    // Incrementando contadores
    totalAcessos++

    // Armazenando o �ltimo ID registrado
    ultimoID := localID

    msgInfo( "Acesso registrado para o ID: " + localID )

Return

// Fun��o que consulta o �ltimo ID registrado (vari�vel Private)
Static Function consultaUltimoID()

        msgInfo( "�ltimo ID registrado foi: " + ultimoID )
Return

// Fun��o para exibir o total de acessos globais
Static Function totalAcessos()
    msgInfo( "Total de acessos globais: " + Str( totalAcessos ) )
Return
