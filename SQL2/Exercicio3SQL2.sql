create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint identity(1,1),
	tipo varchar(255),
	ativa bit,
	primary key(id)
);

create table tb_produtos(
	id bigint identity(1,1),
	nome varchar(255) not null,
	quantidade int,
	dtValidade date,
	preco decimal(6,2),
	primary key(id),
	categoria_id bigint,
	foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias(tipo, ativa)
values
('Medicações', 1),
('Cosméticos', 1),
('Suplementos', 1),
('Bebidas', 1),
('Higiene', 1);

INSERT INTO tb_produtos (nome, quantidade, dtValidade, preco, categoria_id)
VALUES ('Captopril', 563, '2022-03-07', 99.99, 1),
('Pregabalina', 1760, '2022-03-08', 150.00, 1),
('Tandrilax', 250, '2022-03-09', 19.99, 1),
('Tanderalgin', 350, '2022-03-10', 70.00, 1),
('Melocoxian', 120, '2022-03-08', 50.00, 1),
('Metotrexato', 100, '2022-03-07', 100.00, 1),
('Desodorante Rexona', 1500, '2022-03-06', 15.00, 2),
('Bala Mentos', 599, '2022-03-09', 4.50, 3),
('Pastilha Valda', 11500, '2022-03-15', 9.00, 3),
('Energetico Monster', 950, '2022-03-10', 8.00, 4),
('Doritos', 200, '2022-03-07', 5.49, 3),
('Álcool em Gel', 9999, '2022-03-13', 10.99, 5);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 5 and 60;
select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.tipo = 'Higiene';