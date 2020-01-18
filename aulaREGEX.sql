create table QualquerCoisa
(
    seila varchar(255)
);

insert into QualquerCoisa values ('teste');


/*
 * Criando uma regex em Oracle
 * Parametros:
 * (1,2,3,4,5,6)
 *
 * 1 = Onde vai buscar os dados.
 * 2 = Parametro que vai procurar no parametro 1.
 * 3 = onde começa a busca.
 * 4 = a ocorrÊncia que quero retornar.
 * 5 = Se quer exatamente essa posição ou a próxima.
 * 6 = i para inSensitive ou c para caseSensitive.
 */

 select regex_instr('Aprendendo PL-SQL no final de semana',
    'a', 1, 1, 0, 'i'
 ) from QualquerCoisa;

/* Retorna a primeira vogal sendo caseSensitive*/
select regex_instr('Aprendendo PL-SQL no final de semana','a|e|i|o|u') 
from QualquerCoisa;

