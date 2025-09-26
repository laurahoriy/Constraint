#Comandos de criação de banco de dados
create database locadoras2;
create database folhas;


#Comandos para exclusão do banco de dados
drop database locadoras;
drop database locadoras2;
drop database folhas;

#Atividade 1

create database supermercado;
create database estoque;
create database restaurante;
create database controle_vendas;
create database biblioteca;
create database loja_virtual;

drop database supermercado;
drop database estoque;
drop database restaurante;
drop database controle_vendas;
drop database biblioteca;
drop database loja_virtual;



#Criar BD, Selecionar BD e criar tabela

create database teste7;
use teste7;

create table cliente(
codigo integer,
nome varchar(50),
endereco varchar(50)
);

#Visualizar estrutura da tabela
describe cliente;

#Excluindo tabela e BD
drop table cliente;
drop database teste7;

#FORMATIVA PROCESSO DE FORMAÇÃO

#Criar banco de dados
create database escolafeliz;
#Selecionar o banco de dados
use escolafeliz;
#Criando as tabelas Sala e Turma
create table sala(
	id_sala integer primary key auto_increment,
    nome varchar(50)
);

create table turma(
	id_turma integer primary key auto_increment,
    nome varchar(50),
    id_sala integer,
    foreign key (id_sala) references sala(id_sala)
);


#ATIVIDADE 2 FORMATIVA
create database gerenciamento;
use gerenciamento;
create table produtos(
	cod_prod integer primary key auto_increment,
    nome varchar (30),
    preco decimal (10,0) 
);
create table pedidos(
	cod_pedido integer primary key auto_increment,
    cod_prod integer,
    quantidade integer,
    foreign key (cod_prod) references produtos(cod_prod)
);


#ATIVIDADE 3 FORMATIVA 

create database EMPRESA_XPTO;
use EMPRESA_XPTO;
create table departamento(
	DEPCODIGO integer primary key auto_increment,
    DEPNOME varchar(50)
);
create table FUNCIONARIO(
	FUNCODIGO integer primary key auto_increment,
    DEPCODIGO integer,
    FUNNOME varchar(100),
    FUNNASCIMENTO date,
    FUNSALARIO numeric(10,2),
    foreign key (DEPCODIGO) references departamento(DEPCODIGO)
);
create table DEPENDENTE(
	DEPENCODIGO integer primary key auto_increment,
    FUNCODIGO integer,
    DEPENNOME varchar(100),
    foreign key (FUNCODIGO) references FUNCIONARIO(FUNCODIGO)
);










