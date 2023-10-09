use db_botafogo;
/*Jogadores */
insert jogador(id_jogador, nome) values
	(1,'Lucas Pereira da Silva'),
    (2, 'Lucas Pereira Silva'),
    (3, 'Mateus Santos Oliveira'),
    (4, 'Guilherme Fernandes Costa'),
    (5, 'João Almeida Santos'),
    (6, 'André Rodrigues Lima'),
    (7, 'Rodrigo Gomes Pereira'),
    (8, 'Gabriel Costa Alves'),
    (9, 'Leonardo Silva Santos'),
    (10, 'Alexandre Oliveira Souza'),
    (11, 'Daniel Pereira Lima'),
    (12, 'Fernando Santos Ferreira'),
    (13, 'Caio Alves Rodrigues'),
    (14, 'Rafael Lima Gonçalves'),
    (15, 'Eduardo Fernandes Oliveira'),
    (16, 'Victor Pereira Almeida'),
    (17, 'Gustavo Silva Costa'),
    (18, 'Bruno Ferreira Alves'),
    (19, 'Marcos Lima Rodrigues'),
    (20, 'Marcelo Almeida Costa'),
    (21, 'Thiago Oliveira Pereira'),
    (22, 'Felipe Costa Fernandes'),
    (23, 'Luiz Rodrigues Almeida'),
    (24, 'Vinícius Santos Oliveira'),
    (25, 'Diego Lima Ferreira'),
    (26, 'Carlos Almeida Gonçalves'),
    (27, 'Lucas Fernandes Silva'),
    (28, 'Matheus Pereira Oliveira'),
    (29, 'Ricardo Lima Santos'),
    (30, 'Samuel Almeida Rodrigues'),
    (31, 'André Costa Fernandes'),
    (32, 'César Silva Gonçalves'),
    (33, 'Otávio Oliveira Lima'),
    (34, 'Henrique Fernandes Costa'),
    (35, 'Jorge Santos Pereira'),
    (36, 'Ivan Lima Alves'),
    (37, 'Renato Almeida Silva'),
    (38, 'Antonio Rodrigues Costa'),
    (39, 'Joaquim Costa Oliveira'),
    (40, 'Nicolas Alves Ferreira'),
    (41, 'Augusto Lima Santos'),
    (42, 'Raul Fernandes Almeida'),
    (43, 'Miguel Almeida Costa'),
    (44, 'Valter Pereira Lima'),
    (45, 'Pedro Lima Rodrigues'),
    (46, 'Isaque Oliveira Costa'),
    (47, 'Alexandre Santos Alves'),
    (48, 'Rodrigo Almeida Ferreira'),
    (49, 'Artur Fernandes Oliveira'),
    (50, 'Bruno Silva Lima'),
    (51, 'Felipe Costa Almeida');

/*Tecnicos*/
insert into tecnico (id_tecnico, nome, dt_nasc, pais_nasc,foto)values
	(1, 'João Silva', '1990-05-15', 'Brasil', null),
    (2, 'Pedro Pereira', '1993-03-10', 'Espanha', null),
    (3, 'Carlos Fernandes', '1988-07-05', 'brasil', null),
    (4, 'Ricardo Costa', '1997-09-25', 'Alemanha', null),
    (5, 'António Almeida', '1986-06-07', 'Portugal', null),
    (6, 'Gustavo Santos', '1994-07-03', 'Espanha', null),
    (7, 'André Silva', '1996-10-08', 'brasil', null),
    (8, 'Tiago Pereira', '1992-09-13', 'Alemanha', null);


/*Campeonatos */
insert into campeonato (id_campeonato,tipo_campeonato, ano, nome) values
(1000, 'Nacional', 2023, 'Brasileirao'),
(2000, 'Nacional', 2022, 'Brasileirao'),
(3000, 'Nacional', 2021, 'Brasileirao'),
(1100, 'Nacional', 2023, 'Copa do brasil'),
(2100, 'Nacional', 2022, 'Copa do brasil'),
(3100, 'Nacional', 2021, 'Copa do brasil'),
(1200, 'Internacional', 2023, 'Copa sul-americano'),
(1300, 'estadual', 2023, 'campeonato carioca'),
(2300, 'estadual', 2022, 'campeonato carioca'),
(3300, 'estadual', 2021, 'campeonato carioca');


/*Classificaçao*/
insert into classificacao (id_campeonato, posicao, quantidade_partidas, pontos, fase, num_derrotas, num_vitoria, num_empates, gols_pro, gols_contra) values
(1000, 1, 24, 51,null, 0, 0, 0, 0, 0),
(2000, 11, 38, 53,null, 0, 0, 0, 0, 0),
(3000, 20, 38, 27,null, 0, 0, 0, 0, 0 ),
(1100, null, 6, null,'Terceira fase', 0, 0,0, 0 , 0),
(2100,null, 12, null,'Final', 0, 0, 0, 0, 0 ),
(3100,null, 12, null,'Final', 0,0,0,0,0),
(1200,null, 15, null,'Final', 0, 0, 0,0,0),
(1300,null,15,null,'final',0,0,0,0,0),
(2300,null,13,null,'Semifinal',0,0,0,0,0),
(3300,null,13,null,'semifinal',0,0,0,0,0);



