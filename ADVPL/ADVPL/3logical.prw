User Function logical()

    Local verdadeiro := .T.
    Local falso := .F. As Logical
    Local condicao As Logical
    Local comida1 := "Arroz"
    Local comida2 := "Arroz"
    Local comida3 := "Feij�o"

    //opera��es l�gicas
    condicao := comida1 == comida2 .and. comida1 == comida3
    MsgInfo(condicao, "condicao := verdadeiro .and. verdadeiro")

    Return

