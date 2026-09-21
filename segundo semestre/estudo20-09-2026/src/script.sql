create table produto
(
    id_produto    number primary key,
    nome_produto  varchar2(100),
    preco_produto number(10, 2),
    estoque       number
);

insert into PRODUTO (id_produto, nome_produto, preco_produto, estoque)
VALUES (10, 'Mouse', 120, 10);

insert into PRODUTO (id_produto, nome_produto, preco_produto, estoque)
VALUES (11, 'Teclado', 250.50, 5);

insert into PRODUTO (id_produto, nome_produto)
VALUES (12, 'Headset');

insert into PRODUTO
VALUES (13, 'Notebook', 4500, 3);

insert into PRODUTO (id_produto, nome_produto, preco_produto, estoque)
VALUES (14, 'Monitor', 1500, 7);

insert into produto (id_produto, nome_produto, preco_produto, estoque)
values (15, 'Gabinete gamer', 680.99, 10);

insert into produto (id_produto, nome_produto, preco_produto, estoque)
values (16, 'Celular Xiaomi', 1800, 20);

insert into produto (id_produto, nome_produto, preco_produto, estoque)
values (17, 'Fone de Ovido In-ear', 350, 20);

insert into produto (id_produto, nome_produto, preco_produto, estoque)
values (18, 'Umidificador de Ar', 70, 10);

select *
from produto;

select nome_produto, preco_produto
from produto;

select *
from produto
where id_produto = 5;

select *
from PRODUTO
where id_produto != 5;

select *
from PRODUTO
where estoque = 10;

select *
from PRODUTO
where preco_produto > 1000;

select *
from PRODUTO
where preco_produto >= 1500;

select *
from produto
where preco_produto < 500;

select *
from produto
where nome_produto = 'Mouse';

select *
from produto
order by preco_produto;

select *
from produto
order by id_produto desc;

select *
from PRODUTO
where preco_produto > 500
order by preco_produto desc;

-- Exercício 01
select *
from produto
where preco_produto > 500;

-- Exercício 02
select nome_produto, preco_produto
from produto
where estoque >= 10;

-- Exercício 03
select *
from produto
where estoque <> 20;

-- Exercício 04
select nome_produto, preco_produto
from produto
order by preco_produto desc;

-- Exercício 05
select *
from produto
where preco_produto <= 350
order by preco_produto;

select *
from produto
where preco_produto > 500
  and estoque >= 10;

select *
from produto
where preco_produto > 1000
   or estoque = 10;

select *
from produto
where (preco_produto > 1000 or estoque = 10)
  and preco_produto < 2000;

select *
from produto
where preco_produto > 500
  and estoque >= 10;

select *
from produto
where preco_produto > 1000
   or estoque = 20;

-- Exercício 01
select *
from produto
where preco_produto > 500
  and estoque >= 10;

-- Exercício 02
select *
from produto
where preco_produto > 1500
   or estoque = 5;

-- Exercício 03
select nome_produto, preco_produto, estoque
from produto
where preco_produto < 1000
  and estoque > 5
order by preco_produto desc;

-- Exercício 04
select *
from produto
where estoque = 10
   or estoque = 20;

-- Exercício 05
select *
from produto
where preco_produto > 500
  and (estoque = 10 or estoque = 20);

select *
from produto
where estoque in (5, 7, 10, 20);

select *
from produto
where nome_produto in ('Mouse', 'Monitor', 'Notebook');

select *
from produto
where estoque not in (10, 20);

select *
from produto
where preco_produto in (4500, 70, 350);

select *
from produto
where estoque not in (3, 20, 10);

-- Exercício 01
select *
from produto
where estoque in (10, 20);

-- Exercício 02
select *
from produto
where estoque in (3, 5, 7);

-- Exercício 03
select nome_produto, preco_produto
from produto
where nome_produto in ('Mouse', 'Monitor', 'Notebook');

-- Exercício 04
select *
from produto
where estoque not in (10, 20);

