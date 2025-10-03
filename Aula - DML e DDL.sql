
#FORMATIVA:


create database gerencia_vendas;
use gerencia_vendas;

#COMANDOS DO TIPO DDL

create table produtos (
	produto_id integer primary key auto_increment,
    nome varchar(50),
    preco decimal(10,2),
    estoque integer
);
create table vendas(
	venda_id integer primary key auto_increment,
    produto_id integer,
    quantidade integer,
    dataVenda date,
    foreign key (produto_id) references produtos(produto_id)
);

#A PARTIR DE AGORA: COMANDO DO TIPO DML

insert into produtos(nome, preco, estoque)
values('notebook dell', 500.000, 10);
#select * from produtos;

insert produtos (nome, preco, estoque)
values ('xuxa deel', '200.000', '10');

insert produtos (nome, preco, estoque)
values ('case iphone 11', '100', '1000');

insert produtos (nome, preco, estoque)
values ('airpod 2', '1000', '2000');

insert produtos (nome, preco, estoque)
values ('carregador apple', '1000', '3000');
#select * from produtos;

insert into vendas (produto_id, quantidade, dataVenda)
values (1,3, '2025-10-3');

insert into vendas (produto_id, quantidade, dataVenda)
values (2, 4, '2025-10-2');

insert into vendas (produto_id, quantidade, dataVenda)
values (3, 5, '2025-10-8');

#UPDATE

update produtos
set preco = 4900.00
where produto_id = 2;

select * from vendas;
select * from produtos;

update vendas
set quantidade = 4
where venda-id = 3;

delete from produto
where produto_id = 3;

delete from vendas 
where venda_id =1;

select nome, preco from produtos;
select produto_id, dataVenda from vendas;

select * from vendas
where venda_id = 2;






#EXERCICIO 1: 



create database locacao;
use locacao;

create table cliente (
	codigoCliente integer primary key auto_increment,
    nome varchar(45),
    endereco varchar(45),
    bairro varchar(45),
    cidade varchar(45),
    uf varchar (2),
    telefone varchar (45)
);

create table titulo (
	codigoTitulo integer primary key auto_increment,
    nome varchar(45),
    tipo varchar(45),
    locado integer
);

create table locacoes (
	codigoLocacoes integer primary key auto_increment,
    codigoCliente integer,
    codigoTitulo integer,
    dataSaida date,
    dataRetorno date,
    foreign key (codigoCliente) references cliente (codigoCliente),
    foreign key (codigoTitulo) references titulo (codigoTitulo)
);

#5 inserts na tabela cliente
insert cliente (nome, endereco, bairro, cidade, uf , telefone)
values ('Joao', 'Rua 11', 'Jd Feliz', 'Sao Paulo', 'SP', '00000-0000');

insert cliente (nome, endereco, bairro, cidade, uf , telefone)
values ('Maria', 'Rua 12', 'Jd Happy', 'Sao Bernardo', 'SP', '00000-0001');

insert cliente (nome, endereco, bairro, cidade, uf , telefone)
values ('Ana', 'Rua 13', 'Jd Dream', 'Sao Caetano', 'SP', '00000-0002');

insert cliente (nome, endereco, bairro, cidade, uf , telefone)
values ('Lucas', 'Rua 14', 'Jd Cloud', 'Sao Carlos', 'SP', '00000-0003');

insert cliente (nome, endereco, bairro, cidade, uf , telefone)
values ('Bruno', 'Rua 15', 'Jd Sun', 'Salto', 'SP', '00000-0004');
select * from cliente;

#5 inserts na tabela titulo
insert titulo (nome, tipo, locado)
values ('Pucca','Desenho','1');

insert titulo (nome, tipo, locado)
values ('Moranguinho','Mini-série','2');

insert titulo (nome, tipo, locado)
values ('Barbie','Filme','3');

insert titulo (nome, tipo, locado)
values ('Minions','Filme','4');

insert titulo (nome, tipo, locado)
values ('Rapunzel','Filme','5');
select * from titulo;

#5 inserts na tabela locações

insert locacoes (dataSaida, dataRetorno)
values ('2025-10-1','2025-10-2');

insert locacoes (dataSaida, dataRetorno)
values ('2025-10-1','2025-10-3');

insert locacoes (dataSaida, dataRetorno)
values ('2025-10-1','2025-10-4');

insert locacoes (dataSaida, dataRetorno)
values ('2025-10-1','2025-10-5');

insert locacoes (dataSaida, dataRetorno)
values ('2025-10-1','2025-10-6');
select * from locacoes;

#3 deletes na tabela Titulo
select * from titulo;

delete from titulo 
where codigoTitulo =3;

delete from titulo
where codigoTitulo =5;

delete from titulo
where codigoTitulo=4;

#3 deletes da tabela Cliente
select * from cliente;

delete from cliente
where codigoCliente = 5;

delete from cliente
where codigoCliente =4;

delete from cliente
where codigoCliente = 3;

#3 deletes da tabela Locações
select * from locacoes;

delete from locacoes
where codigoLocacoes = 5;

delete from locacoes 
where codigoLocacoes = 4;

delete from locacoes
where codigoLocacoes = 3;

#2 updates na tabela Cliente
select * from cliente;

update cliente
set endereco = 'Rua 10'
where codigoCliente = 1;

update cliente
set endereco = 'Rua 11'
where codigoCliente =2;

#2 updates na tabela Titulo
select * from titulo;

update titulo
set locado = '10'
where codigoTitulo = 1;

update titulo
set locado = '11'
where codigoTitulo =2;


