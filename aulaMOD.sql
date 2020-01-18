/*
 * MOD traz o resta da divisão
 */

 create table programador
 (
    nome varchar(255),
    salario integer
 );

 insert into programador values ('Jose', 10000);
 insert into programador values ('Joao', 8500);
 insert into programador values ('Maria', 11500);
 insert into programador values ('Pedro', 4500);

/*
 * Projeta nome, salario e o resto do salario por 5000.
 */
 select nome, salario, mod(salario, 5000) from programador;

 /*
  * Exemplo da função MOD
  * Para cada linha na tabela programador, será apresentado o 2.
  */
 select MOD(14,2) from programador;

/*
 * A função floor arredonda para baixo. 
 * Intermamente, a função mod é assim:
 */
 select (14 - (3 * floor(14/3))) from programador;
