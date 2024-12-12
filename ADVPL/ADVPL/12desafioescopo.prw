// Variável de contador



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

// Função que registra o acesso
Static Function registraAcesso( cID )
    Local localID := cID

    // Incrementando contadores
    totalAcessos++

    // Armazenando o último ID registrado
    ultimoID := localID

    msgInfo( "Acesso registrado para o ID: " + localID )

Return

// Função que consulta o último ID registrado (variável Private)
Static Function consultaUltimoID()

        msgInfo( "Último ID registrado foi: " + ultimoID )
Return

// Função para exibir o total de acessos globais
Static Function totalAcessos()
    msgInfo( "Total de acessos globais: " + Str( totalAcessos ) )
Return
