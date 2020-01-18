
/* Comandos básicos de PL/SQL */
declare

    /* Declara com tipo dinâmico */
    NOME_TIME_CASA jogos.timeCasa%Type;
begin

    /* Cursor explicito */
    select timeCasa
    into NOME_TIME_CASA
    from jogos
    where id = 1; 

    /* Estrutura condicional  de PL/SQL */    
    if NOME_TIME_CASA = 'GRÊMIO' then
        DBMS_OUTPUT.put_line(NOME_TIME_CASA);
    else
        DBMS_OUTPUT.put_line(NOME_TIME_CASA);
    end if;
end;

/*
    -- comentários
    > maior que
    < menor que
    = igual 
    != diferente acima da versão 10g
    <> diferente
*/