/****** Object:  Table [dbo].[FTOP00100]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP00100](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[contraseña] [varchar](100) NOT NULL,
	[fechacreacion] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP00101]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP00101](
	[idrol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP00102]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FTOP00102](
	[idroles] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FTOP00103]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP00103](
	[idadmin] [int] NOT NULL,
	[idrol] [int] NOT NULL,
	[formulario] [varchar](100) NOT NULL,
	[tipoacceso] [varchar](100) NOT NULL,
	[fechacreacion] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10100]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10100](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[nit] [varchar](100) NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10101]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10101](
	[idformasdepago] [int] IDENTITY(1,1) NOT NULL,
	[formasdepago] [varchar](100) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10102]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10102](
	[idproducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](500) NULL,
	[imagen] [varchar](100) NULL,
	[idtipoproducto] [int] NULL,
	[idlaboratorio] [int] NULL,
	[idestado] [int] NULL,
	[idunidaddemedida] [int] NULL,
	[medida] [varchar](100) NULL,
	[preciocompra] [numeric](10, 2) NULL,
	[precioventa] [numeric](10, 2) NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10103]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10103](
	[idtiposproducto] [int] IDENTITY(1,1) NOT NULL,
	[tiposproducto] [varchar](100) NULL,
	[descripcion] [varchar](500) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10104]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10104](
	[idlaboratorio] [int] IDENTITY(1,1) NOT NULL,
	[laboratorio] [varchar](100) NULL,
	[descripcion] [varchar](500) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10105]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10105](
	[idestado] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](100) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10106]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10106](
	[idunidaddemedida] [int] IDENTITY(1,1) NOT NULL,
	[unidaddemedida] [varchar](100) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP10107]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP10107](
	[idparametro] [int] IDENTITY(1,1) NOT NULL,
	[parametro] [varchar](100) NOT NULL,
	[valor] [numeric](10, 2) NULL,
	[descripcion] [varchar](500) NULL,
	[fechacreacion] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP30100]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP30100](
	[idingreso] [int] IDENTITY(1,1) NOT NULL,
	[idproducto] [int] NULL,
	[fechaingreso] [date] NULL,
	[lote] [varchar](100) NULL,
	[cantidad] [numeric](10, 2) NULL,
	[fechavencimiento] [date] NULL,
	[ubicacion] [varchar](100) NULL,
	[descripcion] [varchar](500) NULL,
	[farmacia] [varchar](100) NULL,
	[idestado] [int] NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP30101]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP30101](
	[idegreso] [int] IDENTITY(1,1) NOT NULL,
	[idproducto] [int] NULL,
	[fechaegreso] [date] NULL,
	[lote] [varchar](100) NULL,
	[cantidad] [numeric](10, 2) NULL,
	[fechavencimiento] [date] NULL,
	[ubicacion] [varchar](100) NULL,
	[descripcion] [varchar](500) NULL,
	[farmacia] [varchar](100) NULL,
	[idestado] [int] NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP30102]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP30102](
	[idtraslado] [int] IDENTITY(1,1) NOT NULL,
	[idproducto] [int] NULL,
	[fechatraslado] [date] NULL,
	[origen] [varchar](100) NULL,
	[destino] [varchar](100) NULL,
	[lote] [varchar](100) NULL,
	[cantidad] [numeric](10, 2) NULL,
	[fechavencimiento] [date] NULL,
	[ubicacion] [varchar](100) NULL,
	[descripcion] [varchar](500) NULL,
	[farmacia] [varchar](100) NULL,
	[idestado] [int] NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP50100]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP50100](
	[idfactura] [int] IDENTITY(1,1) NOT NULL,
	[correlativo] [varchar](100) NULL,
	[serie] [varchar](100) NULL,
	[farmacia] [varchar](100) NULL,
	[fechafactura] [date] NULL,
	[idcliente] [int] NULL,
	[idformadepago] [int] NULL,
	[idestado] [int] NULL,
	[subtotal] [numeric](10, 2) NULL,
	[descuento] [numeric](10, 2) NULL,
	[total] [numeric](10, 2) NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTOP50101]    Script Date: 21/02/2019 16:46:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTOP50101](
	[idfactura] [int] NULL,
	[idproducto] [int] NULL,
	[cantidad] [numeric](10, 2) NULL,
	[precio] [numeric](10, 2) NULL,
	[descuento] [numeric](10, 2) NULL,
	[totalproducto] [numeric](10, 2) NULL,
	[fechacreacion] [date] NULL,
	[usuariocreacion] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
