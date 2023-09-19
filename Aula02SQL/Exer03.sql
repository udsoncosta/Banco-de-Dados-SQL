CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
Id BIGINT IDENTITY(1,1),
Tipo VARCHAR(255)NOT NULL,
Duracao VARCHAR (255) NOT NULL,
PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (Tipo, Duracao)
VALUES
('Linguagem', '140 horas'),
('Tecnologia', '40 horas'),
('Desenvolvimento Pessoal', '35 horas'),
('Negócios', '120 horas'),
('Programação', '200 horas');

CREATE TABLE tb_cursos(
Id BIGINT IDENTITY(1,1),
Curso VARCHAR(255) NOT NULL,
Modo VARCHAR(255)NOT NULL,
Preco DECIMAL (8,2) NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos (Curso, Modo, Preco, categoria_Id)
VALUES
('C#', 'Online', 700.00, 5),
('Java', 'Online', 400.01, 5),
('Inglês', 'Presencial', 1000.00, 1),
('Comunicação', 'Presencial', 350.00, 3),
('Empreendendorismo', 'Presencial', 1300.00, 4),
('PowerPoint', 'Online', 200.00, 2),
('Excel', 'Online', 100.00, 2),
('Espanhol', 'Presencial', 440.00, 1);

SELECT * FROM tb_cursos WHERE Preco > 500.00;

SELECT * FROM tb_cursos WHERE Preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE Curso LIKE '%J%';

SELECT tb_categorias.Id, Curso, Modo, Preco, categoria_id 
FROM tb_cursos 
INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.categoria_id;

SELECT tb_categorias.Id, Curso, Modo, Preco, categoria_id 
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos
.categoria_id
WHERE Tipo = 'Linguagem';

