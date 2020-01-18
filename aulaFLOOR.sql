/*
 * Função FLOOR do PL-SQL
 * Arredonda para baixo um valor decimal.
 * Função pouco usado EXCETO quando preciso transformar
 * um número integer em numeric.  
 */

 create table numero 
 (
    id integer
 );

 insert into numero values (1);

/*
 * Exemplo de uso simples:
 * AS FLOOR é um alias.
 */
 select floor(3.4) as FLOOR from numero;

/*
 * Transforma a string em numero e arredonda.
 */
 select floor(to_number('10.2')) as FLOOR from numero;

 /*
  * Cuidado com as regras matemáticas.
  */

  select floor(-4.7) as Resultado from numero; -- Resultado -5

  select floor(7.99) as Resultado from numero; -- Resultado 7