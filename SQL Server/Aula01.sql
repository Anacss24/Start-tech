-- Criação do banco de dados 
create database ClinicaMedica;

--Acessar o banco de dados
use ClinicaMedica;

-- Deletar o banco de dados
drop database ClinicaMedica;

-- Criação de tabela
create table Paciente (

	pk_Id_paciente int identity primary key,
	-- Reserva somente os caracteres usados
	nome_paciente varchar(50),
	-- Reserva os caracteres apontados no tipo
	sexo_paciente char(1),
	data_nasc_paciente smalldatetime,
	data_entrada_paciente datetime,
	telefone_paciente char(15),
	email_paciente varchar(50),
	cpf_paciente char(15),
	endereco_paciente varchar(100)
)

-- Adequa a data para a data padrão do seu servidor
Set dateformat mdy;

Insert into Paciente (nome_paciente, sexo_paciente, data_nasc_paciente, data_entrada_paciente, telefone_paciente, email_paciente, cpf_paciente, endereco_paciente) values ('Ana Claudia', 'F', '03/12/1998', '10/21/2024', '1199664578', 'ana@gmail.com', '463.567.546-45', 'Rua das Flores, 456, Pompeia');

Insert into Paciente (nome_paciente, sexo_paciente, data_nasc_paciente, data_entrada_paciente, telefone_paciente, email_paciente, cpf_paciente, endereco_paciente) values ('Maria Aparecida', 'F', '12/5/1970', '10/10/2024', '11945678976', 'mariaparecida@outlook.com', '223.456.987-67', 'Av. Braz Leme, 1000, Jardim São Bento');

Select * from Paciente;

create table Medico (

	pk_id_medico int identity primary key,
	nome_medico varchar(50),
	email_medico varchar(50),
	telefone_medico char(15),
	especialidade_medico varchar(50),
	crm_medico char(9),
	cpf_medico char(15),
	endereco_medico varchar(100),
	data_nasc_medico datetime
);

insert into Medico (nome_medico, email_medico, telefone_medico, especialidade_medico, crm_medico, cpf_medico, endereco_medico, data_nasc_medico ) values ('Roberto', 'roberto@gmail.com', '119123456878', 'Clinico Geral', '123456-SP', '435.567.654-12', 'Avenida Sumaré,
1200 - Perdizes', '07/22/1982'), 
('Ana Paula', 'anapaula@outlook.com', '1282340964', 'Ginecologista', '456789-SP', '234.657.897-45', 'Avenida Antártica, 380 - Barra Funda', '02/08/1970')

INSERT INTO Medico (nome_medico, email_medico, telefone_medico, especialidade_medico, crm_medico, cpf_medico, endereco_medico, data_nasc_medico)
VALUES ('Dr. João Silva', 'joao.silva@gmail.com', '(11) 98765-4321', 'Cardiologista', '345678-SP', '123.456.789-00', 'Rua das Flores, 123, São Paulo - SP', '1980-05-15');



Select * from Medico;

create table Consulta (

	pk_id_consulta int identity primary key,
	data_consulta date, 
	horario_consulta time,
	local_consulta varchar(10)
);

INSERT INTO Consulta (data_consulta, horario_consulta, local_consulta)
VALUES ('10-22-2024', '08:30:00', 'Sala 1');

INSERT INTO Consulta (data_consulta, horario_consulta, local_consulta)
VALUES ('10-22-2024', '14:00:00', 'Clínica 1');

INSERT INTO Consulta (data_consulta, horario_consulta, local_consulta)
VALUES ('10-23-2024', '09:45:00', 'Sala 2');

INSERT INTO Consulta (data_consulta, horario_consulta, local_consulta)
VALUES ('10-23-2024', '16:30:00', 'Sala 3');

INSERT INTO Consulta (data_consulta, horario_consulta, local_consulta)
VALUES ('10-24-2024', '11:00:00', 'Sala 2');


update Consulta set local_consulta = 'Sala 3' where pk_id_consulta = 2;

Select * from Consulta;

select nome_paciente from Paciente;

select nome_medico from Medico;

select local_consulta from Consulta;

select nome_paciente, data_nasc_paciente from Paciente;

-- Aliases - Padrão - Apelido
select nome_medico as Medico, crm_medico as CRM from Medico