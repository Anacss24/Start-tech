
// Descrição do Desafio
// Estrutura da Interface:

// Use um MSDialog como contêiner principal.
// Adicione um TFolder com duas abas:
// Aba 1: Dados Pessoais
// Aba 2: Dados Acadêmicos
// Aba 1 - Dados Pessoais:

// Adicione os seguintes campos:
// Nome (TGet): Campo de texto para o nome do aluno.
// email (TGet): Campo para o e-mail do aluno.
// Validações:
// Nome não pode estar vazio.
// email deve possuir @
// Aba 2 - Dados Acadêmicos:

// Adicione os seguintes campos:
// Curso (TComboBox): Campo de seleção para o curso do aluno (ex.: Administração, Engenharia, Medicina).
// Nome da escola (TGet): Campo de texto para o nome da escola.
// Botão Salvar:

// Adicione um botão Salvar que, ao ser clicado, exibe as informações da mátricula
// Dica: Use MsgInfo() para exibir a mensagem.


#include 'protheus.ch'

User function desinter()
    Local Nome := Space(50)
    Local Email := Space(50)
    Local Escola := Space(50)
    Local oGet2
    Local oGet1
    Local aItems:= {'Cursos','Administração','Engenharia','Ciência da Computação'}
    Local cCombo := aItems[1]

DEFINE MSDIALOG oDlg TITLE "Desafio Interface" FROM 180, 200 TO 500, 700 PIXEL

aFolder := { 'Dados Pessoais', 'Dados Acadêmicos' }
     oFolder := TFolder():New( 05, 20, aFolder,,oDlg,,,,.T.,,250,150 )
    @ 20,20 SAY "Dados Pessoais" OF oFolder:aDialogs[1] SIZE 200, 20 PIXEL
    @ 40,40 GET oGet2 VAR Nome OF oFolder:aDialogs[1] SIZE 70, 010  PIXEL 
    @ 60,60 GET oGet1 VAR Email OF oFolder:aDialogs[1] SIZE 70, 010  PIXEL 

    @ 20,20 SAY "Dados Acadêmicos" OF oFolder:aDialogs[2] SIZE 200, 20 PIXEL
    oComboBox := TComboBox():New( 20, 20, 'Cursos', aItems, 100, 20, oFolder:aDialogs[2],,,,,,.T.)
    @ 40,40 GET oGet2 VAR Escola OF oFolder:aDialogs[2] SIZE 70, 010  PIXEL 
    TButton():New( 140, 50, "Salvar",ODlg,{||MsgInfo(Nome, Email)}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )

ACTIVATE MSDIALOG oDlg CENTERED 

return

