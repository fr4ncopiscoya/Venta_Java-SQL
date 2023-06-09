USE [master]
GO
/****** Object:  Database [javasql]    Script Date: 3/29/2023 1:46:29 PM ******/
CREATE DATABASE [javasql]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'javasql', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\javasql.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'javasql_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\javasql_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [javasql] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [javasql].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [javasql] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [javasql] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [javasql] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [javasql] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [javasql] SET ARITHABORT OFF 
GO
ALTER DATABASE [javasql] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [javasql] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [javasql] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [javasql] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [javasql] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [javasql] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [javasql] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [javasql] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [javasql] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [javasql] SET  DISABLE_BROKER 
GO
ALTER DATABASE [javasql] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [javasql] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [javasql] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [javasql] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [javasql] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [javasql] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [javasql] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [javasql] SET RECOVERY FULL 
GO
ALTER DATABASE [javasql] SET  MULTI_USER 
GO
ALTER DATABASE [javasql] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [javasql] SET DB_CHAINING OFF 
GO
ALTER DATABASE [javasql] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [javasql] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [javasql] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [javasql] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'javasql', N'ON'
GO
ALTER DATABASE [javasql] SET QUERY_STORE = OFF
GO
USE [javasql]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[dni] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[correo] [nchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idprod] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[precio] [float] NOT NULL,
	[cantidad] [varchar](50) NOT NULL,
	[unidad] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idcli], [dni], [nombre], [apellido], [telefono], [correo]) VALUES (10, 6785678, N'dfghfdgh', N'fghsdfh', 6896879, N'sadfa@sfsfdh                                      ')
INSERT [dbo].[Cliente] ([idcli], [dni], [nombre], [apellido], [telefono], [correo]) VALUES (6, 1234, N'franco', N'piscoya', 1234567, N'francomazns@gmail.com                             ')
INSERT [dbo].[Cliente] ([idcli], [dni], [nombre], [apellido], [telefono], [correo]) VALUES (7, 987654321, N'juan', N'piscoya', 90982347, N'juan@gmail.com                                    ')
INSERT [dbo].[Cliente] ([idcli], [dni], [nombre], [apellido], [telefono], [correo]) VALUES (8, 74848949, N'Raul', N'Gonzales', 98765678, N'raul@gmail.com                                    ')
INSERT [dbo].[Cliente] ([idcli], [dni], [nombre], [apellido], [telefono], [correo]) VALUES (11, 74848949, N'franquito', N'piscoya', 123455678, N'franquito@gmail.com                               ')
INSERT [dbo].[Cliente] ([idcli], [dni], [nombre], [apellido], [telefono], [correo]) VALUES (12, 485489459, N'franquito', N'lskdgl', 45878, N'kldfhgkdjfg@senati.pe                             ')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (1, N'Alicate', 2, N'5', N'unidad')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (2, N'Tornillo', 2.5, N'10', N'decena')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (3, N'skdjhgagh', 12, N'skdjhgagh', N'skdjhgagh')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (4, N'pernos', 2, N'pernos', N'pernos')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (5, N'Cemento', 60, N'Cemento', N'Cemento')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (7, N'SDGSDG', 1, N'SDGSDG', N'SDGSDG')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (8, N'fsdfsd', 2, N'fsdfsd', N'fsdfsd')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (9, N'frsfd', 43, N'frsfd', N'frsfd')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (6, N'mayolica', 12, N'mayolica', N'mayolica')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (10, N'aaaaa', 5, N'aaaaa', N'aaaaa')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (13, N'hilo', 15, N'4', N'unidad')
INSERT [dbo].[Producto] ([idprod], [nom], [precio], [cantidad], [unidad]) VALUES (15, N'hola', 123124, N'hola', N'hola')
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarCliente]
@idcli int
 AS 
 DELETE FROM Cliente WHERE idcli = @idcli
GO
/****** Object:  StoredProcedure [dbo].[eliminarProducto]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarProducto]
@idprod int
AS
DELETE FROM Producto WHERE idprod = @idprod
GO
/****** Object:  StoredProcedure [dbo].[insertarCliente]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertarCliente]

@dni int, @nombre varchar(50),@apellido varchar(50),@telefono int, @correo varchar(50)
AS
BEGIN
insert into Cliente(dni,nombre,apellido,telefono, correo)
select @dni,@nombre,@apellido,@telefono, @correo

END
GO
/****** Object:  StoredProcedure [dbo].[insertarProducto]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertarProducto]
@nom varchar(50),@precio float,@cantidad varchar(50), @unidad varchar(50)
AS
BEGIN
insert into Producto(nom,precio,cantidad, unidad)
select @nom,@precio,@cantidad, @unidad

END
GO
/****** Object:  StoredProcedure [dbo].[modificarClientes]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[modificarClientes] (@idcli int, @dni int, @nombre varchar(50),@apellido varchar(50),@correo varchar(50), @telefono int)
AS
UPDATE Cliente
SET  dni = @dni, nombre = @nombre, apellido = @apellido, correo = @correo, telefono = @telefono
WHERE idcli = @idcli
GO
/****** Object:  StoredProcedure [dbo].[modificarProducto]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[modificarProducto] (@idprod int,@nom varchar(50),@precio float,@cantidad varchar(50), @unidad varchar(50))
AS
UPDATE Producto
SET  nom = @nom, precio= @precio, cantidad= @cantidad, unidad= @unidad
WHERE idprod = @idprod
GO
/****** Object:  StoredProcedure [dbo].[mostrarClientes]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarClientes]
AS
select idcli,dni,nombre,apellido,correo,telefono
FROM Cliente

GO
/****** Object:  StoredProcedure [dbo].[mostrarProducto]    Script Date: 3/29/2023 1:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarProducto]
AS
select idprod,nom,precio,cantidad,unidad
FROM Producto

GO
USE [master]
GO
ALTER DATABASE [javasql] SET  READ_WRITE 
GO
