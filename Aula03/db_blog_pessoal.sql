CREATE TABLE [tb_tema] (
	id bigint NOT NULL,
	Descricao varchar NOT NULL,
  CONSTRAINT [PK_TB_TEMA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_postagens] (
	id bigint NOT NULL,
	Titulo varchar NOT NULL,
	Texto varchar NOT NULL,
	Data datetimeoffset NOT NULL,
	TemaId bigint NOT NULL,
	UsuarioId bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	id bigint NOT NULL,
	Nome varchar NOT NULL,
	Usuario varchar NOT NULL,
	Senha varchar NOT NULL,
	Foto varchar NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk0] FOREIGN KEY ([TemaId]) REFERENCES [tb_tema]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk0]
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [tb_usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk1]
GO


