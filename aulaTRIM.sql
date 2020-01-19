drop table texto;
create table texto
(
    frase varchar(255)
);

insert into texto values ('Teste de frase');

/* Só com o parametro obrigatório, o Oracle entende  
 * que você quer remover os espaços.
 */
select rtrim(frase) from texto;

/* Com um parametro opcional, o Oracle entende que 
 * você quer remover o parametro o segundo do primeiro,
 * se o segundo for exatamente igual e começar na direita.
 */
 select rtrim(frase, 'teste') from texto;

/* Mesma ideia do rtrim, só que pela começando pela esquerda */
select ltrim(frase) from texto;

/* Mesma ideia do rtrim com parametros adicionais
 * só que começando pela esquerda
 */
 select ltrim(frase, 'Teste') from texto;

 /* Fusão das 2 funções acima, removendo os espaços tanto
  * da direita quanto da esquerda.
  */
 select trim(frase) from texto;

/* Usando o trim como ltrim, precisa de palavras chaves. */
 select trim( leading '0' from '0001234') from texto; --Resultado 1234

 /* Usando o trim como rtrim, precisa de palavras chaves */
 select trim(trailing '4' from '000123444444444') from texto;

 /* Usando tanto para a esquerda quanto para a direita */
select trim (both '0' from '00000001234000000') from texto;