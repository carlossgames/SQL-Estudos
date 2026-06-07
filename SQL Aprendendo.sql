-- Banco de Dados
create database informatica;
use informatica;

-- Criando a Tabela
create table cliente(
   id int,
   nome varchar(30) not null
);
-- Testando comandos
show databases;
alter table cliente add Senhas date;
drop table cliente;

-- Aprendendo a manipular a tabela
insert into cliente (id, nome)
values (20, 'Carlos'), (10, 'Maria');

-- Apredendo a atualizar dados
update cliente
set nome = ('carlosindigena'),
	id = 15
where id = 20;

-- Aprendendo a deletar dados
delete from cliente
where id < 20;

select * from cliente;

-- Codigo que faz funcionar certos tipos de comandos
set sql_safe_updates = 0;

-- Criando Backup
create table backup_cliente select * from cliente;
select * from backup_cliente;
desc backup_cliente;
truncate backup_cliente;
insert into backup_cliente select * from cliente;

-- Condição com "Where"
select * from cliente where id > 11;
-- Condição com nome
select * from cliente where nome = 'maria';
select * from cliente where nome like 'C%';
-- Condição se é True(1) ou False(0)
select * from cliente where cadastro_ativo = true;
-- Condiçao com Data
select * from cliente where data_nascimento > '1990';
select * from cliente where year (data_nascimento) > '1990'; -- (>)Vai procurar de 1990 pra cima
														   -- (<)Vai procurar de 1990 pra baixo
                                                           -- (<>)Vai procurar algo diferente do valor digitado
                                                           -- (=)Busca algo igual ao valor digitado
-- Ordenação
select * from cliente order by nome desc;
select * from cliente order by nome desc, id asc;
select id from cliente order by id; -- Deixando nada é o mesmo que 'asc'

-- Limitação 
select * from cliente limit 1;
select * from cliente order by id desc limit 2; -- Obs: Desc Z-A, ASC A-Z
-- Offset = Pula quantidade de registro é mostra apenas oque esta no 'limit'
select * from cliente order by nome asc limit 2 offset 1;