/*Titulos Ganhos*/
insert into titulo (id_titulo,nome,ano,fk_campeonato)values
(1, 'Campeao Brasileiro', 2023, 1000),
(2, 'Campeao Brasileiro', 2022, 2000),
(3, 'Campeao Copa do Brasil', 2021, 3100),
(4, 'Campeao Copa do Brasil', 2022, 2100),
(5, 'Campeao Sul-Americano', 2023, 1200),
(6, 'Campeao Carioca', 2021, 1300);

/*Historico Jogador*/
insert into historico_jogador (fk_jogador, dt_contratacao, dt_fimcontrato, num_assistencia, num_gols, num_jogos, num_titulo,foto) values
(1,'2019-12-27','2023-08-24',50, 150, 100 ,2, null),
(2,'2018-12-10','2024-01-29',0, 25,50,0, null),
(3, '2018-09-30','2022-07-08',4, 1,89,0, null),
(4,'2023-02-23','2024-10-06',10, 1,15,0, null),
(5,'2019-06-23','2021-11-04',2, 0,18,0, null),
(6,'2021-06-15','2024-11-22',10,38,175,1, null),
(7,'2019-02-05','2022-12-28',180,38,250,2, null),
(8,'2020-02-01','2022-06-18',137,68,200,5, null),
(9,'2018-07-27','2024-10-05',17,8,48,0, null),
(10,'2019-04-22','2023-10-17',84,41,172,2, null),
(11,'2019-09-21','2024-11-23',48,7,78,2, null),
(12,'2022-06-22','2024-04-14',1,6,8,1, null),
(13,'2020-04-14','2022-10-16',10,17,36,2, null),
(14,'2018-12-12','2023-08-19',17,87,78,0, null),
(15,'2019-06-30','2023-10-22',47,17,76,2, null),
(16,'2019-12-29','2022-04-16',65,78,96,0,null),
(17,'2018-04-08','2021-02-25',0,0,7,0, null ),
(18,'2018-07-24','2024-04-03',4,1,43,0, null),
(19,'2020-08-03','2022-12-08',123,54,400,5, null),
(20,'2019-10-07','2024-10-10',23,14,68,2, null),
(21,'2020-05-30','2024-06-07',7,14,68,2, null),
(22,'2023-03-13','2024-09-08',65,30,89,4, null),
(23,'2023-02-19','2023-07-06',25,40,79,2, null),
(24,'2021-11-21','2024-04-18',79,25,163,4, null),
(25,'2021-04-03','2023-05-28',45,5,200,5, null 	),
(26,'2018-12-12','2023-05-09',19,57,46,1, null),
(27,'2019-09-18','2022-07-19',260,77,453,5, null),
(28,'2018-10-18','2024-01-30',198,150,361,5, null),
(29,'2023-04-13','2025-04-27',10,2,25,2, null),
(30,'2021-09-15','2023-04-15',45,6,75,2, null),
(31,'2020-04-08','2021-01-08',89,10,130,1, null),
(32,'2020-05-07','2022-04-10',46,170,243,4, null ),
(33,'2022-07-11','2023-06-09',17,8,65,2, null),
(34,'2021-09-14','2025-01-19',200,79,320,5, null),
(35,'2020-03-12','2024-01-22',140,49,180,4, null),
(36,'2020-02-01','2021-11-27',4,9,10,0, null),
(37,'2018-09-10','2022-12-06',45,9,95,2, null),
(38,'2019-03-30','2023-07-27',78,90,200,3, null),
(39,'2018-02-22','2021-06-11',48,70,152,2, null),
(40,'2021-03-04','2024-10-08',79,180,482,5, null),
(41,'2023-05-22','2024-07-15',69,32,120,2, null),
(42,'2019-02-02','2021-02-22',58,30,200,2, null),
(43,'2023-03-05','2024-02-16',12,3,45,0, null),
(44,'2019-05-10','2023-05-24',468,189,641,5, null),
(45,'2021-05-02','2023-07-18',8,19,45,0, null),
(46,'2022-09-01','2024-12-23',17,19,42,0, null),
(47,'2018-11-04','2023-03-05', 89,78,210,4, null),
(48,'2020-07-13','2022-05-12', 45,13,56,2, null),
(49,'2019-07-14','2021-06-06', 30,24,71,2, null),
(50,'2022-09-17','2023-11-16', 170,16,240,4, null),
(51,'2022-12-15','2023-06-21', 70,45,132,0, null);

