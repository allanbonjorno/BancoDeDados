CREATE DATABASE db_colaboradores;
use db_colaboradores;
CREATE TABLE tb_informacoes(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) Not Null,
Cargo VARCHAR (255),
Admissao DATE,
Salario DECIMAL (6,2),
PRIMARY KEY (Id)
);

SELECT * FROM tb_informacoes;

INSERT INTO tb_informacoes;
(Nome, Cargo, Admissao, Salario)
VALUES 
('Allan Bonjorno' , 'Mecânico' , '2020-07-31' , 4500.00),
('Guilherme Bumussi' , 'Mecânico' , '2020-07-30' , 3500.00),
('Pablo Ewerton' , 'Auxiliar Mecânico' , '2020-08-05' , 1500.00),

INSERT INTO tb_informacoes
(Nome, Cargo, Admissao, Salario)
VALUES
('Eliano Batista' , 'Mecânico' , '2004-01-24', 6200.00)
('Miller Nobrega' , 'Auxiliar Mecânico', '2022-11-13', 1750.00)
;
DELETE FROM tb_informacoes WHERE id = 1;
SELECT *FROM tb_informacoes WHERE Salario > 2000.00;
SELECT *FROM tb_informacoes WHERE Salario < 2000.00;
UPDATE tb_informacoes SET Cargo = 'Eletricista Automotivo' WHERE id = 2;	
