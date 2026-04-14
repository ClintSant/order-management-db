-- CATEGORIAS
INSERT OR IGNORE INTO categorias (nome) VALUES ('Smartphones');
INSERT OR IGNORE INTO categorias (nome) VALUES ('Notebooks');
INSERT OR IGNORE INTO categorias (nome) VALUES ('Acessórios');

-- CLIENTES
INSERT OR IGNORE INTO clientes (nome, email, telefone) 
VALUES ('Rafael Mendonça', 'rafael.mendonca@email.com', '31991234567');

INSERT OR IGNORE INTO clientes (nome, email, telefone) 
VALUES ('Camila Ferreira', 'camila.ferreira@email.com', '21987654321');

INSERT OR IGNORE INTO clientes (nome, email, telefone) 
VALUES ('Bruno Castilho', 'bruno.castilho@email.com', '11993456789');

INSERT OR IGNORE INTO clientes (nome, email, telefone) 
VALUES ('Larissa Monteiro', 'larissa.monteiro@email.com', '31994567890');

INSERT OR IGNORE INTO clientes (nome, email, telefone) 
VALUES ('Thiago Rezende', 'thiago.rezende@email.com', '21995678901');

INSERT OR IGNORE INTO clientes (nome, email) 
VALUES ('Juliana Prado', 'juliana.prado@email.com');

-- PRODUTOS
INSERT OR IGNORE INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('iPhone 15', 4999.90, 10, 1);

INSERT OR IGNORE INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Samsung Galaxy S24', 3999.90, 15, 1);

INSERT OR IGNORE INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Notebook Dell', 3499.90, 5, 2);

INSERT OR IGNORE INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Notebook Apple M3', 7999.90, 3, 2);

INSERT OR IGNORE INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Fone JBL', 299.90, 30, 3);

INSERT OR IGNORE INTO produtos (nome, preco, estoque, id_categoria) 
VALUES ('Carregador 65W', 149.90, 50, 3);

-- PEDIDOS
INSERT OR IGNORE INTO pedidos (id_cliente, status) 
VALUES (1, 'aprovado');

INSERT OR IGNORE INTO pedidos (id_cliente, status) 
VALUES (2, 'pendente');

INSERT OR IGNORE INTO pedidos (id_cliente, status) 
VALUES (3, 'entregue');

INSERT OR IGNORE INTO pedidos (id_cliente, status) 
VALUES (4, 'aprovado');

INSERT OR IGNORE INTO pedidos (id_cliente, status) 
VALUES (5, 'pendente');

-- ITENS DO PEDIDO
INSERT OR IGNORE INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (1, 1, 2, 4999.90);

INSERT OR IGNORE INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (1, 5, 1, 299.90);

INSERT OR IGNORE INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (2, 3, 1, 3499.90);

INSERT OR IGNORE INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (3, 2, 1, 3999.90);

INSERT OR IGNORE INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (4, 4, 1, 7999.90);

INSERT OR IGNORE INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES (5, 6, 2, 149.90);
