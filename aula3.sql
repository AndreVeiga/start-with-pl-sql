create or replace procedure verificaNome(id number, nomeTime varchar2) 
is
    TIME_CASA jogos.timeCasa%Type;

begin

    select timeCasa
    into TIME_CASA
    from jogos
    where jogos.id = id;

    if TIME_CASA = nomeTime then
        DBMS_OUTPUT.put_line(TIME_CASA);
    else
        DBMS_OUTPUT.put_line('Não é o time que voce queria');
    end if;

end;


/* Chamando a Procedure criada */
begin
    verificaNome(id => 1, nomeTime => 'Grêmio');
end;