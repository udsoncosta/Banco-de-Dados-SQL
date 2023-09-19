CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
Id BIGINT IDENTITY(1,1),
Tipo VARCHAR(255)NOT NULL,
DataValidade DATE,
PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (Tipo, DataValidade)
VALUES
('Salgada', '2023-09-10'),
('Doce', '2023-09-21'),
('Mista', '2023-09-20'),
('4 pedaços', '2023-09-20'),
('8 pedaços', '2023-09-20');

CREATE TABLE tb_pizzas(
Id BIGINT IDENTITY(1,1),
Sabor VARCHAR(255) NOT NULL,
Quantidade INT,
Preco DECIMAL(8,2) NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (Sabor, Quantidade, Preco, categoria_Id)
VALUES
('Frango c/ Catupiry', 5, 70.00, 3),
('Morango', 5, 40.01, 2),
('Portuguesa',7 , 100.00, 1),
('Calabresa', 1, 35.00, 4),
('Brigadeiro', 3, 30.00, 2),
('Mussarella', 3, 60.00, 5),
('Nutella', 1, 46.00, 2),
('4 Queijos', 3, 44.00, 4);

SELECT * FROM tb_pizzas WHERE Preco > 45.00;

SELECT * FROM tb_pizzas WHERE Preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE Sabor LIKE '%M%';

SELECT tb_categorias.Id, Sabor, Quantidade, Preco, categoria_id 
FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.categoria_id;

SELECT tb_categorias.Id, Sabor, Quantidade, Preco, Categoria_id 
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.categoria_id
WHERE Tipo = 'Salgada';

