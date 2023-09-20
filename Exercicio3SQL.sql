	CREATE DATABASE db_escola;
	USE db_escola;
	CREATE TABLE tb_notasalunos(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Idade INT, 
	Nota DECIMAL (7,1) NOT NULL,
	DataAvaliacao DATE,
	PRIMARY KEY (Id)
	);
	INSERT INTO tb_notasalunos
	(Nome, Idade, Nota, DataAvaliacao)
	VALUES 
	('ALLAN ', 25, 10.0, '2022-06-30'),
	('LEONARDO M ', 26, 0.0,'2022-06-30'),
	('LEONARDO L ', 25, 0.0,'2022-06-30'),
	('EDUARDO ', 22, 2.0,'2022-06-30'),
	('RHYAN ', 20, 0.0,'2022-06-30'),
	('LUCIANO ', 28, 9.9,'2022-06-30'),
	('VICTOR S ', 26, 8.0,'2022-06-30'),
	('RAFAEL ', 24, 0.0,'2022-06-30')
	ALTER TABLE tb_notasalunos ALTER COLUMN Nota DECIMAL (7,2);
	SELECT * FROM tb_notasalunos
	SELECT * FROM tb_notasalunos WHERE Nota >7;
	SELECT * FROM tb_notasalunos WHERE Nota <7;
	UPDATE tb_notasalunos SET DataAvaliacao = '2023-05-16' WHERE Id = 18;