create database db_botafogo ;

use db_botafogo;

create table jogador 
(id_jogador int primary key not null,
 nome varchar(80) not null);
 
 create table situacao
 (id_situacao int primary key not null,
 descricao varchar(60) not null);
 
 create table campeonato 
 (id_campeonato int primary key not null,
 tipo_campeonato enum('Nacional', 'estadual', 'Internacional') not null,
 ano year not null,
 nome varchar(100) not null
 );
 
 create table tecnico 
 (id_tecnico int primary key not null,
 nome varchar(80) not null,
 dt_nasc date not null,
 pais_nasc varchar(100) not null,
 foto text 
 );

create table camisa
(num_camisa int primary key not null
);



