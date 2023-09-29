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

alter table classificacao add column fase varchar(50);
alter table classificacao modify column posicao int;
alter table classificacao modify column pontos tinyint;
  
update campeonato set ano = 2020 where id_campeonato = 3000; 

/*Tecnicos*/
insert into tecnico (id_tecnico, nome, dt_nasc, pais_nasc,foto)values
	(1, 'João Silva', '1990-05-15', 'Brasil', null),
    (2, 'Maria Santos', '1985-08-22', 'Portugal', null),
    (3, 'Pedro Pereira', '1993-03-10', 'Espanha', null),
    (4, 'Ana Oliveira', '1982-11-30', 'Itália', null),
    (5, 'Carlos Fernandes', '1988-07-05', 'brasil', null),
    (6, 'Sofia Rodrigues', '1995-02-18', 'França', null),
    (7, 'Ricardo Costa', '1997-09-25', 'Alemanha', null),
    (8, 'Luísa Mendes', '1991-04-12', 'brasil', null),
    (9, 'António Almeida', '1986-06-07', 'Portugal', null),
    (10, 'Isabel Ferreira', '1989-01-20', 'Brasil', null),
    (11, 'Gustavo Santos', '1994-07-03', 'Espanha', null),
    (12, 'Mariana Vieira', '1983-12-15', 'Itália', null),
    (13, 'André Silva', '1996-10-08', 'brasil', null),
    (14, 'Lúcia Costa', '1987-03-28', 'França', null),
    (15, 'Tiago Pereira', '1992-09-13', 'Alemanha', null);

/*Classificaçao*/
insert into classificacao (id_campeonato, posicao, quantidade_partidas, pontos, num_derrotas, num_vitoria, num_empates, gols_pro, gols_contra) values
(1000, 1, 24, 51, 5, 16, 5, 39, 18),
(2000, 11, 38, 53, 15, 15, 8, 41, 43),
(3000, 20, 38, 27, 21, 5, 12, 23, 62 ),
(1100, null, 6, null, 1, 5, 0, 13 , 5),
(2100,null, 4, null, 2, 2, 0, 6, 5 ),
(3100,null, 2, null, 0,1,1,6,1),
(1200,null, 12, null, 1, 4, 7,17,10);



/*Titulos Ganhos*/
insert into titulo (id_titulo,nome,ano,fk_campeonato)values
(1, 'Campeao Brasileiro', 2023,1000),
(2, 'Campeao Brasileiro', 2022,2000),
(3, 'Campeao Copa do Brasil', 2021,3100),
(4, 'Campeao Copa do Brasil', 2022,2100),
(5, 'Campeao Sul-Americano', 2023,1200);

insert into historico_jogador (fk_jogador, dt_contratacao, dt_fimcontrato, num_assistencia, num_gols, num_jogos, num_titulo,foto) values
(1,'2019-12-27','2023-08-24',50, 150, 100 ,2, null),
(2,'2018-12-10','2024-01-29',0, 25,0, null),
(3, '2018-09-30','2022-07-08',4, 1,0, null),
(4,'2023-02-23','2024-10-06',10, 1,0, null),
(5,'2019-06-23','2021-11-04',2, 0, null),
(6,'2021-06-15','2024-11-22',10,38, null),
(7,'2019-02-05','2022-12-28',180,38, null),
(8,'2020-02-01','2022-06-18',137,68, null),
(9,'2018-07-27','2024-10-05',17,8, null),
(10,'2019-04-22','2023-10-17',84,41, null),
(11,'2019-09-21','2024-11-23',48,7, null),
(12,'2022-06-22','2024-04-14',1,6, null),
(13,'2020-04-14','2022-10-16',10,17, null),
(14,'2018-12-12','2023-08-19',17,87, null),
(15,'2019-06-30','2023-10-22',47,17, null),
(16,'2019-12-29','2022-04-16',65,78, null),
(17,'2018-04-08','2021-02-25',0,0, null ),
(18,'2018-07-24','2024-04-03',4,1, null),
(19,'2020-08-03','2022-12-08',123,54, null),
(20,'2019-10-07','2024-25-10',23,14, null),
(21,'2020-05-30','2024-06-07',7,14, null),
(22,'2023-03-13','2024-19-08',65,30, null),
(23,'2023-02-19','2023-17-06',25,40, null),
(24,'2021-11-21','2024-04-18',79,25, null),
(25,'2021-04-03','2023-05-28',45,5, null 	),
(26,'2018-12-12','2023-05-09',19,57, null),
(27,'2019-09-18','2022-07-19',260,77, null),
(28,'2018-10-18','2024-01-30',198,150, null),
(29,'2023-04-13','2025-04-27',10,2, null),
(30,'2021-09-15','2023-04-15',45,6, null),
(31,'2020-04-08','2021-01-08',89,10, null),
(32,'2020-05-07','2022-04-10',46,170, null ),
(33,'2022-07-11','2023-06-09',17,8, null),
(34,'2021-09-14','2025-01-19',200,79, null),
(35,'2020-03-12','2024-01-22',140,49, null),
(36,'2020-02-01','2021-11-27',4,9, null),
(37,'2018-09-10','2022-12-06',45,9, null),
(38,'2019-03-30','2023-07-27',78,90, null),
(39,'2018-02-22','2021-06-11',48,70, null),
(40,'2021-03-04','2024-10-08',79,180, null),
(41,'2023-05-22','2024-07-15',69,32, null),
(42,'2019-02-02','2021-02-22',58,30, null),
(43,'2023-03-05','2024-02-16',12,3, null),
(44,'2019-05-10','2023-05-24',468,189, null),
(45,'2021-05-02','2023-07-18',8,19, null),
(46,'2022-09-01','2024-12-23',17,19, null),
(47,'2018-11-04','2023-03-05', 89,78, null),
(48,'2020-07-13','2022-05-12', 45,13, null),
(49,'2019-07-14','2021-06-06', 30,24, null),
(50,'2022-09-17','2023-11-16', 170,16, null),
(51,'2022-12-15','2023-06-21', 70,45, null);









