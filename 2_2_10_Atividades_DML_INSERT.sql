
USE vendas_informatica;

-- 1. Cadastrar o cliente
INSERT INTO Cliente
(nome_cliente, email, cidade, estado, data_cadastro)
VALUES
('Rubervaldo Sesiano', 'ruber.sesi@gmail.com',
 'Jaguariúna', 'SP', CURRENT_DATE());

SET @id_cliente = LAST_INSERT_ID();

-- 2. Cadastrar o produto
USE vendas_informatica;

INSERT INTO Produto
(nome_produto, categoria, marca, preco_unitario,
 estoque, ativo, data_cadastro)
VALUES
('MousePad 5POL', 'Acessórios', 'Lumix',
 59.98, 35, 1, CURRENT_DATE());

SET @id_produto = LAST_INSERT_ID();

-- 3. Cadastrar a venda
USE vendas_informatica;

-- 3. Cadastrar a venda
USE vendas_informatica;

INSERT INTO Venda
(id_produto, id_cliente, data_venda, quantidade,
 preco_unitario_venda, desconto_percentual,
 forma_pagamento, status_venda)
VALUES
(1, 101, '2026-10-21', 10,
 59.98, 1.33, 'PIX', 'Concluída');
