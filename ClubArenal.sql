USE [Club Arenal]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deportes](
	[Cod_Deporte] [char](1) NOT NULL,
	[Deporte] [char](30) NOT NULL,
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[Cod_Deporte] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesores](
	[Cod_Profesor] [char](3) NOT NULL,
	[Nombre_Completo] [char](40) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[Fecha_Nacimiento] [datetime] NULL,
	[Telefono] [char](10) NULL,
	[Direccion] [char](40) NULL,
	[Nacionalidad] [char](40) NULL,
	[Email] [char](30) NULL,
	[Fecha_Contratacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[Cod_Profesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cod_Cliente] [char](5) NOT NULL,
	[Nombre_Completo] [char](50) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[Fecha_Nacimiento] [datetime] NOT NULL,
	[Telefono] [char](20) NULL,
	[Email] [char](40) NULL,
	[Direccion] [char](40) NULL,
	[Nacionalidad] [char](40) NULL,
	[Socio] [bit] NULL,
	[Fecha_Inscripcion] [datetime] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sueldos]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sueldos](
	[Nro_Factura] [char](5) NOT NULL,
	[Cod_Profesor] [char](3) NOT NULL,
	[Fecha_Cobro] [datetime] NULL,
	[Mes] [char](30) NULL,
	[Año] [char](20) NULL,
	[Cantidad] [money] NOT NULL,
 CONSTRAINT [PK_Sueldos] PRIMARY KEY CLUSTERED 
(
	[Nro_Factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pagos](
	[Nro_Pago] [char](5) NOT NULL,
	[Cod_Cliente] [char](5) NOT NULL,
	[Descripcion] [char](40) NULL,
	[Cantidad] [money] NOT NULL,
	[Tipo_Pago] [char](30) NULL,
	[Fecha_Pago] [datetime] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[Nro_Pago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeportexCliente]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeportexCliente](
	[Cod_Cliente] [char](5) NOT NULL,
	[Cod_Deporte] [char](1) NOT NULL,
 CONSTRAINT [PK_DeportexCliente] PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC,
	[Cod_Deporte] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comisiones]    Script Date: 10/30/2018 11:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comisiones](
	[Cod_Comision] [char](2) NOT NULL,
	[Cod_Deporte] [char](1) NOT NULL,
	[Cod_Profesor] [char](3) NOT NULL,
	[Precio_Mensual] [money] NOT NULL,
	[Dia] [char](30) NOT NULL,
	[Hora_Inicio] [char](20) NOT NULL,
	[Hora_Fin] [char](20) NOT NULL,
 CONSTRAINT [PK_Comisiones] PRIMARY KEY CLUSTERED 
(
	[Cod_Comision] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Sueldos_Profesores]    Script Date: 10/30/2018 11:35:51 ******/
ALTER TABLE [dbo].[Sueldos]  WITH CHECK ADD  CONSTRAINT [FK_Sueldos_Profesores] FOREIGN KEY([Cod_Profesor])
REFERENCES [dbo].[Profesores] ([Cod_Profesor])
GO
ALTER TABLE [dbo].[Sueldos] CHECK CONSTRAINT [FK_Sueldos_Profesores]
GO
/****** Object:  ForeignKey [FK_Pagos_Clientes]    Script Date: 10/30/2018 11:35:51 ******/
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Clientes] FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[Clientes] ([Cod_Cliente])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Clientes]
GO
/****** Object:  ForeignKey [FK_DeportexCliente_Clientes]    Script Date: 10/30/2018 11:35:51 ******/
ALTER TABLE [dbo].[DeportexCliente]  WITH CHECK ADD  CONSTRAINT [FK_DeportexCliente_Clientes] FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[Clientes] ([Cod_Cliente])
GO
ALTER TABLE [dbo].[DeportexCliente] CHECK CONSTRAINT [FK_DeportexCliente_Clientes]
GO
/****** Object:  ForeignKey [FK_DeportexCliente_Deportes]    Script Date: 10/30/2018 11:35:51 ******/
ALTER TABLE [dbo].[DeportexCliente]  WITH CHECK ADD  CONSTRAINT [FK_DeportexCliente_Deportes] FOREIGN KEY([Cod_Deporte])
REFERENCES [dbo].[Deportes] ([Cod_Deporte])
GO
ALTER TABLE [dbo].[DeportexCliente] CHECK CONSTRAINT [FK_DeportexCliente_Deportes]
GO
/****** Object:  ForeignKey [FK_Comisiones_Deportes]    Script Date: 10/30/2018 11:35:51 ******/
ALTER TABLE [dbo].[Comisiones]  WITH CHECK ADD  CONSTRAINT [FK_Comisiones_Deportes] FOREIGN KEY([Cod_Deporte])
REFERENCES [dbo].[Deportes] ([Cod_Deporte])
GO
ALTER TABLE [dbo].[Comisiones] CHECK CONSTRAINT [FK_Comisiones_Deportes]
GO
/****** Object:  ForeignKey [FK_Comisiones_Profesores]    Script Date: 10/30/2018 11:35:51 ******/
ALTER TABLE [dbo].[Comisiones]  WITH CHECK ADD  CONSTRAINT [FK_Comisiones_Profesores] FOREIGN KEY([Cod_Profesor])
REFERENCES [dbo].[Profesores] ([Cod_Profesor])
GO
ALTER TABLE [dbo].[Comisiones] CHECK CONSTRAINT [FK_Comisiones_Profesores]
GO
