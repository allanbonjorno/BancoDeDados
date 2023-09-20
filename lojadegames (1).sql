CREATE TABLE [categoria] (
	id bigint NOT NULL,
	tipo varchar(255) NOT NULL,
  CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [produtos] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Descricao varchar(500) NOT NULL,
	Quantidade varchar(255) NOT NULL,
	Preco decimal(8,2) NOT NULL,
	Foto varchar(5000) NOT NULL,
	usuario_id bigint NOT NULL,
	categoria_id bigint NOT NULL,
  CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [usuarios] (
	id integer NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(5000),
	DataNascimento date NOT NULL,
  CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [produtos] WITH CHECK ADD CONSTRAINT [produtos_fk0] FOREIGN KEY ([usuario_id]) REFERENCES [usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [produtos] CHECK CONSTRAINT [produtos_fk0]
GO
ALTER TABLE [produtos] WITH CHECK ADD CONSTRAINT [produtos_fk1] FOREIGN KEY ([categoria_id]) REFERENCES [categoria]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [produtos] CHECK CONSTRAINT [produtos_fk1]
GO

SELECT * FROM produtos
