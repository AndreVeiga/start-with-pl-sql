/*
 * Função DECODE de PL-SQL
 * Semelhante a uma if-else
 */

 create table programador
 (
    nome varchar(255),
    funcao varchar(255),
    salario numeric
 );

 insert into programador values ('Jose', 'DBA', 2500);
 insert into programador values ('Joao', 'FrontEnd', 2500);
 insert into programador values ('Helena', 'DevOps', 2500);
 insert into programador values ('Silvana', 'BackEnd', 2500);

/* 
 * Diferentes formas de execução
 */
select nome, funcao, salario, decode(funcao,'DevOps', salario * 1.5, salario * 1.1)
from programador;

select nome, funcao, salario, decode(funcao,'DevOps', salario * 1.5)
from programador;

select nome, funcao, salario, decode(funcao,'DevOps', salario * 1.5, salario)
from programador;

/* Com mais de um IF */
select nome, funcao, salario, decode(funcao,'DevOps', salario * 1.5,'DBA',salario * 1.1)
from programador;

/* O mesmo de cima, porém formatado para melhor compreensão */
select nome, funcao, salario, 
    decode( funcao,'DevOps', salario * 1.5,
                    'DBA',salario * 1.1) 
from programador;

/* Adicionado o else final */
select nome, funcao, salario, 
    decode(funcao,'DevOps', salario * 1.5,
                    'DBA',  salario * 1.1,
                            salario ) 
from programador;
