#include "protheus.ch"

User Function desafioin()
    Local oDlg
    Local aFolder
    Local oFolder
    Local oGetNome
    Local oGetEmail
    Local cNome := Space(50)
    Local cEmail := Space(50)
    Local cCurso := Space(50)
    Local cEscola := Space(50)

    // Cria diálogo
    DEFINE MSDIALOG oDlg TITLE 'Exemplo MSDialog com define' FROM 180, 180  TO 550, 700 PIXEL

    // Exemplo de TFolder para criar abas (tabs)
    // TFolder permite organizar a interface em várias seções acessíveis por abas
    aFolder := { 'Dados Pessoais', 'Dados Acadêmicos'}
    oFolder := TFolder():New( 2, 2, aFolder,,oDlg,,,,.T.,,258, 150 )

    // Primeira Aba
    @ 20,20 SAY "Nome" OF oFolder:aDialogs[1] SIZE 200, 20 PIXEL
    @ 30,20 GET oGetNome VAR cNome SIZE 100,010 OF oFolder:aDialogs[1] PIXEL VALID ValidNome(cNome)

    @ 45,20 SAY "E-mail" OF oFolder:aDialogs[1] SIZE 200, 20 PIXEL
    @ 55,20 GET oGetEmail VAR cEmail SIZE 100,010 OF oFolder:aDialogs[1] PIXEL VALID ValidMail(cEmail)

    // Segunda Aba
    aCursos := {"Administração", "Engenharia", "Medicina"}
    @ 20,20 SAY "Curso" OF oFolder:aDialogs[2] SIZE 200, 20 PIXEL
    oComboBox := TComboBox():New( 30, 20, bSetGet(cCurso), aCursos, 100, 20, oFolder:aDialogs[2],,,,,,.T.)

    @ 45,20 SAY "Nome da Escola" OF oFolder:aDialogs[2] SIZE 200, 20 PIXEL
    @ 55,20 GET oGetEscola VAR cEscola SIZE 100,010 OF oFolder:aDialogs[2] PIXEL

    @ 160, 210 BUTTON "Salvar" OF oDlg ACTION resumo(cNome, cEmail, cCurso, cEscola, oDlg ) SIZE 40, 10 PIXEL
    // Ativa diálogo centralizado
    ACTIVATE MSDIALOG oDlg CENTERED

return

Static Function Resumo(cNome, cEmail, cCurso, cEscola, oDlg )
    Local cMensagem

    cMensagem := "Nome: " + RTrim(cNome) + CRLF +;
                 "E-mail: " + RTrim(cEmail) + CRLF +;
                 "Curso: " + RTrim(cCurso) + CRLF +;
                 "Escola: " + RTrim(cEscola)

    MsgInfo(cMensagem,"Resumo")
    oDlg:End()
Return


Static Function ValidNome(cNome)
    If Empty( cNome )
        MsgInfo("Nome não pode ser vazio", "Atenção")
        Return .F.
    EndIf

Return .T.

Static Function ValidMail(cEmail)
    If At("@",cEmail) == 0
        MsgInfo("Deve possuir @ no e-mail", "Atenção")
        Return .F.
    EndIf
Return .T.