/*Nacionalidade*/

insert into nacionalidade (id_nacionalidade, nm_nacionalidade) values
(1, 'Brasileiro'),
(2, 'Portugues'),
(3, 'Argentino'),
(4, 'Espanhol'),
(5, 'Colombiano'),
(6, 'Italiano'),
(7, 'Uruguaio'),
(8,'chileno '),
(9,'francês'),
(10,'italiano'),
(11,'mexicano'),
(12,'inglês'),
(13,'alemão');

/*Caracteristica Jogador*/

insert into caracteristica_jogador (id_jogador, valor_mercado, pais_nasc, dt_nasc, posicao, pe_bom, altura)values
(1," €  20,229,993.00 ","Uruguai","1993-07-17","atacante","Ambidestro",1.95),
(2," €  33,779,970.00 ","Mexico","1984-12-09","lateral","Ambidestro",1.95),
(3," €  48,174,129.00 ","Chile","1986-07-18","zagueiro","Direito",1.61),
(4," €  7,127,216.00 ","Argentina","1997-06-06","lateral","Esquerdo",1.91),
(5," €  42,926,824.00 ","Mexico","1991-11-24","ponta","Ambidestro",1.62),
(6," €  8,328,132.00 ","Chile","2002-08-19","ponta","Esquerdo",1.83),
(7," €  2,447,959.00 ","Brasil","1997-03-14","atacante","Direito",1.74),
(9," €  9,867,055.00 ","Uruguai","1988-01-09","lateral","Esquerdo",1.90),
(10," €  47,076,367.00 ","Chile","1984-10-20","centro avante","Ambidestro",1.73),
(11," €  42,026,713.00 ","Espanha","1997-01-01","centro avante","Esquerdo",1.83),
(12," €  24,053,426.00 ","Italia","1989-12-24","ponta","Direito",1.9),
(13," €  43,478,849.00 ","Mexico","1990-03-17","ponta","Ambidestro",1.61),
(14," €  5,061,718.00 ","Uruguai","1997-10-08","goleiro","Direito",1.71),
(15," €  37,212,786.00 ","Inglaterra","1995-12-24","zagueiro","Ambidestro",1.90),
(16," €  34,276,718.00 ","Uruguai","1997-02-15","meia","Direito",1.73),
(17," €  20,218,254.00 ","França","1990-01-29","lateral","Direito",1.64),
(18," €  25,867,975.00 ","Inglaterra","1994-05-04","zagueiro","Ambidestro",1.71),
(19," €  34,109,129.00 ","Chile","1984-05-31","volante","Direito",1.80),
(20," €  20,755,379.00 ","Espanha","1997-05-28","goleiro","Ambidestro",1.72),
(21," €  36,879,429.00 ","Uruguai","2003-12-13","volante","Esquerdo",1.61),
(22," €  39,231,717.00 ","Portugal","1990-09-28","volante","Direito",1.80),
(23," €  39,287,316.00 ","Argentina","2000-06-27","zagueiro","Direito",1.64),
(24," €  25,643,493.00 ","Mexico","2001-04-26","atacante","Esquerdo",1.70),
(25," €  24,726,917.00 ","Espanha","1994-01-18","meia","Direito",1.95),
(26," €  1,149,289.00 ","Argentina","1987-10-23","lateral","Direito",1.95),
(27," €  34,075,175.00 ","Italia","1983-07-02","volante","Ambidestro",1.70),
(28," €  7,155,724.00 ","Chile","1993-05-24","lateral","Direito",1.63),
(29," €  16,591,844.00 ","Inglaterra","1993-12-21","zagueiro","Esquerdo",1.63),
(30," €  48,753,011.00 ","Italia","1990-08-23","centro avante","Ambidestro",1.70),
(31," €  38,676,015.00 ","França","2000-06-20","zagueiro","Ambidestro",1.92),
(32," €  33,002,188.00 ","França","1984-08-02","volante","Esquerdo",1.62),
(33," €  40,203,431.00 ","Colombia","2003-03-17","lateral","Esquerdo",1.93),
(34," €  38,719,435.00 ","Chile","1989-09-17","atacante","Esquerdo",1.74),
(35," €  9,706,779.00 ","Mexico","2002-08-13","centro avante","Direito",1.61),
(36," €  11,634,102.00 ","Argentina","1995-02-05","goleiro","Esquerdo",1.62),
(37," €  14,970,864.00 ","Brasil","1983-02-09","goleiro","Direito",1.65),
(38," €  12,148,783.00 ","Argentina","1989-05-02","atacante","Direito",1.70),
(39," €  30,806,956.00 ","Uruguai","1994-10-02","atacante","Direito",1.93),
(40," €  28,984,111.00 ","Chile","1987-06-09","lateral","Direito",1.64),
(41," €  29,791,155.00 ","Chile","1989-12-29","volante","Ambidestro",1.71),
(42," €  26,230,086.00 ","Inglaterra","2000-10-18","volante","Esquerdo",1.73),
(43," €  17,083,298.00 ","Espanha","2002-05-07","meia","Esquerdo",1.65),
(44," €  6,773,685.00 ","Uruguai","1993-07-18","ponta","Ambidestro",1.71),
(45," €  29,391,929.00 ","Italia","1998-01-27","meia","Ambidestro",1.90),
(46," €  5,100,368.00 ","Brasil","1986-03-11","meia","Direito",1.84),
(47," €  40,762,702.00 ","Mexico","2003-02-08","ponta","Ambidestro",1.75),
(48," €  12,955,626.00 ","França","1996-09-13","lateral","Ambidestro",1.85),
(49," €  33,169,744.00 ","Mexico","1987-08-31","zagueiro","Direito",1.95),
(50," €  27,629,793.00 ","Colombia","2001-03-15","zagueiro","Ambidestro",1.83),
(51," €  24,163,185.00 ","Uruguai","1998-02-12","lateral","Ambidestro",1.93);

