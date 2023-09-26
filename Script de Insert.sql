use db_botafogo;

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


insert into situacao (id_situacao, descricao)values
(100, 'Cotratado'),    
(101, 'Aposentado'),
(102, 'Emprestado'),
(103, 'Emprestimo'),
(104, 'Negociado');
    
insert into classificacao (id_campeonato, posicao, quantidade_partidas, pontos, num_derrotas, num_vitoria, num_empates, gols_pro, gols_contra) values
(1000, 1, 24, 51, 5, 16, 5, 39, 18),
(2000, 11, 38, 53, 15, 15, 8, 41, 43),
(3000, 20, 38, 27, 21, 5, 12, 23, 62 ),
(1100, null, 6, null, 1, 5, 0, 13 , 5),
(2100,null, 4, null, 2, 2, 0, 6, 5 ),
(3100,null, 2, null, 0,1,1,6,1),
(1200,null, 12, null, 1, 4, 7,17,10);




