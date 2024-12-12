// Exemplo de variável Static
Static staticVar := 0 // Variável Static, persiste entre as chamadas das funções

User Function escopos()
    exLocal()
    exPublicPrivate()
    exStatic()

    // Verificando o type de "publicVar" é igual a caracterer 
    If Type( "publicVar" ) == "C"
        msgInfo( "Fora de exemploPublicPrivate - Public: " + publicVar)
    Else
        msgInfo( "Variável pública não existe" )
    EndIf

    If Type( "privateVar" ) == "C"
        msgInfo( "Dentro de exemploPublicPrivate - Private: " + privateVar )
    Else
        msgInfo( "Variável Private não existe" )
    EndIf

Return

// Exemplo de variáveis Locais
Static Function exLocal()
    Local localVar := "valorLocal"

    // Variável Local, disponível apenas dentro dessa função
    msgInfo( "Valor da variável Local: " + localVar )

    // Passando a variável local por valor para outra função
    alteraLocal(localVar)
    msgInfo( "Após passar por valor: " + localVar )

    // Passando a variável local por referência
    alteraReferencia( @localVar )
    msgInfo( "Após passar por referência: " + localVar )

Return

// Função que altera variável local por valor
Static Function alteraLocal( localVar )
    localVar := "alteradoPorValor"
    msgInfo( "Dentro de alteraLocal: " + localVar )
Return

// Função que altera variável local por referência
Static Function alteraReferencia( localVar )
    localVar := "alteradoPorReferencia"
    msgInfo( "Dentro de alteraReferencia: " + localVar )
Return

// Exemplo de Public e Private
Static Function exPublicPrivate()
    Public publicVar := "Sou Pública"
    Private privateVar := "Sou Privada"

    msgInfo( "Dentro de exemploPublicPrivate - Public: " + publicVar )
    msgInfo( "Dentro de exemploPublicPrivate - Private: " + privateVar )

    exPrivate()
Return

// Exemplo de Variáveis private
Static Function exPrivate()

    If Type( "privateVar" ) == "C"
        msgInfo( "Dentro de exemploPublicPrivate - Private: " + privateVar )
    Else
        msgInfo( "Variável Private não existe" )
    EndIf

Return

// Exemplo de Static e sua persistência entre chamadas
Static Function exStatic()
    Static exemploStatic := 0

    exemploStatic += 1
    staticVar += 1 // staticVar foi declarada no escopo do fonte, persiste entre funções

    msgInfo( "Static declarada dentro do fonte: " + Str(exemploStatic) )
    msgInfo( "Static Global: " + Str(staticVar) )
Return
