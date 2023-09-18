CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
Id  BIGINT IDENTITY(1,1),
Nome VARCHAR(255) NOT NULL,
CodigoFuncionario INT,
DataAdmissao DATE,
Salario DECIMAL (6,2) NOT NULL,
Cargo  VARCHAR (255),
PRIMARY KEY (Id)
);

INSERT INTO tb_colaboradores(Nome, CodigoFuncionario, DataAdmissao, Salario, Cargo) 
VALUES 
('Carlos', 1001, '2023-06-15', 1500.00, 'Auxiliar de RH' ),
('Maria', 1002, '2023-01-13', 1500.00, 'Auxiliar de RH'),
('Lucas', 1003, '2022-10-07', 1900.00, 'Analista de RH'),
('Beatriz', 1004, '2023-03-12', 3000.00, 'Coordenador de RH'),
('Roberto', 1005, '2021-06-30', 5000.00, 'Supervisor');

SELECT * FROM tb_colaboradores WHERE Salario > 2000;

SELECT * FROM tb_colaboradores WHERE Salario < 2000;

UPDATE tb_colaboradores SET DataAdmissao = '2023-05-15' WHERE Id = 1; 

SELECT * FROM tb_colaboradores;




