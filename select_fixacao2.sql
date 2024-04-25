select count(quantidade_estoque) from produtos;

select sum(preco) / count(preco) from produtos;

select nome from produtos
where produtos.nome like '%Modelo 20%';

select nome, preco, descricao from produtos
where preco between 50 and 100;

select nome, preco from produtos
order by preco
limit 5;

select nome, descricao from produtos
where quantidade_estoque = 0;

select nome, descricao from produtos
where descricao like '%';

select nome, preco from produtos
where preco > (select avg(preco) from produtos);

select * from produtos
where nome like '%SSD%';

select nome, preco from produtos
order by preco desc;

select nome, quantidade_estoque from produtos
where quantidade_estoque % 2 = 0;

select nome, descricao from produtos
where quantidade_estoque between 0 and 100;