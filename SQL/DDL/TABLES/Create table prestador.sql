USE [DbRedSaludsa]
GO
/****** Object:  Table [dbo].[RSA_Prestador]    Script Date: 05/11/2016 15:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RSA_Prestador](
	[pre_id] [int] IDENTITY(1,1) NOT NULL,
	[pre_nombres] [varchar](100) NOT NULL,
	[pre_apellidos] [varchar](100) NOT NULL,
	[pre_nivelDesde] [int] NOT NULL,
	[pre_nivelHasta] [int] NOT NULL,
	[usu_id] [int] NOT NULL,
	[pre_ruc] [varchar](13) NULL,
	[pre_numeroPersona] [decimal](10, 0) NULL,
	[pre_numeroConvenio] [int] NOT NULL,
	[pre_fechaIngreso] [datetime] NOT NULL,
	[pre_usuarioIngreso] [int] NOT NULL,
	[pre_fechaModificacion] [datetime] NULL,
	[pre_usuarioModificacion] [int] NULL,
 CONSTRAINT [PK_RSA_Prestador] PRIMARY KEY CLUSTERED 
(
	[pre_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  ForeignKey [FK_RSA_Prestador_RSA_Usuario]    Script Date: 05/11/2016 15:06:52 ******/
ALTER TABLE [dbo].[RSA_Prestador]  WITH CHECK ADD  CONSTRAINT [FK_RSA_Prestador_RSA_Usuario] FOREIGN KEY([usu_id])
REFERENCES [dbo].[RSA_Usuario] ([usu_id])
GO
ALTER TABLE [dbo].[RSA_Prestador] CHECK CONSTRAINT [FK_RSA_Prestador_RSA_Usuario]
GO
