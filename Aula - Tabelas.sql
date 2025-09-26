create database universidade;

use universiudade;
create table aluno(
id_aluno int primary key auto_increment,
nome varchar(255) not null,
idade int not null,
cpf bigint unique not null 
);

use universidade;
create table disciplina(
id_disc int primary key auto_increment,
aluno_id int not null,
nome varchar(255),
descricao varchar(255),
constraint aluno_disciplina  foreign key (aluno_id)
references aluno(id_aluno)
);

#ATIVIDADE 1
create database Loja;
use Loja;
create table Vendedor(
id_Vendedor int primary key auto_increment,
nome varchar(100) not null,
salariofixo double not null,
faixaComissao char(1)
);

create table cliente(
id_cliente int primary key auto_increment,
nome varchar(100) not null,
Logradouro varchar(100) not null,
numero varchar(6) not null,
complemento varchar(45) not null,
bairro varchar(50) not null,
cep varchar(15) not null,
cidade varchar(60) not null,
uf varchar(2) not null
);

create table produto(
id_produto int primary key auto_increment,
descricao varchar(100) not null,
unidade int (11) not null,
valorUnitario double
);

create table pedido(
id_pedido int primary key auto_increment,
id_cliente int, 
id_vendedor int,
prazoEntrega int,
constraint pedido_cliente  foreign key (id_cliente)
references cliente(id_cliente),
constraint pedido_vendedor  foreign key (id_vendedor)
references Vendedor(id_Vendedor)
);

create table ItemPedido(
id_pedido int,
id_produto int,
quantidade int,
constraint pedido_ItemPedido  foreign key (id_pedido)
references pedido(id_pedido),
constraint produto_ItemPedido  foreign key (id_produto)
references produto(id_produto)
);

