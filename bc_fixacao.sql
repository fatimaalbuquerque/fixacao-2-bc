create database fixacao;

use fixacao;

CREATE TABLE clientes (
   cliente_id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(255) NOT NULL,
   endereco VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL UNIQUE,
   celular VARCHAR(20),
   data_nascimento DATE
);

CREATE TABLE produtos (
   produto_id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(255) NOT NULL,
   preco DECIMAL(10, 2) NOT NULL,
   descricao TEXT,
   quantidade_estoque INT DEFAULT 0
);

CREATE TABLE pedidos (
   pedido_id INT AUTO_INCREMENT PRIMARY KEY,
   cliente_id INT NOT NULL,
   data_compra DATE NOT NULL,
   valor_total DECIMAL(10, 2) NOT NULL,
   data_estimada_entrega DATE NOT NULL,
   FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE itens_pedido (
   item_pedido_id INT AUTO_INCREMENT PRIMARY KEY,
   pedido_id INT NOT NULL,
   produto_id INT NOT NULL,
   quantidade INT NOT NULL,
   valor_unitario DECIMAL(10, 2) NOT NULL,
   valor_total DECIMAL(10, 2) NOT NULL,
   FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
   FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);