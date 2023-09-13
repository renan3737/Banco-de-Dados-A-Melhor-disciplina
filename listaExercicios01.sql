-- Exercicio 1
select titulo from livros;

-- Exercicio 2
select nome from autores where nascimento < '1900-01-01';

-- Exercicio 3
select livros.titulo, autores.nome 
from livros 
inner join autores on livros.autor_id = autores.id
where autores.nome ='J.K. Rowling';

-- Exercicio 4
select matriculas.curso, alunos.nome from matriculas 
inner join alunos on matriculas.aluno_id = alunos.id
where matriculas.curso = 'Engenharia de Software';

-- Exercicio 5
select produto, sum(receita) as receitas_total 
from vendas 
group by produto;

-- Exercicio 6
select nome, count(livros.autor_id) as livros_total_autor 
from autores 
inner join livros on autores.id = livros.autor_id 
group by nome;

-- Exercicio 7
select curso, count(aluno_id) as alunos_curso 
from matriculas 
inner join alunos on alunos.id = matriculas.aluno_id 
group by curso;

-- Exercicio 8
select produto, round(avg(receita),2) as receitas_media
from vendas 
group by produto;

-- Exercicio 9
select produto, sum(receita) as receita_total 
from vendas 
group by produto
having receita_total > 10000;

-- Exercicio 10
select nome, count(livros.autor_id) as livros_total_autor 
from autores 
inner join livros on autores.id = livros.autor_id 
group by nome
having livros_total_autor >= 2;

-- Exercicio 11
select livros.titulo, autores.nome 
from livros 
inner join autores on livros.autor_id = autores.id;

-- Exercicio 12
select nome, curso 
from alunos 
left join matriculas 
on alunos.id = matriculas.aluno_id;

-- Exercicio 13
select nome, titulo 
from autores 
left join livros 
on autores.id = livros.autor_id;


-- Exercicio 14
select curso, nome 
from alunos 
right join matriculas 
on matriculas.aluno_id = alunos.id;

-- Exercicio 15
select curso, nome 
from alunos 
inner join matriculas 
on matriculas.aluno_id = alunos.id;

-- Exercicio 16
select nome, count(autor_id) as livros_total_autor 
from autores 
inner join livros on autores.id = livros.autor_id  
group by nome
order by livros_total_autor DESC 
limit 1; 

-- Exercicio 17
select produto, sum(receita) as receitas_produto
from vendas 
group by produto
order by receitas_produto 
limit 1;

-- Exercicio 19
select nome, count(aluno_id) as matricula_aluno 
from alunos 
inner join matriculas 
on alunos.id = matriculas.aluno_id 
group by nome;

-- Exercicio 20
select produto, count(receita) as transacoesDeVendas 
from vendas 
group by produto 
order by transacoesDeVendas desc limit 1; 
