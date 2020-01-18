/*
 * Select para trazer os salarios dos 5 programadores
 * ordenando pelo salario mais alto.
 * Dessa forma, ele trazia os 5 primeiros e ordenava
 * entre eles quem tinha o maior salario.
 */

select * from programadores
where rownum <= 5
order by salario desc;

/*
 * Resolvendo o problema com uma sub consulta.
 */

select dev.* from 
(select * from programadores order by salario) dev
where rownum <= 5;

/*
 * Feature adicionada para resolver a questão
 */

select * from programadores
order by salario desc
fetch first 5 row only;


/*
 * Resolve a questão permitindo trazer a ultima linha repetidas
 * vezes se ela se encaixar na clausula.
 */

select * from programadores
order by salario desc
fetch first 5 row with TIES;

/*
 * Ordenação com paginação.
 */

 select * from programadores
 order by salario desc
 offset 3 rows;

 /*
  * Ordenação com paginação e 
  * onde começa e quantos retornar. 
  */
  select * from programadores
  order by salario desc
  offset 3 row fetch next 2 rows only;

  /*
   * Ordenação por porcentagem (%) de linhas.
   * Apartir do 12c.
   */

 select * from programadores
 order by salario desc
 fetch first 25 percent rows only;