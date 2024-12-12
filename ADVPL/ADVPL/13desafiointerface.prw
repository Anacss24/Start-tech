#include 'protheus.ch'



User Function Teste()

   //myMsgInfo("Interface em ADVPL", "Aula 08/11/2024")
   componentes()

Return



static function myMsgInfo(cMessage, ctitulo)

// Cria��o de uma caixa de dialogo 
DEFINE MSDIALOG oDlg TITLE ctitulo FROM 0, 0 TO 100, 200 PIXEL

// Exibe um texto
@ 20, 20 SAY cMessage OF oDlg SIZE 100, 0 PIXEL

// Bot�o com o texto ok e com a funcao de finalizar o diagolo.
TButton():New( 40, 55, "Ok",oDlg,{||oDlg:End()}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )

// Ativa o dialogo, assim que o bot�o � clicado.
ACTIVATE MSDIALOG oDlg CENTERED 

return

static function componentes()
// Define a variavel com o m�ximo de caracter
    Local cNome := Space(50)
    Local cNome2 := Space(50)
    Local oGet1     // Vari�vel para o campo de entrada TGet
    Local oGet2     // Vari�vel para o campo de entrada TGet
// Cria��o de uma caixa de dialogo 
DEFINE MSDIALOG oDlg TITLE "Interface" FROM 180, 200 TO 500, 700 PIXEL

// Caixa de input, para o usu�rio digitar
oGet1 := TGet():New( 40, 20, bSetGet(cNome), oDlg, 100, 010, "@!", {|| !empty(cNome) } ,,,,,,.T.) 
@ 60,20 GET oGet2 VAR cNome2 SIZE 100, 010 OF oDlg PIXEL VALID !empty(cNome2) 


// Ativa o dialogo, assim que o bot�o � clicado.
ACTIVATE MSDIALOG oDlg CENTERED 

return
