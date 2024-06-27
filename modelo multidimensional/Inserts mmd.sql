DROP PROCEDURE IF EXISTS carga_dimensao_tempo;
DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `carga_dimensao_tempo` (IN `startdate` DATE, IN `stopdate` DATE)   BEGIN
    DECLARE currentdate DATE;
    SET currentdate = startdate;
    WHILE currentdate <= stopdate DO
        INSERT INTO dimtempo VALUES (
            YEAR(currentdate)*10000+MONTH(currentdate)*100 + DAY(currentdate),
            -- currentdate,
            YEAR(currentdate),
            MONTH(currentdate),
            DAY(currentdate),
			-- FLOOR(1 + (month(currentdate) - 1) / 2), #bimestre
            -- FLOOR(1 + (month(currentdate) - 1) / 6), #semestre
            DATE_FORMAT(currentdate,'%W'),
            DATE_FORMAT(currentdate,'%M')
            -- CASE DAYOFWEEK(currentdate) WHEN 1 THEN 'T' WHEN 7 then 'T' ELSE 'F' END
            );
        SET currentdate = ADDDATE(currentdate,INTERVAL 1 DAY);
    END WHILE;
END$$

DELIMITER ;

CALL carga_dimensao_tempo('2021-01-01','2021-12-31');


-- inserts dimenção estado  2
insert into dim_estado(uf)
SELECT distinct uf FROM stanging.acidentes_semacentos2novo;

-- Inserts dimenção causa acidentes 3
insert into dim_causa_acidente(nm_causa)
SELECT distinct causa_acidente FROM stanging.acidentes_semacentos2novo;

-- Inserts condição meteorologica 4
insert into dim_cond_metereologica(nm_cond_metereologica)
SELECT distinct condicao_metereologica FROM stanging.acidentes_semacentos2novo;

-- Inserts fase do dia 5

insert into dim_fase_dia(nm_fase_dia)
SELECT distinct fase_dia FROM stanging.acidentes_semacentos2novo;

-- Inserts tipo do acidente 6

insert into dim_tipo_acidente(nm_tipo_acidente)
SELECT distinct tipo_acidente FROM stanging.acidentes_semacentos2novo;

-- Inserts tipo pista 7

insert into dim_tipo_pista(nm_tipo_pista )
SELECT distinct tipo_pista FROM stanging.acidentes_semacentos2novo;





