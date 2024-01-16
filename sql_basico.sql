-- Comandos básicos SQL

-- Como recuperar valores distintos?

SELECT DISTINCT(nome)
FROM produto;

SELECT DISTINCT(nome) AS nome_cliente, DISTINCT(cpf) AS cpf_cliente
FROM cliente;

-- Como filtrar valores ?

SELECT nome AS nome_produto, descricao AS descricao_produto
FROM produto
WHERE produto = 'Caneta';

SELECT nome AS nome_cliente, telefone, email
FROM cliente
WHERE nome = 'Juliana';

-- Como ordenar o conjunto resultado?

SELECT produto_id, nome, preco
FROM produto
WHERE preco > 15.00
ORDER BY preco DESC;

SELECT cliente_id, nome, cpf
FROM cliente
ORDER BY nome; -- ASC default

-- Como recuperar valores em um determinado intervalo?

SELECT nome, preco
FROM produto
WHERE preco BETWEEN 10.00 AND 20.00;

-- Como recuperar valores das tabelas produto e cliente?

SELECT a.nome AS nome_cliente, b.nome AS nome_produto
FROM cliente a
INNER JOIN produto b
ON a.cliente_id = b.cliente_cliente_id
WHERE preco >= 30.00;



