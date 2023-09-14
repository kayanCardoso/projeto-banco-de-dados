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

create table classificacao
(posicao_tabela int primary key not null,
quantidade_partida tinyint  not null,
pontos tinyint not null,
num_derrotas tinyint not null,
num_vitoria tinyint not null,
num_empates tinyint not null,
gols_pro smallint not null,
gols_contra smallint not null,
fk_campeonato int not null,
foreign key (fk_campeonato) references campeonato(id_campeonato) 
);

create table jogo 
(id_jogo int primary key not null,
estadio varchar(80) not null,
resultado varchar(50) not null,
data_jogo date not null,
tipo_participante enum('Mandante', 'Visitante'),
cidade varchar(80) not null,
estado varchar(80) not null,
pais varchar(80) not null,
historico binary,
contexto_jogo text,
fk_campeonato int not null,
foreign key (fk_campeonato) references campeonato(id_campeonato)
 );



