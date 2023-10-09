drop database if exists db_botafogo;
create database db_botafogo ;

use db_botafogo;

drop table if exists jogador;
create table jogador 
(id_jogador int primary key not null,
 nome varchar(80) not null);
 
 
 drop table if exists campeonato;
 create table campeonato 
 (id_campeonato int primary key not null,
 tipo_campeonato enum('Nacional', 'estadual', 'Internacional') not null,
 ano year not null,
 nome varchar(100) not null
 );
 
 drop table if exists tecnico;
 create table tecnico 
 (id_tecnico int primary key not null,
 nome varchar(80) not null,
 dt_nasc date not null,
 pais_nasc varchar(100) not null,
 foto text 
 );


drop table if exists jogo;
create table jogo 
(id_jogo int not null primary key,
fk_campeonato int not null,
resultado enum('Vitoria','Derrota','Empate') not null,
estadio varchar(80) not null,
data_jogo date not null,
tipo_participante enum('Mandante','Visitante') not null,
cidade varchar(100) not null,
pais varchar(100) not null,
gols_pro tinyint not null,
gols_contra tinyint not null,
foreign key (fk_campeonato) references campeonato(id_campeonato)
);

drop table if exists classificacao;
create table classificacao
(posicao int ,
quantidade_partidas tinyint not null,
pontos tinyint ,
fase varchar(50),
num_derrotas tinyint not null,
num_vitoria tinyint not null,
num_empates tinyint not null,
gols_pro smallint not null,
gols_contra smallint not null,
id_campeonato int not null unique,
primary key (id_campeonato),
foreign key (id_campeonato) references campeonato(id_campeonato)
);

drop table if exists titulo;
create table titulo
(id_titulo int not null primary key,
nome varchar(80) not null,
ano year not null,
fk_campeonato int not null unique,
foreign key (fk_campeonato) references campeonato(id_campeonato)
);

drop table if exists historico_jogador;
create table historico_jogador 
(dt_contratacao date not null ,
dt_fimcontrato date not null,
num_assistencia smallint not null,
num_gols smallint not null,
num_jogos smallint not null,
num_titulo smallint not null,
foto text,
fk_jogador int not null unique,
foreign key (fk_jogador) references jogador(id_jogador),
primary key (fk_jogador)
);

drop table if exists caracteristica_jogador;
create table caracteristica_jogador 
(id_jogador int not null primary key unique ,
valor_mercado varchar(60) not null,
pais_nasc varchar(80) not null,
dt_nasc date not null,
posicao varchar(50) not null,
pe_bom enum('Esquerdo','Direito','ambidestro') not null,
 altura float(3,2) not null,
 foreign key (id_jogador) references jogador(id_jogador)
);

drop table if exists tecnico_campeonato;
create table tecnico_campeonato
(dt_entrada date not null ,
id_tecnico int not null,
id_campeonato int not null,
foreign key (id_tecnico) references tecnico(id_tecnico),
foreign key (id_campeonato) references campeonato(id_campeonato),
primary key (id_tecnico, id_campeonato, dt_entrada)
);

drop table if exists jogador_campeonato;
create table jogador_campeonato
(id_jogador int not null,
id_campeonato int not null,
primary key (id_jogador, id_campeonato),
foreign key (id_jogador) references jogador(id_jogador),
foreign key (id_campeonato) references campeonato(id_campeonato)
);

drop table if exists jogador_titulo;
create table jogador_titulo
(id_jogador int not null,
id_titulo int not null,
primary key (id_jogador,id_titulo),
foreign key (id_jogador) references jogador(id_jogador),
foreign key (id_titulo) references titulo(id_titulo)
);


drop table if exists nacionalidade;
create table nacionalidade
(id_nacionalidade int not null primary key,
nm_nacionalidade varchar(60) not null	
);

drop table if exists nacionalidade_jogador;
create table nacionalidade_jogador
(fk_nacionalidade int not null,
fk_jogador int not null,
primary key (fk_nacionalidade, fk_jogador),
foreign key (fk_nacionalidade) references nacionalidade(id_nacionalidade),
foreign key (fk_jogador) references caracteristica_jogador(id_jogador)
);

drop table if exists nacionalidade_tecnico;
create table nacionalidade_tecnico
(fk_nacionalidade int not null,
fk_tecnico int not null,
primary key(fk_nacionalidade,fk_tecnico),
foreign key (fk_nacionalidade) references nacionalidade(id_nacionalidade),
foreign key (fk_tecnico) references tecnico(id_tecnico)
);

drop table if exists idolo;
create table idolo
(
id_idolo int not null primary key ,
fk_jogador int , 
fk_tecnico int ,
importancia text not null,
foreign key (fk_jogador) references jogador(id_jogador),
foreign key (fk_tecnico) references tecnico(id_tecnico)
);

drop table if exists tecnico_titulo;
create table tecnico_titulo
(id_tecnico int not null,
id_titulo int not null,
primary key (id_tecnico, id_titulo),
foreign key (id_tecnico) references tecnico(id_tecnico),
foreign key (id_titulo) references titulo(id_titulo)
);

drop table if exists historico_tecnico;
create table historico_tecnico
(id_tecnico int not null primary key unique,
num_partidas smallint not null,
num_vitorias smallint not null,
num_derrotas smallint not null,
num_empates smallint not null,
foreign key (id_tecnico) references tecnico(id_tecnico)
);



