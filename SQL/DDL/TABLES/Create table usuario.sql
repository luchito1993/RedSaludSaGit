USE [DbRedSaludsa]
GO
/****** Object:  Table [dbo].[RSA_Usuario]    Script Date: 05/11/2016 15:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RSA_Usuario](
	[usu_id] [int] IDENTITY(1,1) NOT NULL,
	[usu_nombre] [varchar](50) NOT NULL,
	[usu_contrasena] [varchar](150) NOT NULL,
	[usu_estado] [varchar](1) NOT NULL,
	[usu_fechaIngreso] [datetime] NOT NULL,
	[usu_usuarioIngreso] [int] NOT NULL,
	[usu_fechaModificacion] [datetime] NULL,
	[usu_usuarioModificacion] [int] NULL,
 CONSTRAINT [PK_RSA_Usuario] PRIMARY KEY CLUSTERED 
(
	[usu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