/*Historico_tecnico*/
insert into historico_tecnico (id_tecnico, num_partidas,num_vitorias,num_derrotas,num_empates) values
(1,0,0,0,0),
(2,0,0,0,0),
(3,0,0,0,0),
(4,0,0,0,0),
(5,0,0,0,0),
(6,0,0,0,0),
(7,0,0,0,0),
(8,0,0,0,0);

select * from tecnico;
select * from nacionalidade;

/*Nacionalidade dos Tecnicos*/
insert into nacionalidade_tecnico (fk_tecnico,fk_nacionalidade) values
(1,1),
(1,2),
(2,4),
(3,1),
(3,4),
(4,13),
(4,1),
(5,2),
(6,4),
(6,2),
(7,1),
(8,13),
(8,2),
(8,3);

select id_jogador,pais_nasc from caracteristica_jogador;
select * from nacionalidade;

/*Nacionalidade dos Jogadores*/
insert into nacionalidade_jogador(fk_jogador,fk_nacionalidade) values
(1,7),
(2,11),
(3,8),
(4,3),
(4,6),
(5,11),
(6,8),
(7,1),
(9,7),
(10,8),
(11,4),
(12,6),
(12,1),
(13,11),
(14,7),
(15,12),
(16,7),
(17,9),
(18,12),
(19,8),
(20,4),
(21,7),
(21,4),
(22,2),
(22,1),
(23,3),
(23,11),
(24,11),
(25,4),
(26,3),
(27,6),
(28,8),
(28,2),
(29,12),
(30,10),
(31,9),
(31,10),
(32,9),
(33,5),
(34,8),
(35,11),
(36,3),
(36,2),
(37,1),
(38,3),
(39,7),
(40,8),
(41,8),
(42,12),
(42,1),
(43,4),
(44,7),
(45,10),
(46,1),
(47,11),
(48,9),
(49,11),
(50,5),
(51,7);

/*tecnicos do campeonato*/

select * from campeonato;
select nome from tecnico;
insert into tecnico_campeonato (dt_entrada, id_tecnico, id_campeonato) values
('2020-05-01',1,3000),
('2020-05-01',1,3100),
('2020-05-01',1,3300),
('2021-04-16',2,3000),
('2021-04-16',2,3100),
('2021-04-16',2,3300),
('2021-06-07',3,3000),
('2021-06-07',3,3100),
('2021-06-07',3,3300),
('2022-02-18',4,2000),
('2022-02-18',4,2100),
('2022-02-18',4,2300),
('2022-03-09',5,2000),
('2022-03-09',5,2100),
('2022-03-09',5,2300),
('2022-10-06',6,2000),
('2022-10-06',6,2100),
('2022-10-06',6,2300),
('2023-01-30',7,1000),
('2023-01-30',7,1100),
('2023-01-30',7,1200),
('2023-01-30',7,1300),
('2023-06-03',8,1000),
('2023-06-03',8,1100),
('2023-06-03',8,1200),
('2023-06-03',8,1300);

select * from titulo;
/*titulos e seus titulos*/
insert into tecnico_titulo (id_tecnico, id_titulo) value
(3,3),
(3,6),
(6,2),
(6,4),
(8,1),
(8,5);

/*Idolos*/

select fk_jogador, num_gols from historico_jogador;
select * from jogador where id_jogador = 4;
select * from caracteristica_jogador where id_jogador=4 ;

insert into idolo (id_idolo, fk_jogador, fk_tecnico, importancia) values
(1,4,null,'Guilherme é o jogador do Botafogo com mais gols na historia  do botafogo  e foi importante em diversos titulos do clube '),
(2,)


