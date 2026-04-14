INSERT INTO categorias (nome) VALUES ('Eletrônicos');
INSERT INTO categorias (nome) VALUES ('Roupas');
INSERT INTO categorias (nome) VALUES ('Alimentos');

INSERT INTO clientes (nome, email, telefone) 
VALUES ('João Silva', 'joao@email.com', '31999999999');

INSERT INTO clientes (nome, email, telefone) 
VALUES ('Maria Santos', 'maria@email.com', '31988888888');

INSERT INTO clientes (nome, email) 
VALUES ('Pedro Costa', 'pedro@email.com');

INSERT INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('iPhone 15', 4999.90, 10, 1);

INSERT INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Camiseta Nike', 199.90, 50, 2);

INSERT INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Notebook Dell', 3499.90, 5, 1);

INSERT INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Arroz 5kg', 25.90, 100, 3);

INSERT INTO pedidos (id_cliente, status) 
VALUES (1, 'aprovado');

INSERT INTO pedidos (id_cliente, status) 
VALUES (2, 'pendente');

INSERT INTO pedidos (id_cliente, status) 
VALUES (1, 'entregue');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (1, 1, 2, 4999.90);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (1, 2, 1, 199.90);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (2, 3, 1, 3499.90);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (3, 4, 3, 25.90);