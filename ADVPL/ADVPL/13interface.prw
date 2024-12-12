#include 'protheus.ch'

// https://tdn.totvs.com/display/tec/MsDialog
// https://tdn.totvs.com/display/tec/TDialog
// https://tdn.totvs.com/display/tec/TFont
// https://tdn.totvs.com/display/tec/TFolder
// https://tdn.totvs.com/display/tec/@+...+FOLDER
// https://tdn.totvs.com/display/tec/TPanel
// https://tdn.totvs.com/display/tec/@+...+MSPANEL
// https://tdn.totvs.com/display/tec/TGroup
// https://tdn.totvs.com/display/tec/@+...+GROUP
// https://tdn.totvs.com/display/tec/TGet
// https://tdn.totvs.com/display/tec/@+...+GET
// https://tdn.totvs.com/display/tec/TMultiGet
// https://tdn.totvs.com/display/tec/@+...+GET+MULTILINE
// https://tdn.totvs.com/display/tec/TSay
// https://tdn.totvs.com/display/tec/@+...+SAY
// https://tdn.totvs.com/display/tec/TCBrowse
// https://tdn.totvs.com/display/tec/@+...+BROWSE
// https://tdn.totvs.com/display/tec/TBitmap
// https://tdn.totvs.com/display/tec/@+...+BITMAP

user function interface()

    //janelas()
    componentes()
return

Static Function janelas()

    msdialog1()
    msdialog2()

Return

Static Function msdialog1()
    Local oDlg


    // Cria di�logo
    oDlg := MSDialog():New(180,180,550,700,'Exemplo MSDialog',,,,,,,,,.T.)

    // Ativa di�logo centralizado
    oDlg:Activate(,,,.T.,{||MsgStop('validou!'),.T.},,{||MsgStop('iniciando')} )


Return

// Mesma coisa do msdialog1, com mais facilidade para ler 
Static Function msdialog2()
    Local oDlg

    // Cria di�logo
    DEFINE MSDIALOG oDlg TITLE 'Exemplo MSDialog com define' FROM 180, 180  TO 550, 700 PIXEL

    // Ativa di�logo centralizado
    ACTIVATE MSDIALOG oDlg CENTERED VALID (MsgStop('Validou define!'),.T.) ON INIT (MsgStop('iniciando define'))


Return

Static Function componentes()
    Local oDlg      // Vari�vel para o cont�iner principal TDialog
    Local oGet1     // Vari�vel para o campo de entrada TGet
    Local oGet2     // Vari�vel para o campo de entrada TGet
    Local oSay      // Vari�vel para o r�tulo TSay
    Local oComboBox // Vari�vel para o campo de sele��o TComboBox
    Local oPanel    // Vari�vel para o painel TPanel
    Local oGroup    // Vari�vel para o grupo TGroup
    Local oFolder   // Vari�vel para o componente de abas TFolder
    Local cNome := Space(50)
     Local cNome2 := Space(50)
    Local aItems:= {'Item1','Item2','Item3'}
    Local cCombo := aItems[1]

    // MSDialog: cont�iner principal da interface
    // O MSDialog � a "janela" onde todos os outros componentes ser�o adicionados
    oDlg := MSDialog():New( 180, 180, 550, 700, 'Exemplo MSDialog',,,,,,,,,.T.)
    // ODlg:End()
    // Exemplo de TGet (campo de entrada) e TSay (r�tulo) para captura de dados
    // TGet permite a entrada de texto pelo usu�rio
    // TSay � usado como r�tulo para indicar o que � cada campo

    oSay:= TSay():New( 20, 20, {|| "Nome" },oDlg,,,,,,.T.,,,200,20)
    // @ 20,20 SAY "Nome" OF oDlg SIZE 200, 20 PIXEL

    oGet1 := TGet():New( 40, 20, bSetGet(cNome), oDlg, 100, 010, "@!", {|| myValid(cNome) } ,,,,,,.T.) //{|| !empty(cNome)}
    @ 60,20 GET oGet2 VAR cNome2 SIZE 100, 010 OF oDlg PIXEL VALID !empty(cNome2) 

     //myValid(cNome) // WHEN .F.
    // Exemplo de evento de mudan�a em TGet
    // oGet1:bChange := { || MsgInfo("Texto alterado!", "Info") }

    // Exemplo de TComboBox para sele��o de op��es
    // O TComboBox permite ao usu�rio escolher entre v�rias op��es
    oComboBox := TComboBox():New( 80, 20, bSetGet(cCombo), aItems, 100, 20, oDlg,,,,,,.T.)

    // Exemplo de TPanel para agrupar componentes
    // TPanel serve para organizar visualmente os elementos na tela

    // oPanel := TPanel():New(10,15,"Teste",oDlg,,.T.,,CLR_BLACK,CLR_HGRAY,100,20)
    // @ 10,15 MSPANEL oPanel COLORS CLR_BLACK,CLR_HGRAY SIZE 100, 20 OF oDlg

    // Exemplo de TGroup para agrupar op��es de sele��o
    // TGroup � comumente usado para agrupar op��es como radio buttons
    // oGroup := TGroup():New( 02, 02, 130, 130,'Objeto Op��es',oDlg,,,.T.)
    // @ 02, 02 GROUP oGroup TO 130, 130 LABEL "Grupo de Op��es" PIXEL

    // Exemplo de TFolder para criar abas (tabs)
    // TFolder permite organizar a interface em v�rias se��es acess�veis por abas
    // aFolder := { 'Aba 01', 'Aba 02', 'Aba 03' }
    // oFolder := TFolder():New( 110, 20, aFolder,,oDlg,,,,.T.,,200,40 )
    // @ 20,20 SAY "Nome1" OF oFolder:aDialogs[1] SIZE 200, 20 PIXEL
    // @ 20,20 SAY "Nome2" OF oFolder:aDialogs[2] SIZE 200, 20 PIXEL
    // @ 20,20 SAY "Nome3" OF oFolder:aDialogs[3] SIZE 200, 20 PIXEL

    // Ativa a janela principal com todos os componentes
    // Bot�o Salvar
    TButton():New( 002, 002, "Bot�o 01",oDlg,{||alert("Bot�o 01")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
    oDlg:Activate()
Return

Static Function myValid( cNome )
    If empty( cNome )
        MsgInfo("Nome n�o pode ser vazio", "Aten��o")
        Return .F.
    EndIf

Return .T.

