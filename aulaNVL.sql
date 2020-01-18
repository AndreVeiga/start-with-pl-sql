/*
 * Usando a função NVL do Oracle
 * Essa função substitui um valor nulo 
 * pelo que for passado a ela.
 */

create table linguagem
(
    id integer not null primary key,
    nome varchar(255) not null,
    autor varchar(255),
    ano integer
);

insert into linguagem values (1, 'C', 'Dennis Ritchie', 1970);
insert into linguagem values (2, 'Java', 'James Gosling', 1992);
insert into linguagem (id, nome) values (3, 'Cobol');

/* Ano do Cobol retorna nulo */
select nome, ano from linguagem;

/* Ano do Cobol será 0 */
select nome, NVL(ano,0) from linguagem;

/* Dará erro Number não aceita tipo char
 * Mas char aceita tipo Number
 */
select nome, NVL(ano, 'sem ano datado') from linguagem;

/* 
 * Usando o distinct apenas fora do NVL
 */
select distinct NVL(ano, 0) from linguagem;

/*
 * Variação do NVL
 * Exibe se existir valor a primeira coluna senão a segunda.
 */
select nome, NVL2(autor, 'com autor', 'sem autor') from linguagem;