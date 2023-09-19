CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes
(
Id BIGINT IDENTITY(1,1),
tipo VARCHAR(255),
dataLancamento DATE,
PRIMARY KEY(Id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (tipo, dataLancamento)
VALUES
('Lutador', '2023-09-10'),
('Arqueiro', '2023-09-20'),
('Fada', '2023-09-10'),
('Voador', '2023-09-13'),
('Mago', '2023-09-05');

CREATE TABLE tb_personagens(
Id BIGINT IDENTITY(1,1),
NomePersonagem VARCHAR(255) NOT NULL,
PoderAtaque INT,
PoderDefesa INT,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(NomePersonagem, PoderAtaque, PoderDefesa, classe_id)
VALUES
('Astrid',1550,1700,3),
('Leia',2100,2001,4),
('Brutus',2300, 1700,1),
('Lucas Riggs',1700,1400, 2),
('Wade',300,3000,1),
('Hermann',3000,1500,5),
('Alex',1900,1900,5),
('John',3500,1500,1);

SELECT * FROM tb_personagens WHERE PoderAtaque > 2000;

SELECT * FROM tb_personagens WHERE PoderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE NomePersonagem LIKE '%C%';

SELECT tb_classes.Id, nomepersonagem, poderataque, poderdefesa, classe_id 
FROM tb_personagens 
INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.classe_id;

SELECT tb_classes.Id, nomepersonagem, poderataque, poderdefesa, classe_id 
FROM tb_personagens 
INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.classe_id
WHERE tipo = 'Lutador';

