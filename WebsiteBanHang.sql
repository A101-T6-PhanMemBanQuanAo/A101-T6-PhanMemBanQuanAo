USE [WebsiteBanHang]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11-10-2023 10:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nvarchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11-10-2023 10:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11-10-2023 10:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ProductId] [int] NULL,
	[Price] [float] NULL,
	[Status] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11-10-2023 10:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11-10-2023 10:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nchar](100) NULL,
	[CategoryId] [int] NULL,
	[ShortDes] [nvarchar](100) NULL,
	[FullDescription] [nvarchar](100) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[TypeId] [int] NULL,
	[Slug] [varchar](50) NULL,
	[BrandId] [int] NULL,
	[Deleted] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11-10-2023 10:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (1, N'Gucci', N'gucci.jpg', N'gucci', 1, 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (2, N'Louis Vuitton', N'vuiton.jpg', N'louisvuitton', 1, 2, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (3, N'Hermès', N'hermes.jpg', N'hermes', 1, 3, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (4, N'Prada', N'prada.jpg', N'prada', 1, 4, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Áo', N'ao.jpg                                                                                              ', N'ao', 1, 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Quần', N'quan.jpg                                                                                            ', N'quan', 1, 2, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Giày', N'giay.jpg                                                                                            ', N'giay', 1, 3, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (4, N'Túi Xách', N'tuixach.jpg                                                                                         ', N'tuixach', 1, 4, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (5, N'Đồng Hồ', N'dongho.jpg                                                                                          ', N'dongho', 1, 5, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Name], [ProductId], [Price], [Status], [CreatedOnUtc]) VALUES (1, N'DonHang-20230916200303', NULL, NULL, 1, CAST(N'2023-09-16T20:03:03.030' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1, 1, 5, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Áo thun gucci ', N'aogucci.jpg                                                                                         ', 1, N'Áo thun ngắn tay gucci', N'Áo Thun Gucci With Gucci Blade Print T-Shirt Màu Trắng', 1500000, 10, 1, N'aogucci', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Quần thun gucci', N'quangucci.jpg                                                                                       ', 2, N'Quần short gucci', N'Quần Short Nam Gucci GG Nylon Swim Short With Bee 410571 XR898 4824 Màu Xanh Đậm', 2000000, 6, 1, N'quangucci', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Giày gucci', N'giaygucci.jpg                                                                                       ', 3, N'Giày gucci', N'Giày Gucci Sơn Tùng GG Screener Like Auth', 2200000, 15, 2, N'giaygucci', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (4, N'Túi Xách gucci', N'tuixachgucci.jpg                                                                                    ', 4, N'Túi xách gucci', N'Túi xách Gucci Bamboo', 2500000, 10, 2, N'tuixachgucci', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (5, N'Đồng hồ gucci', N'donghogucci.jpg                                                                                     ', 5, N'Đồng hồ gucci', N'GUCCI G-TIMELESS BUTTERFLY WATCH 38MM', 5000000, 7, 2, N'donghogucci', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (6, N'Áo Luisvuitton', N'aovuitton.jpg                                                                                       ', 1, N'Áo vuitton', N'Áo thun đen luisvuitton', 6000000, 5, 1, N'aovuitton', 2, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (7, N'Quần Luisvuitton', N'quanvuitton.jpg                                                                                     ', 2, N'Quần vuitton', N'Quần Short LuisVuitton', 7000000, 9, 1, N'quanvuitton', 2, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (8, N'Giày Luisvuitton', N'giayvuitton.jpg                                                                                     ', 3, N'Giày Vuitton', N'Giày Vuitton đen ', 7500000, 6, 2, N'giayvuitton', 2, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (9, N'Túi Xách Luisvuitton', N'tuixachvuitton.jpg                                                                                  ', 4, N'Túi Xách Vuitton', N'Túi xách Vuitton nâu', 8800000, 6, 2, N'tuixachvuitton', 2, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (10, N'Đồng Hồ Luisvuitton', N'donghovuitton.jpg                                                                                   ', 5, N'Đồng Hồ Vuitton', N'Đồng Hồ Vuitton', 9000000, 8, 2, N'donghovuitton', 2, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (11, N'Áo Hermes', N'aohermes.jpg                                                                                        ', 1, N'Áo Hermes', N'Áo Hermes ', 9500000, 7, 1, N'aohermes', 3, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (12, N'Quần Hermes', N'quanhermes.jpg                                                                                      ', 2, N'Quần Hermes', N'Quần Hermes', 7000000, 9, 1, N'quanhermes', 3, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (13, N'Giày Hermes', N'giayhermes.jpg                                                                                      ', 3, N'Giày Hermes', N'Giày Hermes', 7500000, 10, 2, N'giayhermes', 3, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (14, N'Túi Xách Hermes', N'tuixachhermes.jpg                                                                                   ', 4, N'Túi Xách Hermes', N'Túi Xách Hermes', 8000000, 10, 2, N'tuixachhermes', 3, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (15, N'Đồng Hồ Hermes', N'donghohermes.jpg                                                                                    ', 5, N'Đồng Hồ Hermes', N'Đồng Hồ Hermes', 8500000, 8, 2, N'donghohermes', 3, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (16, N'Áo sơ mi Prada', N'aoprada.jpg                                                                                         ', 1, N'Áo thun Prada', N'Áo Thun Prada ', 7000000, 7, 1, N'aosomiprada', 4, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (17, N'Quần Prada', N'qunaprada.jpg                                                                                       ', 2, N'Quần Jean Prada', N'Quần jeans nam thời trang cao cấp Prada thiết kế đơn giản', 7500000, 12, 1, N'quanprada', 4, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (18, N'Giày Prada', N'giayprada.jpg                                                                                       ', 3, N'Giày Prada', N'Giày prada', 8000000, 10, 2, N'giayprada', 4, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (19, N'Túi Xách Prada', N'giayxachprada.jpg                                                                                   ', 4, N'Túi Xách Prada', N'Túi xách prada', 8500000, 8, 2, N'tuixachprada', 4, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (20, N'Đồng Hồ Prada', N'donghoprada.jpg                                                                                     ', 5, N'Đồng hồ Prada', N'Đồng hồ dây da prada', 9000000, 7, 2, N'donghoprada', 4, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (21, N'Giày Thể Thao Gucci', N'giaygucci1.jpg                                                                                      ', 3, N'Giày Thể Thao Gucci ', N'Giày Thể Thao Gucci Disney Rhyton Donald Duck 646509-DRW00-9522 Màu Kem', 9500000, 8, 2, N'giaythethaogucci', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (22, N'Túi Xách Vuitton Đỏ', N'tuixachvuitton1.jpg                                                                                 ', 3, N'Túi xách Louis Vuitton MTX04', N'Túi xách Vuitton đỏ nâu sang trọng', 9800000, 6, 2, N'tuixachvuitton', 1, 0, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (1, N'Nguy?n Thành', N'Phát', N'phat16102002abcd@gmail.com', N'ea1aaba0d0b1f031357e1c85ae361b22', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (2, N'Nguy?n Thành', N'Phát', N'a3@gmail.com', N'33be2ceeb0df224b0479fa82f1c6c391', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: Giảm giá sốc,2 :' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
