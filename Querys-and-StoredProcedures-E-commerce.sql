use master
go
create database CATALOGO_P3_DB
go
USE CATALOGO_P3_DB
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MARCAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_MARCAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CATEGORIAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_CATEGORIAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ARTICULOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](150) NULL,
	[IdMarca] [int] NULL,
	[IdCategoria] [int] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

create table IMAGENES(
	Id int IDENTITY(1,1) not null,
	IdArticulo int not null,
	ImagenUrl varchar(1000) not null
)
go

insert into MARCAS values
('Samsung'),
('Apple'),
('Sony'),
('Huawei'),
('Motorola'),
('Lenovo'),
('Adidas'),
('Nike'),
('Phillips');
insert into CATEGORIAS values 
( 'Celulares'),
( 'Televisores'),
( 'Media'),
( 'Audio'),
( 'Indumentaria');
insert into ARTICULOS values 
('S01', 'Galaxy S10', 'Una canoa cara', 1, 1, 69999.00),
('M03', 'Moto G Play 7ma Gen', 'Ya siete de estos?', 1, 5, 15699.00),
('S99', 'Play 4', 'Ya no se cuantas versiones hay', 3, 3, 35000.00),
('S56', 'Bravia 55', 'Alta tele', 3, 2, 49500.00),
('A23', 'Apple TV', 'lindo loro', 2, 3, 7850.00),
('A44', 'PlayStation 5', 'Te sobra un billete si la compras', 3, 3, 800000.00),
('R99', 'Afeitadora Electrica', 'Para tu amigo el hippie', 9, 3, 20000.00),
('Z33', 'Campera Training', 'bien runner', 8, 5, 50000.00),
('R98', 'AirMax Sc', 'los pepes', 8, 5, 55000.00),
( 'C65', 'Nmdr1 Mujer', 'Ligeritass', 7, 5, 100000.00),
( 'R75', 'Campera rosa', 're flogger', 7, 5, 80000.00),
( 'F65', 'Auriculares inalambricos', 'una cera compa', 9, 1, 80000.00),
( 'D43', 'iPhone 14 Plus Hero', 'Algun día', 2, 1, 1000000.00),
( 'M43', 'Moto G23', 'yo lo tengo esta piola', 5, 1, 800000.00),
( 'G32', 'ThinkPad X1 Carbon G7', 'i7-8665U', 6, 3, 1000000.00);

insert into imagenes values
(1, 'https://celularess.com/wp-content/uploads/2019/12/Samsung-Galaxy-S10-1-600x600.jpg'),
( 2, 'https://images.samsung.com/is/image/samsung/co-galaxy-s10-sm-g970-sm-g970fzyjcoo-frontcanaryyellow-thumb-149016542'),
( 13, 'https://www.apple.com/newsroom/images/product/iphone/geo/Apple-iPhone-14-iPhone-14-Plus-hero-220907-geo_Full-Bleed-Image.jpg.xlarge.jpg'),
(3, 'https://img.asmedia.epimg.net/resizer/8l5KW-Vm2Ol_sSyVhDjWXOXzxKQ=/736x0/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/3YQN2D4OFFLXFD7NKNYSGJQTG4.jpg'),
(4, 'https://static1.xdaimages.com/wordpress/wp-content/uploads/2021/04/Sony-Bravia-X75-Android-TV-1024x683.jpg?q=50&fit=crop&w=1500&dpr=1.5'),
(5, 'https://help.apple.com/assets/64274127E825E363734345E5/64274129E825E363734345ED/es_419/9bd1f07c0ce0e28d268f4b2a61370311.png'),
( 6, 'https://www.infobae.com/new-resizer/0j7VSBQePVy61slPuy78Scuf-F4=/992x558/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/3L7HZCBW2FHUDLVH4E5ED3DMUE.jpg'),
( 7, 'https://images.philips.com/is/image/philipsconsumer/f4700a4c0bce41109d02ae7c0080e90d?wid=840&hei=720&$jpglarge$'),
( 9, 'https://www.dexter.com.ar/on/demandware.static/-/Sites-365-dabra-catalog/default/dw4d5af313/products/NI_CW4555-006/NI_CW4555-006-1.JPG'),
( 10, 'https://www.moov.com.ar/on/demandware.static/-/Sites-365-dabra-catalog/default/dw2a41153e/products/ADHQ4280/ADHQ4280-1.JPG'),
( 11, 'https://newsport.vtexassets.com/arquivos/ids/15510712-800-auto?v=638119176109500000&width=800&height=auto&aspect=true'),
( 12, 'https://www.megatone.net/Images/Articulos/zoom2x/1/AUR2205PHI.jpg'),
( 14, 'https://d28hi93gr697ol.cloudfront.net/9ef84dda-32dd-4016-7da3-1c0a824fffb4/img/Producto/107771fc-64f4-a08e-d717-77c8100008b5/aaa1motog23-5-649068b0c595f.jpg'),
( 15, 'https://files.refurbed.com/ii/lenovo-tp-x1-carbon-8665u-1681904132.jpg?t=fitdesign&h=600&w=800'),
( 8, 'https://www.dexter.com.ar/on/demandware.static/-/Sites-365-dabra-catalog/default/dw38004ddd/products/NIDQ5536-390/NIDQ5536-390-1.JPG');
select * from ARTICULOS


-- Use Stored Procedure 
USE [CATALOGO_P3_DB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[storedList]
AS
BEGIN
    SELECT A.Id AS Id,
           A.Codigo AS Codigo,
           A.Nombre AS Nombre,
           A.Descripcion AS Descripcion,
           M.Descripcion AS Marca,
           C.Descripcion AS Categoria,
           C.Id AS IdCategoria,
           M.Id AS IdMarca,
           A.Precio AS Precio
    FROM ARTICULOS A
    LEFT JOIN MARCAS M ON M.Id = A.IdMarca
    LEFT JOIN CATEGORIAS C ON C.Id = A.IdCategoria;
END;