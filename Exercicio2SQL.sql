--Exercício 1- 18/09--
CREATE TABLE lojinha(
Id BIGINT IDENTITY (1,1),
Nome varchar (255)NOT NULL, 
Preco decimal (37,2),
Quantidade int ,
Tamanho varchar (2)NOT NULL, 

PRIMARY KEY (Id)

);
INSERT INTO lojinha(Nome, Preco, Quantidade, Tamanho)
VALUES 
('CamisetaOFFWHITE', 150.00, 1,'GG'),
('CamisetaKENZO', 450.00, 1,'2G'),
('CamisetaGUCCI', 650.00, 1,'G'),
('CamisetaNIKE', 150.00, 1,'M'),
('CamisetaADIDAS', 150.00, 1,'PP'),
('CamisetaBURBERRY', 550.00, 1,'GG'),
('CamisetaOFFWHITE', 150.00, 1,'P'),
('CamisetaOFFWHITE', 150.00, 1,'M')


SELECT * FROM lojinha WHERE Preco >500.00;
SELECT * FROM lojinha WHERE Preco <500.00;
UPDATE lojinha SET Quantidade = 10 WHERE Id = 14;