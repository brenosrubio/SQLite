CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    id_cliente INT,
    data_venda DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
