create database CleanMax;
use cleanMax;

create table cliente
(id not null primary key auto_increment,
nome varchar(80) not null,
senha varchar(20) not null ,
dataNasc varchar(10) not null,
celular varchar(20) not null,
telefone varchar(20) not null,
email varchar(40) not null,
cpf varchar(20) not null
);

create table funcionario
(id not null primary key auto_increment,
nome varchar(80) not null,
senha varchar(20) not null,
dataNasc varchar(10) not null,
celular varchar(20) not null,
telefone varchar(20) not null ,
email varchar(40) not null auto_increment,
cpf varchar(20) not null auto_increment,
);

create table funcao
(id not null primary key auto_increment,
descricao varchar(50) not null auto_increment,
);

create table lavagem
(id not null primary key auto_increment,
dataLav varchar(10) not null auto_increment,
status varchar(20) not null auto_increment,
hora varchar(5) not null auto_increment,
placa varchar(12) not null auto_increment,
);

create table servico
(id not null primary key auto_increment,
preco varchar(12) not null auto_increment,

);

create table tipoServico
(id not null primary key auto_increment,
descricao varchar(50) not null auto_increment,
)
create table tipoVeiculo
(id not null primary key auto_increment,
preco varchar(12) not null auto_increment,
);