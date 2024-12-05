create database Escola;

use Escola;

create table Aluno (
 id_aluno int identity primary key,
 nome_aluno varchar(50),
 sexo_aluno char(1),
 cpf_aluno char(15),
 cidade_aluno varchar(30),
 curso_aluno varchar(15)

)

insert into Aluno (nome_aluno, sexo_aluno, cpf_aluno, cidade_aluno, curso_aluno) values 
('Gisleide Silva Asevedo', 'F', '143.757.918-00', 'S�o Paulo', 'Espanhol')



select * from Aluno;

create table Aula (
 
	id_aula int identity primary key,
	duracao_aula time,
	local_aula varchar(10),
	periodo_aula varchar(10),
	horario_aula time,
	data_aula varchar(20)

)

create table Professor (

	 id_professor int identity primary key,
	 nome_professor varchar(50),
	 sexo_professor char(1),
	 cpf_professor char(15),
	 cidade_professor varchar(30),
	 disciplina_professor varchar (20)
)

insert into Aula (duracao_aula, local_aula, periodo_aula, horario_aula, data_aula) values 
('01:30:00', 'Sala A', 'Manh�', '08:00:00', 'Segunda'),
('02:00:00', 'Sala B', 'Tarde', '14:00:00', 'Ter�a'),
('01:15:00', 'Sala C', 'Noite', '19:00:00', 'Sexta'),
('03:00:00', 'Sala D', 'Manh�', '09:00:00', 'Sabado'),
('01:45:00', 'Sala E', 'Tarde', '15:00:00', 'Sexta');

select * from Aula;

insert into Professor (nome_professor, sexo_professor, cpf_professor, cidade_professor, disciplina_professor) values 
('Carlos Alberto Silva', 'M', '123.456.789-00', 'S�o Paulo', 'Ingl�s'),
('Fernanda Souza Lima', 'F', '234.567.890-11', 'S�o Pulo', 'Ingl�s'),
('Marcos Vin�cius', 'M', '345.678.901-22', 'Guarulhos', 'Franc�s'),
('Juliana Pereira', 'F', '456.789.012-33', 'S�o Mateus', 'Espanhol'),
('Roberto Santos', 'M', '567.890.123-44', 'S�o Paulo', 'Espanhol'),
('Ana Carolina', 'F', '678.901.234-55', 'Campinas', 'Alem�o'),
('Fernando Oliveira', 'M', '789.012.345-66', 'Guarulhos', 'Franc�s'),
('Patr�cia Mendes', 'F', '890.123.456-77', 'Campinas', 'Ingl�s'),
('Leonardo Costa', 'M', '901.234.567-88', 'S�o Mateus', 'Ingl�s'),
('Camila Rocha', 'F', '012.345.678-99', 'S�o Paulo', 'Alem�o');

-- Exibe os dados da tabela
select *  from Professor;

-- Exibe a estrutura da tabela
exec sp_columns Aluno;

select nome_aluno, curso_aluno from Aluno;

--Adicionar um campo/coluna na tabela 
alter table Aluno add telefone_aluno char(15);

-- Alterar um campo/coluna na tabela
alter table Aluno alter column cpf_aluno char(20);

--Deletar ao campo/coluna da tabela
alter table Aluno drop column telefone_aluno;

select * from Aluno;

-- Criando uma tabela tempor�ria para testes
select * into Temp from Aluno;

select * from Temp;

alter table Temp add email_aluno varchar(50);

-- Alterar valor no campo 
update Temp
	set cpf_aluno = '159.687.445-98'
where id_aluno = 2;

update Temp
  set curso_aluno = 'Mandarim'
where id_aluno = 4;

update Temp 
	set cidade_aluno = 'S�o Bernando do Campo'
where id_aluno = 7;

select * from Temp where sexo_aluno = 'F';

-- Altera��o do 1 ao 5
update Temp
	set sexo_aluno = 'F'
where id_aluno between 1 and 5;

-- Altera��o apenas do id 7 e 10
update Temp	
	set sexo_aluno ='M'
where id_aluno in (7, 10);

update Temp 
	set sexo_aluno = Lower(sexo_aluno), -- Alterar para letra minusculas
	nome_aluno = upper(nome_aluno) -- Alterar para letra maisculas
where id_aluno between 1 and 5;

-- Delete

-- Deletar um registro da tabela
delete Temp 
	where id_aluno = 3


-- Exercicio

--Criar tabela tempor�ria 
select * into Prof from Professor;

-- Inserir o campo estado civil e o campo nome da m�e
alter table Prof 
add estado_civil varchar(15), nome_mae varchar(50);

-- Mudar o tamnho do campo cpf
alter table Prof alter column cpf_professor char(20)

--Inseri + 3 registros
insert into Prof (nome_professor, sexo_professor, cpf_professor, cidade_professor, disciplina_professor, estado_civil, nome_mae) values ('Jurandir Dias', 'M', '456.789.456.12', 'Guarulhos', 'Mandarim', 'Casado', 'Maria das Dores'),
('Flavia Goes', 'F', '234.789.456.12', 'S�o Paulo', 'Franc�s', 'Casada', 'Fernanda Goes'),
('Juliana Marques', 'F', '789.789.456.12', 'Guarulhos', 'Espanhol', 'Solteira', 'Margarida Marques')

--Deletar a coluna cidade
alter table Prof drop column cidade_professor;

--Alterar o valor da disciplina 5 �ltimos registros;
update Prof 
	set disciplina_professor = 'Ingl�s'
where id_professor between 9 and 13;

--Deletar os registros 7,10 e 12
delete Prof
where id_professor in (7,10,12)

-- Inserir o campo e-mail na tabela e colocar a frase "solicita��o em andamento" nesse campo, em todos os registros;
alter table Prof add email_professor varchar(50);

update Prof 
	set email_professor = 'Solicita��o em andamento'
where id_professor between 1 and 13;

-- Trocar o tipo do campo estado civil para char(10)
alter table Prof alter column estado_civil char(10);

-- Inserir o campo formacao_prof varchar(50)

alter table Prof add formacao_prof varchar(50);

select * from Prof;
exec sp_columns Prof