-- Exercício 05

select nome_produto, preco_produto, estoque
from produto
where estoque in (10, 20)
  and preco_produto > 500;

select *
from produto
where preco_produto between 500 and 2000;

select *
from produto
where preco_produto not between 500 and 2000;

select *
from produto
where preco_produto between 500 and 2000
  and estoque >= 10;

-- Exercício 01
select *
from produto
where preco_produto between 100 and 1000;

-- Exercício 02
select nome_produto, preco_produto
from produto
where preco_produto between 1000 and 2000;

-- Exercício 03
select *
from produto
where estoque between 5 and 15;

-- Exercício 04
select *
from produto
where preco_produto not between 500 and 2000;

-- Exercício 05
select nome_produto, preco_produto, estoque
from produto
where preco_produto between 500 and 2000
  and estoque in (10, 20);

select *
from produto
where nome_produto like 'M%';

select *
from produto
where nome_produto like '%o';

select *
from produto
where nome_produto like '%m%';

select *
from produto
where nome_produto like '%mi%';

select *
from produto
where nome_produto like '%ar';

select *
from produto
where nome_produto like 'Ga%';

select *
from produto
where nome_produto like 'M______';

select *
from produto
where nome_produto not like 'M%';

select *
from produto
where nome_produto like '%o%'
  and preco_produto > 500;

select *
from produto
where nome_produto like '%o%'
  and estoque in (10, 20)
  and preco_produto between 500 and 2000;

-- Exercício 01
select *
from produto
where nome_produto like 'M%';

-- Exercício 02
select *
from produto
where nome_produto like 'N%';

-- Exercício 03
select *
from produto
where nome_produto like '%de%';

-- Exercício 04
select *
from produto
where nome_produto not like 'M%';

-- Exercício 05
select nome_produto, preco_produto, estoque
from produto
where nome_produto like '%o%'
  and preco_produto between 300 and 2000;

select *
from produto
where preco_produto is null;

select *
from produto
where preco_produto is not null;

select *
from produto
where preco_produto is not null
  and estoque >= 10;

select *
from produto
where preco_produto is null
  and estoque is null;

select *
from produto
where preco_produto is null
   or estoque is null;

-- Exercício 01
select *
from produto
where preco_produto is null;

-- Exercício 02
select *
from produto
where estoque is null;

-- Exercício 03
select *
from produto
where preco_produto is not null
  and estoque is not null;

-- Exercício 04
select *
from produto
where preco_produto is null
   or estoque is null;

-- Exercício 05
select nome_produto, preco_produto, estoque
from produto
where preco_produto is not null
  and estoque in (10, 20)
  and preco_produto between 300 and 2000;

select count(*)
from produto;

select count(preco_produto)
from produto;

select sum(preco_produto)
from produto;

select sum(estoque)
from produto;

select avg(preco_produto)
from produto;

select min(preco_produto)
from produto;

select max(preco_produto)
from produto;

select count(*)           as quantidade,
       min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco,
       avg(preco_produto) as media_preco,
       sum(preco_produto) as soma_precos
from produto;

select avg(preco_produto)
from produto
where estoque >= 10;

select count(*)
from produto
where preco_produto > 1000;

select *
from produto
where preco_produto > (select avg(preco_produto) from produto);

-- Exercício 01
select count(*)
from produto;

-- Exercício 02
select count(preco_produto)
from produto;

-- Exercício 03
select min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco
from produto;

-- Exercício 04
select avg(preco_produto) as media_precos
from produto
where estoque in (10, 20);

-- Exercício 05
select count(*)           as quantidade_produtos,
       sum(estoque)       as total_estoque,
       avg(preco_produto) as media_precos,
       min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco
from produto;

-- Exercício 01
select count(*)
from produto;

-- Exercício 02
select count(preco_produto)
from produto;

-- Exercício 03
select min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco
from produto;

