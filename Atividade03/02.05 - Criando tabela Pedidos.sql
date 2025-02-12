CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
