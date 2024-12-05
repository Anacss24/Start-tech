create database banco_teste

use banco_teste

drop table produtos;
create table produtos(
	id_produto int primary key identity,
	nomeproduto varchar(50),
	preco decimal(10,2),
	tipo varchar(50),
	quantestoque int,
	descricao varchar(100)
)


select * from produtos



SET IDENTITY_INSERT produtos off;

Create login debs with password = '491279' /*  criação de user e senha para o banco  */
create user debs for login debs

ALTER ROLE banco_teste ADD MEMBER debs


Set dateformat mdy

insert into produtos (nomeproduto, preco, tipo, quantestoque, descricao)values
('perfume', '250.00', 'cosmetico', '100', 'avon'),
('creme', '20.00', 'cosmetico', '50', 'natura'),
('arroz', '20.00', 'alimento', '120', 'camil'),
('batom', '70.00', 'cosmetico', '80', 'oboticario'),
('Tv', '2000.00', 'eletronico', '2', 'samsung'),
('notebook', '3000.00', 'eletronico', '400', 'positivo'),
('celular', '5000.00', 'eletronico', '30', 'apple')

insert into produtos (nome_produto, preco, tipo, quant_estoque, descricao)values
('teste', '250.00', 'cosmetico', '100', 'avon');

drop table produtos

select * from produtos

