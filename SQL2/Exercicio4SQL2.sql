CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;
CREATE TABLE tb_categorias(
	id bigint identity(1,1),
	tipo varchar(255),
	ativa bit,
	primary key(id)
);

CREATE TABLE tb_produtos(
	id bigint identity(1,1),
	nome varchar(255) not null,
	quantidade int,
	dtValidade date,
	preco decimal(6,2),
	primary key(id),
	categoria_id bigint,
	foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO  tb_categorias(tipo, ativa)
VALUES
('frutos', 1),
('folhas', 1),
('flores', 1),
('tuberculos', 1),
('raizes', 1);

INSERT INTO tb_produtos (nome, quantidade, dtValidade, preco, categoria_id)
VALUES 
('abobrinha', 1000, '2022-03-07', 51.99, 1),
('berinjela', 1300, '2022-03-08', 55.00, 1),
('espinafre', 2000, '2022-03-09', 140.00, 2),
('alface', 300, '2022-03-10', 70.00, 2),
('brocolis', 1020, '2022-03-08', 58.00, 3),
('couve flor', 1000, '2022-03-07', 153.00, 3),
('batata doce', 1500, '2022-03-06', 30.00, 4),
('inhame', 1800, '2022-03-09', 39.50, 4),
('beterraba', 200, '2022-03-07', 65.49, 5),
('cenoura', 3000, '2022-03-13', 10.00, 5);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.tipo = 'frutos';