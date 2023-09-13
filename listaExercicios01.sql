-- Exercicio 1
select titulo from livros;
-- Exercicio 2
select nome from autores where nascimento < '1900-01-01';
-- Exercicio 3
select livros.titulo, autores.nome 
from livros 
inner join autores on livros.autor_id = autores.id
where autores.nome ='J.K. Rowling';
