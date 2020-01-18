create table qualquerCoisa (
    seila varchar(255)
);

insert into qualquerCoisa values ('Qualquer coisa');

/* Retorna a data de hoje */
select trunc(sysdate) as Hoje 
from qualquerCoisa;

/* Retorna ultimo dia do mês */
select trunc(sysdate) as Hoje, 
        last_day(trunc(sysdate)) as ultimo 
from qualquerCoisa;

/* Função para Datas e o last_day do Oracle */
select last_day(to_date('12/02/2016', 'dd/MM/yyyy')) as ultimo 
from qualquerCoisa;