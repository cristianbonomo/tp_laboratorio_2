USE [TP4]
GO
/****** Object:  Table [dbo].[cotizaciones]    Script Date: 11/29/2020 5:47:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cotizaciones](
	[idCotizacion] [int] IDENTITY(1,1) NOT NULL,
	[nombreDivisa] [varchar](50) NOT NULL,
	[valorCompra] [decimal](19, 2) NOT NULL,
	[valorVenta] [decimal](12, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroOperaciones]    Script Date: 11/29/2020 5:47:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroOperaciones](
	[idOperacion] [int] IDENTITY(1,1) NOT NULL,
	[fechaHora] [varchar](50) NOT NULL,
	[tipoDeOperacion] [varchar](50) NOT NULL,
	[divisa] [varchar](50) NOT NULL,
	[montoInicial] [decimal](18, 2) NOT NULL,
	[valorCotizacion] [decimal](18, 2) NOT NULL,
	[montoFinal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_RegistroOperaciones] PRIMARY KEY CLUSTERED 
(
	[idOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
