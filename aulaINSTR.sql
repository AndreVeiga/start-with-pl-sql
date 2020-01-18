create table qualquerCoisa (
    seila varchar(255)
);

insert into qualquerCoisa values ('Qualquer coisa');

/* Retorna a posição da primeira aparição da letra s */
select INSTR('Frase de teste', 's') from qualquerCoisa; -- Retorno 4

/* Retorna a posição da primeira aparição da letra s 
 * apartir da posição 5
 */
select INSTR('Frase de teste', 's', 5) from qualquerCoisa; -- Retorno 12

/* Retorna a posição da primeira aparição da letra s 
 * contando da direita para esquerda apartir da posição 5
 */
select INSTR('Frase de teste', 's', -5) from qualquerCoisa; -- Retorno 4

/* Função dentro de função */
select substr('Aprendendo PL-SQL no final de semana',
        instr( 'Aprendendo PL-SQL no final de semana','A'), 17)
from qualquerCoisa;