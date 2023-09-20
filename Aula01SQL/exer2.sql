CREATE DATABASE db_ecommerce;-

USE db_ecommerce;

CREATE TABLE tb_produto(
Id  BIGINT IDENTITY(1,1),
Nome VARCHAR (255) NOT NULL,
Categoria VARCHAR,
DataRegistro DATE,
Valor DECIMAL (6,2) NOT NULL,
PRIMARY KEY (Id)
);

INSERT INTO tb_produto(Nome, Categoria, DataRegistro, Valor) 
VALUES 
('Cama', 'cama', '2023-09-15', 1000.00),
('Mesa', 'cozinha', '2023-09-13', 400.00),
('Geladeira', 'cozinha', '2023-09-07', 1900.00),
('Liquidificador', 'cozinha', '2023-09-12', 300.00),
('TV', 'eletrônico', '2023-08-30', 3000.00),
('Fogão', 'cozinha', '2023-09-15', 700.00),
('Armário', 'cozinha', '2023-09-10', 700),
('Celular', 'eletrônico', '2023-09-11', 1500);

SELECT * FROM tb_produto WHERE valor > 500;

SELECT * FROM tb_produto WHERE valor < 500;

UPDATE tb_produto SET valor = 1200 WHERE Id = 1; 

SELECT * FROM tb_produto;