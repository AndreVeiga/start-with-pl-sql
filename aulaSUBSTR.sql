create table texto
(
    frase varchar(255)
);

insert into texto values ('Aprendendo PL-SQL');

select frase from texto;

/* Corta o texto apartir da posição 3 até o fim
 * Logo, as 3 primeiras letras não serão mostradas.
 */
select substr(frase, 3) from texto;

/* Corta o texto apartir da posição 3 
 * e percorre 5 posições.
 */
 select substr(frase, 3, 5) from texto;


 /* Com valor negativo, conta da direita para a esquerda */
 select substr(frase, -11) from texto; 