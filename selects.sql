use db_botafogo;
#listar todos os dados dos jogadores e respectivos historicos
select nome, cj.*,hj.* from jogador as j inner join caracteristica_jogador as cj on j.id_jogador = cj.id_jogador
inner join historico_jogador as hj on j.id_jogador = hj.fk_jogador;

#listar o time, campeonato e classificação
select c.nome,c.ano, cl.* from campeonato as c inner join classificacao as cl on c.id_campeonato = cl.id_campeonato; 

#listar jogadores, caracteristicas e respectivos titulos

select j.nome,cj.*, t.nome, t.ano from jogador as j inner join caracteristica_jogador as cj on j.id_jogador = cj.id_jogador
inner join jogador_titulo as jt on j.id_jogador = jt.id_jogador
inner join titulo as t on jt.id_titulo = t.id_titulo; 

#listar todos os jogos do campeonato Brasileiro de 2022

select * from jogo as j inner join campeonato as c on c.id_campeonato = j.fk_campeonato where c.id_campeonato = 2000;  

#listar jogador e dados somente dos idolos

select nome, cj.*,hj.* from jogador as j inner join caracteristica_jogador as cj on j.id_jogador = cj.id_jogador
inner join idolo as i on j.id_jogador = i.fk_jogador
inner join historico_jogador as hj on j.id_jogador = hj.fk_jogador;

#listar todos os titulos, campeonato e tecnico

select t.nome as titulo,c.nome as campeonato,tc.nome as tecnico from titulo as t inner join campeonato as c on c.id_campeonato = t.fk_campeonato
inner join tecnico_titulo as tt on t.id_titulo = tt.id_titulo
inner join tecnico as tc on tt.id_tecnico = tc.id_tecnico;

#listar dados do jogo que teve o maior numero de gols

select * from jogo where gols_contra = (select max(gols_contra) from jogo) and gols_pro = (select max(gols_pro) from jogo);

#listar todos os jogadores que estão jogando ou jogaram o campeonato sul-americano

select j.nome from jogador as j inner join jogador_campeonato as jc on j.id_jogador = jc.id_jogador
inner join campeonato as c on jc.id_campeonato = c.id_campeonato where c.id_campeonato = 1200; 

#listar os jogadores de nacionalidade brasileiro ou Argentino

select j.nome, nm_nacionalidade from jogador as j inner join nacionalidade_jogador as nj on j.id_jogador = nj.fk_jogador
inner join nacionalidade as n on nj.fk_nacionalidade = n.id_nacionalidade where n.nm_nacionalidade in ('Brasileiro','Argentino');

#selecionar o jogador com maior numero de gols 

select nome, num_gols from jogador as j 
inner join historico_jogador as hr on j.id_jogador = hr.fk_jogador where hr.num_gols = (select max(num_gols) from historico_jogador) ;
 
delimiter @
drop procedure if exists sp_adc_jogador @
create procedure sp_adc_jogador(id int, nm varchar(80))
begin 
insert jogador (id_jogador, nome)
values (id, nm);
end @
delimiter ;

call sp_adc_jogador(52, 'Kayan Cardoso Soares');


delimiter @
drop procedure if exists sp_adc_historico @
create procedure sp_adc_historico(dt_cont date, dt_fim_cont date, num_ass smallint, num_gol smallint, num_jog smallint, num_tit smallint, fot text, fk_jog int)
begin
insert historico_jogador (dt_contratacao, dt_fimcontrato, num_assistencia, num_gols, num_jogos, num_titulo, foto, fk_jogador )
values (dt_cont, dt_fim_cont, num_ass, num_gol, num_jog, num_tit, fot, fk_jog);
end @
delimiter ;

call sp_adc_historico ('2021-06-09','2025-06-05', 0,0,0,0,null,52);

SET SQL_SAFE_UPDATES = 1;

use db_botafogo;
delimiter @
drop trigger if exists tr_atualizar_gols @
create trigger tr_atualizar_gols 
	after insert on jogo 
for each row
begin 
if new.gols_pro >= 0 or new.gols_contra >= 0  then
	update classificacao as c  set gols_pro = gols_pro + new.gols_pro where c.id_campeonato = new.fk_campeonato ;
    update classificacao as c  set gols_contra = gols_contra + new.gols_contra where c.id_campeonato = new.fk_campeonato ;
end if;
end @
delimiter ;


delimiter @
drop trigger if exists tr_atualizar_gols @
create trigger tr_atualizar_gols 
	after insert on jogo 
for each row
begin 
	declare gols_p tinyint ;
    declare id int;
	select gols_pro, fk_campeonato into gols_p, id from jogo ;
    
if new.gols_pro >= 0 or new.gols_contra >= 0 then
	update classificacao as c  set gols_pro = gols_p where c.id_campeonato = id ;
end if;
end @
delimiter ;

insert into jogo (id_jogo, fk_campeonato,resultado,estadio,tipo_participante,data_jogo,cidade,pais,gols_pro,gols_contra)values
(185,3300,'Empate','Nilton Santos','Mandante','2021-11-15','Rio de Janeiro','brasil',5,5);


select count(id_jogo),sum(gols_pro), fk_campeonato from jogo group by fk_campeonato ;

select * from classificacao;



