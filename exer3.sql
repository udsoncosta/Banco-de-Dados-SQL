CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
Id  BIGINT IDENTITY(1,1),
Nome VARCHAR (255) NOT NULL,
Serie VARCHAR (255) NOT NULL,
DataAvaliacao DATE,
Nota DECIMAL,
PRIMARY KEY (Id)
);

INSERT INTO tb_estudante(Nome, Serie, DataAvaliacao, Nota) 
VALUES 
('Joao', '1° EM', '2023-09-09', 4.0),
('Maria', '1° EM', '2023-09-09', 7.0),
('Julia', '1° EM ', '2023-09-09', 9.0),
('Leonardo', '1° EM', '2023-09-09', 7.8),
('Ingrid', '1° EM', '2023-09-09', 3.0),
('Eduardo', '1° EM', '2023-09-09', 5.0),
('Victor', '1° EM', '2023-09-09', 10),
('Gabriel', '1° EM', '2023-09-09', 4.0);

SELECT * FROM tb_estudante WHERE nota >  7.0;

SELECT * FROM tb_estudante WHERE nota < 7.0;

UPDATE tb_estudante SET nota = 5.0 WHERE Id = 1;

SELECT * FROM tb_estudante;