USE [ArticulosYDisenio]
GO
/****** Object:  Table [dbo].[Carrito]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrito](
	[nIdCarrito] [int] IDENTITY(1,1) NOT NULL,
	[nIdCliente] [int] NULL,
	[dtFechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdCarrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarritoDetalle]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarritoDetalle](
	[nIdCarritoDetalle] [int] IDENTITY(1,1) NOT NULL,
	[nIdCarrito] [int] NULL,
	[nIdProducto] [int] NULL,
	[nCantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdCarritoDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[nIdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[cNombreCategoria] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[nIdCliente] [int] IDENTITY(1,1) NOT NULL,
	[nIdUsuario] [int] NULL,
	[cNombre] [varchar](100) NULL,
	[cApellido] [varchar](100) NULL,
	[cTipoIdentificacion] [varchar](20) NULL,
	[cNumeroIdentificacion] [varchar](20) NULL,
	[cDireccion] [varchar](255) NULL,
	[cTelefono] [varchar](15) NULL,
	[bEsVip] [bit] NULL,
	[nUserCoins] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cNumeroIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[nIdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[nIdVenta] [int] NULL,
	[nIdProducto] [int] NULL,
	[nCantidad] [int] NULL,
	[fPrecio] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodoPago]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoPago](
	[nIdPago] [int] IDENTITY(1,1) NOT NULL,
	[nIdVenta] [int] NULL,
	[cMetodoPago] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[nIdProducto] [int] IDENTITY(1,1) NOT NULL,
	[cNombreProducto] [varchar](100) NULL,
	[cDescripcion] [varchar](255) NULL,
	[fPrecioProducto] [decimal](10, 2) NULL,
	[nStock] [int] NULL,
	[cImagen] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoCategoria]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoCategoria](
	[nIdProducto] [int] NOT NULL,
	[nIdCategoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdProducto] ASC,
	[nIdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[nIdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[cEmail] [varchar](255) NULL,
	[cContrasena] [varchar](255) NULL,
	[bEsAdministrador] [bit] NULL,
	[dtFechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 20/11/2024 07:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[nIdVenta] [int] IDENTITY(1,1) NOT NULL,
	[nIdCliente] [int] NULL,
	[dtFechaVenta] [datetime] NULL,
	[fTotal] [decimal](10, 2) NULL,
	[nCoinsUsados] [int] NULL,
	[fValorCoins] [decimal](10, 2) NULL,
	[nCoinsGanados] [int] NULL,
	[fTotalConDescuento] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[nIdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carrito] ADD  DEFAULT (getdate()) FOR [dtFechaCreacion]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((0)) FOR [bEsVip]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((0)) FOR [nUserCoins]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((0)) FOR [bEsAdministrador]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT (getdate()) FOR [dtFechaRegistro]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT (getdate()) FOR [dtFechaVenta]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0)) FOR [nCoinsUsados]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0.00)) FOR [fValorCoins]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0)) FOR [nCoinsGanados]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0.00)) FOR [fTotalConDescuento]
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD FOREIGN KEY([nIdCliente])
REFERENCES [dbo].[Cliente] ([nIdCliente])
GO
ALTER TABLE [dbo].[CarritoDetalle]  WITH CHECK ADD FOREIGN KEY([nIdCarrito])
REFERENCES [dbo].[Carrito] ([nIdCarrito])
GO
ALTER TABLE [dbo].[CarritoDetalle]  WITH CHECK ADD FOREIGN KEY([nIdProducto])
REFERENCES [dbo].[Producto] ([nIdProducto])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([nIdUsuario])
REFERENCES [dbo].[Usuario] ([nIdUsuario])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([nIdProducto])
REFERENCES [dbo].[Producto] ([nIdProducto])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([nIdVenta])
REFERENCES [dbo].[Venta] ([nIdVenta])
GO
ALTER TABLE [dbo].[MetodoPago]  WITH CHECK ADD FOREIGN KEY([nIdVenta])
REFERENCES [dbo].[Venta] ([nIdVenta])
GO
ALTER TABLE [dbo].[ProductoCategoria]  WITH CHECK ADD FOREIGN KEY([nIdCategoria])
REFERENCES [dbo].[Categoria] ([nIdCategoria])
GO
ALTER TABLE [dbo].[ProductoCategoria]  WITH CHECK ADD FOREIGN KEY([nIdProducto])
REFERENCES [dbo].[Producto] ([nIdProducto])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([nIdCliente])
REFERENCES [dbo].[Cliente] ([nIdCliente])
GO