-- Exercício 04
select avg(preco_produto) as media_precos
from produto
where estoque in (10, 20);

-- Exercício 05
select count(*)           as total_produtos,
       sum(estoque)       as total_estoque,
       avg(preco_produto) as media_precos,
       min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco
from produto;

select *
from produto
where preco_produto > (select avg(preco_produto) from produto);

select *
from produto
where preco_produto = (select max(preco_produto) from produto);

select *
from produto
where preco_produto = (select min(preco_produto) from produto);

select *
from produto
where preco_produto > (select avg(preco_produto) from produto where estoque = 10);

-- Exercício 01
select *
from produto
where preco_produto > (select avg(preco_produto) from produto);

-- Exercício 02
select *
from produto
where preco_produto = (select max(preco_produto) from produto);

-- Exercício 03
select *
from produto
where preco_produto = (select min(preco_produto) from PRODUTO);

-- Exercício 04
select *
from produto
where preco_produto < (select avg(preco_produto) from produto);

-- Exercício 05
select *
from produto
where preco_produto > (select avg(preco_produto) from produto where estoque = 10);

select *
from produto
where estoque in (select estoque
                  from produto
                  where preco_produto > 1000);

select *
from produto
where estoque in (select estoque from produto where preco_produto > 1000);

select *
from produto
where estoque not in (select estoque from produto where preco_produto > 1000);

select estoque
from produto;

-- Exercício 01
select *
from produto
where estoque in (select estoque from produto where preco_produto > 1000);

-- Exercício 02
select *
from produto
where estoque in (select estoque from produto where preco_produto between 500 and 2000)
order by id_produto;

-- Exercício 03
select nome_produto, preco_produto, estoque
from produto
where estoque in (select estoque from produto where preco_produto < 500);

-- Exercício 04
select *
from produto
where estoque not in (select estoque from produto where preco_produto > 1000);

-- Exercício 05
select nome_produto, preco_produto, estoque
from produto
where preco_produto > 300
  and estoque in (select estoque from produto where preco_produto between 1000 and 2000);

update produto
set preco_produto = 500
where id_produto = 1;

update produto
set preco_produto = 300,
    estoque       = 15
where id_produto = 2;

update produto
set preco_produto = preco_produto * 1.10
where id_produto = 1;

update produto
set preco_produto = preco_produto * 0.9
where id_produto = 1;

update produto
set preco_produto = preco_produto * 1.10
where estoque in (10, 20);

update produto
set preco_produto = preco_produto * 1.5
where preco_produto between 500 and 2000;

update produto
set preco_produto = preco_produto * 0.5
where nome_produto like 'M%';

update produto
set preco_produto = preco_produto * 1.1
where preco_produto < (select avg(preco_produto) from produto);

update produto
set preco_produto = preco_produto * 1.05
where estoque in (select estoque
                  from produto
                  where preco_produto > 1000);

savepoint antes_updates;


-- Exercício 01
update produto
set preco_produto = 150
where id_produto = 1;

-- Exercício 02
update produto
set preco_produto = preco_produto * 1.1
where estoque = 10;

-- Exercício 03
update produto
set preco_produto = preco_produto * 1.05
where preco_produto between 500 and 2000;

-- Exercício 04
update produto
set preco_produto = preco_produto * 1.1
where preco_produto < (select avg(preco_produto) from produto);

-- Exercício 05
update produto
set preco_produto = preco_produto * 1.05
where estoque in (select estoque from produto where preco_produto > 1000);

-- Exercício 01
delete
from produto
where id_produto = 1;

-- Exercício 02
delete
from produto
where estoque in (10, 20);

-- Exercício 03
delete
from produto
where preco_produto between 500 and 2000;

-- Exercício 04
delete
from produto
where preco_produto < (select avg(preco_produto) from produto);

-- Exercício 05
delete
from produto
where estoque in (select estoque from produto where preco_produto > 1000);

select *
from produto;

-- Select, where e order by
-- Exercício 01
select *
from produto
where preco_produto > 500;

