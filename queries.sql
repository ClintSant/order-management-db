-- 1. Listar todos os clientes
SELECT * FROM clientes;

-- 2. Listar só o nome e email dos clientes
SELECT nome, email FROM clientes;

-- 3. Buscar um cliente específico
SELECT * FROM clientes WHERE email = 'joao@email.com';

-- 4. Total gasto por cliente
SELECT c.nome, SUM(i.quantidade * i.preco_unitario) AS total_gasto
FROM clientes c 
JOIN pedidos p ON c.id_cliente = p.id_cliente
JOIN itens_pedido i ON p.id_pedido = i.id_pedido
GROUP BY c.nome;

-- 5. Produtos mais vendidos
SELECT p.nome, SUM(i.quantidade) AS total_vendido
FROM produtos p
JOIN itens_pedido i ON p.id_produto = i.id_produto
GROUP BY p.nome
ORDER BY total_vendido DESC
LIMIT 5;

-- 6. Clientes que nunca fizeram pedido
-- LEFT JOIN traz todos os clientes mesmo sem pedido
-- IS NULL filtra apenas os que não têm pedido associado
SELECT c.nome, c.email
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente 
WHERE p.id_pedido IS NULL;

-- 7. Ticket médio por pedido
-- Calcula o valor médio gasto em cada pedido
-- Subquery cria uma tabela temporária com total de cada pedido
-- AVG calcula a média desses totais
SELECT AVG(total) AS ticket_medio
FROM (
    SELECT id_pedido, SUM(quantidade * preco_unitario) AS total 
    FROM itens_pedido
    GROUP BY id_pedido
) AS sub;

-- 8. Pedidos com status e nome do cliente
-- JOIN une clientes com pedidos
-- Mostra todos os pedidos com o nome do cliente e status atual
SELECT c.nome, p.id_pedido, p.data_pedido, p.status
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
ORDER BY p.data_pedido DESC;