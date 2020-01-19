create table qualquer(
    qql integer
);

insert into qualquer values(0);

select trunc(sysdate) 
from qualquer;

select add_months(to_date('12/12/2019', 'dd/MM/yyyy'), 1) 
from qualquer;

select add_months(to_date('29/01/2016','dd/MM/yyyy'),1)
from qualquer;

/* Valores negativos subtrai */
select add_months(to_date('29/01/2016','dd/MM/yyyy'),-1)
from qualquer;