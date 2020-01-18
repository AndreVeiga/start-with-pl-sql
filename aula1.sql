/* Criação das tabelas */
create table jogos (
    id integer not null,
    timeCasa varchar(255) not null,
    timeFora varchar (255) not null,
    golsCasa integer,
    golsFora integer,
    primary key (id)
);

/* Inserindo dados na tabela */
insert into jogos values (1, 'Grêmio', 'Internacional', 0, 0);

/* Retorna os dados da tabela */
select * from jogos;

/* Atualizando a tabela*/
update jogos set golsCasa = 2 where id = 1;

/* Deletando um campo da tabela*/
delete jogos where id = 1;