select * from mysql.user;

/*comandos DCL*/
/*👇👇 aqui estamos criando um usuario para o banco de dados, identified e a senha*/
create user 'kayan'@'localhost' identified by '123456';

/*Concede ao usuario 'admin'@'localhost' usar o comando select no banco de dados db_paises em todas as tabelas*/

grant select on db_paises.* to  'kayan'@'localhost';
show grants for 'kayan'@'localhost';
grant insert on db_paises.* to 'kayan'@'localhost';
grant update on db_paises.* to 'kayan'@'localhost';

grant select, update, insert on sistema_vendas.* to 'kayan'@'localhost';
grant all privileges on  sistema_vendas.produto to 'kayan'@'localhost';

/*Aqui ele esta retirando dois previlegios*/
revoke drop, delete on sistema_vendas.* from 'kayan'@'localhost';
select user();

use sistema_vendas;

/*Comandos DTL*/

set autocommit = false; 
start transaction;
insert into produto (cod_produto, unidade, descricao, preco) values
(100,  'p','Camisa do Fogao', 150.00),
(101, 'z', 'monkey', 500.00);
commit;

select * from produto;

use world;
SELECT Name,population FROM country WHERE Population >= 1000000 AND Population <= 2000000;
SELECT Name,population FROM country WHERE Population BETWEEN 1000000 AND 2000000;
SELECT * FROM country LIMIT 5, 10;
SELECT * FROM country LIMIT 5, 10;
SELECT DISTINCT Language FROM countrylanguage WHERE Language LIKE '%ish';
SELECT DISTINCT Language FROM countrylanguage WHERE Language LIKE '_ish';
SELECT Name, Population FROM country ORDER BY Population DESC LIMIT 10;