-- Exercício 02
select nome_produto, preco_produto
from PRODUTO
where estoque >= 10;

-- Exercício 03
select *
from produto
where estoque <> 20;

-- Exercício 04
select nome_produto, preco_produto
from produto
order by preco_produto desc;

-- Exercício 05
select *
from produto
where preco_produto <= 350
order by preco_produto;

-- AND e OR
-- Exercício 01
select *
from produto
where preco_produto > 500
  and estoque >= 10;

-- Exercício 02
select *
from produto
where preco_produto > 1500
   or estoque = 5;

-- Exercício 03
select nome_produto, preco_produto, estoque
from produto
where preco_produto < 1000
  and estoque > 5
order by preco_produto desc;

-- Exercício 04
select *
from produto
where estoque in (10, 20);

-- Exercício 05
select *
from produto
where preco_produto > 500
  and estoque in (10, 20);

-- IN e NOT IN
-- Exercício 01
select *
from produto
where estoque in (10, 20);

-- Exercício 02
select *
from produto
where estoque in (3, 5, 7);

-- Exercício 03
select nome_produto, preco_produto
from produto
where nome_produto in ('Mouse', 'Monitor', 'Notebook');

-- Exercício 04
select *
from produto
where estoque not in (10, 20);

-- Exercício 05
select *
from produto
where estoque in (10, 20)
  and preco_produto > 500;

-- Between e Not Between
-- Exercício 01
select *
from produto
where preco_produto between 100 and 1000;

-- Exercício 02
select nome_produto, preco_produto
from produto
where preco_produto between 1000 and 2000;

-- Exercício 03
select *
from produto
where estoque between 5 and 15;

-- Exercício 04
select *
from produto
where preco_produto not between 500 and 2000;

-- Exercício 05
select *
from produto
where preco_produto between 500 and 2000
  and estoque in (10, 20);

-- Like e Not Like
-- Exercício 01
select *
from produto
where nome_produto like 'M%';

-- Exercício 02
select *
from produto
where nome_produto like 'N%';

-- Exercício 03
select *
from produto
where nome_produto like '%de%';

-- Exercício 04
select *
from produto
where nome_produto not like 'M%';

-- Exercício 05
select nome_produto, preco_produto, estoque
from produto
where nome_produto like '%o%'
  and preco_produto between 300 and 2000;

-- IS NULL e IS NOT NULL
-- Exercício 01
select *
from produto
where preco_produto is null;

-- Exercício 02
select *
from produto
where estoque is null;

-- Exercício 03
select *
from produto
where preco_produto is not null
  and estoque is not null;

-- Exercício 04
select *
from produto
where preco_produto is null
   or estoque is null;

-- Exercício 05
select *
from produto
where preco_produto is not null
   or (estoque in (10, 20) and preco_produto between 3000 and 2000);

-- Funções agregadoras
-- Exercício 01
select count(*)
from produto;

-- Exercício 02
select count(*)
from produto
where preco_produto is not null;

-- Exercício 03
select min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco
from produto;

-- Exercício 04
select avg(preco_produto)
from produto
where estoque in (10, 20);

-- Exercício 05
select count(*)           as total_produtos,
       sum(estoque)       as soma_estoque,
       avg(preco_produto) as media_precos,
       min(preco_produto) as menor_preco,
       max(preco_produto) as maior_preco
from produto;

-- Subqueries escalares
-- Exercício 01
select *
from produto
where preco_produto > (select avg(preco_produto) from PRODUTO);

-- Exercício 02
select *
from produto
where preco_produto = (select max(preco_produto) from produto);

-- Exercício 03
select *
from produto
where preco_produto = (select min(preco_produto) from PRODUTO);

-- Exercício 04
select *
from produto
where preco_produto < (select avg(preco_produto) from produto);

-- Exercício 05
select *
from produto
where preco_produto > (select avg(estoque) from produto where estoque = 10);