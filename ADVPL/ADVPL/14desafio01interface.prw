
// Descri��o do Desafio
// Estrutura da Interface:

// Use um MSDialog como cont�iner principal.
// Adicione um TFolder com duas abas:
// Aba 1: Dados Pessoais
// Aba 2: Dados Acad�micos
// Aba 1 - Dados Pessoais:

// Adicione os seguintes campos:
// Nome (TGet): Campo de texto para o nome do aluno.
// email (TGet): Campo para o e-mail do aluno.
// Valida��es:
// Nome n�o pode estar vazio.
// email deve possuir @
// Aba 2 - Dados Acad�micos:

// Adicione os seguintes campos:
// Curso (TComboBox): Campo de sele��o para o curso do aluno (ex.: Administra��o, Engenharia, Medicina).
// Nome da escola (TGet): Campo de texto para o nome da escola.
// Bot�o Salvar:

// Adicione um bot�o Salvar que, ao ser clicado, exibe as informa��es da m�tricula
// Dica: Use MsgInfo() para exibir a mensagem.


#include 'protheus.ch'

User function desinter()
    Local Nome := Space(50)
    Local Email := Space(50)
    Local Escola := Space(50)
    Local oGet2
    Local oGet1
    Local aItems:= {'Cursos','Administra��o','Engenharia','Ci�ncia da Computa��o'}
    Local cCombo := aItems[1]

DEFINE MSDIALOG oDlg TITLE "Desafio Interface" FROM 180, 200 TO 500, 700 PIXEL

aFolder := { 'Dados Pessoais', 'Dados Acad�micos' }
     oFolder := TFolder():New( 05, 20, aFolder,,oDlg,,,,.T.,,250,150 )
    @ 20,20 SAY "Dados Pessoais" OF oFolder:aDialogs[1] SIZE 200, 20 PIXEL
    @ 40,40 GET oGet2 VAR Nome OF oFolder:aDialogs[1] SIZE 70, 010  PIXEL 
    @ 60,60 GET oGet1 VAR Email OF oFolder:aDialogs[1] SIZE 70, 010  PIXEL 

    @ 20,20 SAY "Dados Acad�micos" OF oFolder:aDialogs[2] SIZE 200, 20 PIXEL
    oComboBox := TComboBox():New( 20, 20, 'Cursos', aItems, 100, 20, oFolder:aDialogs[2],,,,,,.T.)
    @ 40,40 GET oGet2 VAR Escola OF oFolder:aDialogs[2] SIZE 70, 010  PIXEL 
    TButton():New( 140, 50, "Salvar",ODlg,{||MsgInfo(Nome, Email)}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )

ACTIVATE MSDIALOG oDlg CENTERED 

return

