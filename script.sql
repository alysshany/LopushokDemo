USE [Lopushok]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 26.02.2024 18:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MaterialTypeId] [int] NOT NULL,
	[CountInPack] [int] NOT NULL,
	[UnitOfMeasureId] [int] NOT NULL,
	[CountInStock] [int] NOT NULL,
	[MinimalCountLeft] [int] NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__Material__3214EC0765B3BF25] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 26.02.2024 18:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Material__3214EC071D9A5939] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26.02.2024 18:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Article] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MinimalAgentCost] [decimal](10, 2) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[CountOfPeopleToProduce] [int] NOT NULL,
	[NumberOfFactory] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 26.02.2024 18:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ProductId] [varchar](10) NOT NULL,
	[MaterialId] [int] NOT NULL,
	[MaterialCount] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 26.02.2024 18:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__ProductT__3214EC07B4EEE22A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 26.02.2024 18:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__UnitOfMe__3214EC072A43BE18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (1, N'Спрессованный материал серый 0x2', 1, 5, 1, 140, 49, CAST(3312800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (2, N'Рулон бумаги зеленый 1x1', 2, 3, 1, 634, 36, CAST(26841.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (3, N'Спрессованный материал розовый 2x1', 1, 8, 1, 636, 21, CAST(52606.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (4, N'Гранулы для бумаги розовый 2x2', 3, 10, 2, 661, 16, CAST(10608.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (5, N'Спрессованный материал белый 1x1', 1, 7, 3, 843, 16, CAST(4344000.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (6, N'Рулон бумаги белый 1x0', 2, 1, 1, 501, 49, CAST(1583300.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (7, N'Переработка бумаги синий 0x3', 4, 9, 1, 958, 32, CAST(14180.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (8, N'Рулон бумаги цветной 2x0', 2, 3, 1, 386, 46, CAST(3554400.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (9, N'Рулон бумаги зеленый 2x2', 2, 8, 3, 593, 20, CAST(55016.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (10, N'Рулон бумаги белый 3x2', 2, 4, 3, 16, 31, CAST(53759.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (11, N'Переработка бумаги серый 3x3', 4, 10, 1, 89, 20, CAST(4939100.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (12, N'Гранулы для бумаги синий 1x2', 3, 6, 2, 112, 34, CAST(25624.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (13, N'Рулон бумаги серый 3x3', 2, 3, 1, 596, 8, CAST(50247.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (14, N'Спрессованный материал цветной 1x3', 1, 3, 1, 772, 40, CAST(5167200.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (15, N'Рулон бумаги синий 2x2', 2, 6, 3, 363, 47, CAST(38450.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (16, N'Гранулы для бумаги розовый 0x3', 3, 4, 2, 379, 41, CAST(386800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (17, N'Переработка бумаги цветной 1x3', 4, 6, 3, 32, 34, CAST(37930.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (18, N'Гранулы для бумаги цветной 0x1', 3, 5, 2, 759, 28, CAST(9216.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (19, N'Рулон бумаги цветной 1x2', 2, 10, 1, 246, 37, CAST(501600.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (20, N'Переработка бумаги серый 1x2', 4, 8, 1, 516, 49, CAST(35981.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (21, N'Спрессованный материал синий 0x2', 1, 3, 3, 514, 40, CAST(6555.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (22, N'Переработка бумаги синий 1x2', 4, 4, 1, 81, 32, CAST(47873.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (23, N'Спрессованный материал цветной 1x2', 1, 1, 1, 429, 47, CAST(1580200.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (24, N'Рулон бумаги розовый 2x1', 2, 1, 1, 349, 9, CAST(3616300.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (25, N'Рулон бумаги белый 3x3', 2, 2, 3, 201, 46, CAST(51261.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (26, N'Рулон бумаги цветной 2x2', 2, 10, 3, 534, 46, CAST(50776.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (27, N'Спрессованный материал розовый 2x3', 1, 3, 1, 552, 7, CAST(465700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (28, N'Рулон бумаги розовый 3x2', 2, 9, 1, 144, 41, CAST(51776.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (29, N'Переработка бумаги синий 0x1', 4, 7, 1, 97, 30, CAST(47937.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (30, N'Спрессованный материал розовый 1x2', 1, 7, 1, 509, 26, CAST(10604.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (31, N'Рулон бумаги цветной 1x3', 2, 10, 3, 149, 13, CAST(2272400.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (32, N'Рулон бумаги синий 3x2', 2, 9, 1, 508, 16, CAST(25561.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (33, N'Рулон бумаги зеленый 2x3', 2, 2, 1, 181, 35, CAST(4538800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (34, N'Гранулы для бумаги розовый 0x2', 3, 7, 3, 37, 50, CAST(1722700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (35, N'Переработка бумаги цветной 0x0', 4, 9, 1, 508, 19, CAST(5114700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (36, N'Переработка бумаги серый 0x2', 4, 3, 1, 167, 17, CAST(1024800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (37, N'Гранулы для бумаги цветной 0x3', 3, 10, 3, 962, 33, CAST(35922.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (38, N'Рулон бумаги зеленый 3x3', 2, 3, 1, 861, 45, CAST(37283.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (39, N'Рулон бумаги белый 0x3', 2, 2, 1, 933, 50, CAST(725300.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (40, N'Рулон бумаги синий 3x1', 2, 3, 1, 720, 11, CAST(4467500.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (41, N'Спрессованный материал белый 3x3', 1, 8, 1, 942, 12, CAST(17600.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (42, N'Рулон бумаги белый 1x3', 2, 2, 3, 382, 10, CAST(32770.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (43, N'Переработка бумаги белый 3x0', 4, 10, 1, 247, 11, CAST(3950000.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (44, N'Гранулы для бумаги синий 1x3', 3, 10, 2, 841, 18, CAST(3870000.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (45, N'Спрессованный материал синий 3x1', 1, 10, 1, 270, 50, CAST(38809.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (46, N'Спрессованный материал цветной 0x0', 1, 6, 1, 754, 24, CAST(4611.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (47, N'Переработка бумаги цветной 0x1', 4, 8, 1, 833, 34, CAST(53875.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (48, N'Спрессованный материал цветной 1x0', 1, 8, 1, 856, 26, CAST(12817.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (49, N'Переработка бумаги синий 0x2', 4, 9, 3, 709, 47, CAST(2315700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [Name], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [Cost]) VALUES (50, N'Переработка бумаги белый 2x0', 4, 5, 1, 794, 17, CAST(2163700.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([Id], [Name]) VALUES (1, N' Пресс')
INSERT [dbo].[MaterialType] ([Id], [Name]) VALUES (2, N' Рулон')
INSERT [dbo].[MaterialType] ([Id], [Name]) VALUES (3, N' Гранулы')
INSERT [dbo].[MaterialType] ([Id], [Name]) VALUES (4, N' Нарезка')
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'238686', N'Полотенце 27М Дыня', CAST(7864.00 AS Decimal(10, 2)), N'', 2, 2, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'239349', N'Полотенце 41М Дыня', CAST(6238.00 AS Decimal(10, 2)), N'', 3, 2, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'240580', N'Набор 8М Дыня', CAST(7465.00 AS Decimal(10, 2)), N'', 5, 5, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'252485', N'Бумага 33М Клубника', CAST(4240.00 AS Decimal(10, 2)), N'\products\paper_0.jpeg', 1, 3, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'253218', N'Бумага 20М Клубника', CAST(1168400.00 AS Decimal(10, 2)), N'', 5, 2, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'256862', N'Бумага 5М Дыня', CAST(3712.00 AS Decimal(10, 2)), N'\products\paper_5.jpeg', 5, 5, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'258695', N'Полотенце 25М Бриз', CAST(3631.00 AS Decimal(10, 2)), N'', 1, 1, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'259488', N'Полотенце 16М Ваниль', CAST(10095.00 AS Decimal(10, 2)), N'', 4, 3, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'259548', N'Набор 9М Бриз', CAST(2317.00 AS Decimal(10, 2)), N'', 2, 4, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'260492', N'Бумага 3М Бриз', CAST(827800.00 AS Decimal(10, 2)), N'', 2, 1, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'261465', N'Набор 10М Ваниль', CAST(13028.00 AS Decimal(10, 2)), N'\products\paper_12.jpeg', 4, 5, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'262257', N'Бумага 16М Дыня', CAST(910700.00 AS Decimal(10, 2)), N'', 4, 5, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'264493', N'Полотенце 24М Дыня', CAST(10479.00 AS Decimal(10, 2)), N'', 2, 5, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'268393', N'Бумага 32М Дыня', CAST(7424.00 AS Decimal(10, 2)), N'', 5, 4, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'275591', N'Бумага 10М Клубника', CAST(13600.00 AS Decimal(10, 2)), N'\products\paper_7.jpeg', 2, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'277950', N'Набор 19М Бриз', CAST(9962.00 AS Decimal(10, 2)), N'', 3, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'278382', N'Набор 5М Бриз', CAST(732500.00 AS Decimal(10, 2)), N'', 2, 3, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'278463', N'Полотенце 27М Ваниль', CAST(3978.00 AS Decimal(10, 2)), N'\products\paper_10.jpeg', 2, 3, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'278721', N'Набор 50М Клубника', CAST(1422000.00 AS Decimal(10, 2)), N'', 3, 3, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'279801', N'Набор 26М Дыня', CAST(4628.00 AS Decimal(10, 2)), N'', 2, 2, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'281425', N'Набор 41М Клубника', CAST(990800.00 AS Decimal(10, 2)), N'\products\paper_23.jpeg', 4, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'285792', N'Бумага 20М Бриз', CAST(14370.00 AS Decimal(10, 2)), N'', 3, 3, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'289779', N'Набор 6М Бриз', CAST(1415400.00 AS Decimal(10, 2)), N'', 5, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'290729', N'Бумага 7М Ваниль', CAST(6934.00 AS Decimal(10, 2)), N'', 4, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'292206', N'Полотенце 48М Клубника', CAST(980100.00 AS Decimal(10, 2)), N'', 4, 3, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'292358', N'Полотенце 37М Клубника', CAST(396100.00 AS Decimal(10, 2)), N'', 5, 4, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'294441', N'Полотенце 47М Дыня', CAST(1146000.00 AS Decimal(10, 2)), N'', 4, 4, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'296007', N'Набор 24М Клубника', CAST(1416200.00 AS Decimal(10, 2)), N'', 3, 2, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'297840', N'Полотенце 33М Бриз', CAST(461100.00 AS Decimal(10, 2)), N'', 4, 4, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'298632', N'Бумага 28М Дыня', CAST(1467100.00 AS Decimal(10, 2)), N'', 3, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'303994', N'Полотенце 45М Бриз', CAST(13081.00 AS Decimal(10, 2)), N'\products\paper_6.jpeg', 3, 2, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'309067', N'Полотенце 17М Бриз', CAST(1382500.00 AS Decimal(10, 2)), N'\products\paper_24.jpeg', 2, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'309862', N'Полотенце 14М Клубника', CAST(10682.00 AS Decimal(10, 2)), N'\products\paper_17.jpeg', 2, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'310212', N'Полотенце 50М Ваниль', CAST(13204.00 AS Decimal(10, 2)), N'\products\paper_11.jpeg', 1, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'310507', N'Бумага 14М Бриз', CAST(7846.00 AS Decimal(10, 2)), N'', 3, 1, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'316033', N'Набор 34М Ваниль', CAST(1353300.00 AS Decimal(10, 2)), N'', 4, 1, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'324941', N'Полотенце 6М Ваниль', CAST(5594.00 AS Decimal(10, 2)), N'', 2, 1, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'326200', N'Бумага 40М Бриз', CAST(12927.00 AS Decimal(10, 2)), N'\products\paper_19.jpeg', 2, 5, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'330360', N'Набор 43М Дыня', CAST(586700.00 AS Decimal(10, 2)), N'', 1, 5, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'331270', N'Набор 18М Ваниль', CAST(11171.00 AS Decimal(10, 2)), N'', 1, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'331688', N'Полотенце 14М Дыня', CAST(10330.00 AS Decimal(10, 2)), N'', 2, 2, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'332522', N'Бумага 29М Дыня', CAST(543900.00 AS Decimal(10, 2)), N'\products\paper_18.jpeg', 1, 3, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'334385', N'Полотенце 28М Клубника', CAST(9208.00 AS Decimal(10, 2)), N'\products\paper_20.jpeg', 1, 2, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'334943', N'Бумага 29М Клубника', CAST(599700.00 AS Decimal(10, 2)), N'', 5, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'337632', N'Набор 24М Дыня', CAST(1147100.00 AS Decimal(10, 2)), N'', 2, 5, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'340583', N'Бумага 50М Бриз', CAST(6788.00 AS Decimal(10, 2)), N'\products\paper_15.jpeg', 3, 4, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'344868', N'Набор 29М Ваниль', CAST(7618.00 AS Decimal(10, 2)), N'\products\paper_4.jpeg', 1, 1, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'345239', N'Бумага 5М Бриз', CAST(9243.00 AS Decimal(10, 2)), N'', 5, 1, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'346154', N'Набор 40М Дыня', CAST(3427.00 AS Decimal(10, 2)), N'', 3, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'347239', N'Бумага 33М Бриз', CAST(13767.00 AS Decimal(10, 2)), N'', 2, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'348651', N'Бумага 13М Дыня', CAST(347700.00 AS Decimal(10, 2)), N'', 1, 3, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'349614', N'Набор 12М Бриз', CAST(2551.00 AS Decimal(10, 2)), N'\products\paper_3.jpeg', 3, 1, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'349802', N'Набор 45М Бриз', CAST(1204000.00 AS Decimal(10, 2)), N'', 2, 1, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'349861', N'Бумага 13М Бриз', CAST(384200.00 AS Decimal(10, 2)), N'', 2, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'350515', N'Полотенце 7М Бриз', CAST(498600.00 AS Decimal(10, 2)), N'', 2, 2, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'351062', N'Набор 32М Клубника', CAST(445000.00 AS Decimal(10, 2)), N'', 4, 3, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'352034', N'Полотенце 45М Клубника', CAST(1193900.00 AS Decimal(10, 2)), N'', 1, 2, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'353930', N'Набор 40М Бриз', CAST(1276700.00 AS Decimal(10, 2)), N'', 2, 2, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'357053', N'Полотенце 44М Ваниль', CAST(3396.00 AS Decimal(10, 2)), N'', 5, 5, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'360424', N'Набор 22М Клубника', CAST(13524.00 AS Decimal(10, 2)), N'', 1, 4, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'365615', N'Полотенце 15М Бриз', CAST(13013.00 AS Decimal(10, 2)), N'', 5, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'366160', N'Бумага 21М Дыня', CAST(1106400.00 AS Decimal(10, 2)), N'\products\paper_2.jpeg', 4, 1, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'373939', N'Набор 14М Дыня', CAST(3382.00 AS Decimal(10, 2)), N'', 1, 2, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'374263', N'Набор 24М Ваниль', CAST(3907.00 AS Decimal(10, 2)), N'', 5, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'374276', N'Бумага 45М Бриз', CAST(13605.00 AS Decimal(10, 2)), N'', 3, 3, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'376834', N'Набор 16М Дыня', CAST(1192700.00 AS Decimal(10, 2)), N'', 5, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'377042', N'Набор 20М Бриз', CAST(9227.00 AS Decimal(10, 2)), N'\products\paper_9.jpeg', 5, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'378723', N'Полотенце 47М Клубника', CAST(387100.00 AS Decimal(10, 2)), N'', 5, 4, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'379800', N'Бумага 32М Бриз', CAST(683200.00 AS Decimal(10, 2)), N'', 3, 1, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'381110', N'Набор 34М Клубника', CAST(237200.00 AS Decimal(10, 2)), N'', 2, 3, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'382063', N'Набор 19М Дыня', CAST(2373.00 AS Decimal(10, 2)), N'', 4, 1, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'385037', N'Набор 41М Дыня', CAST(329500.00 AS Decimal(10, 2)), N'\products\paper_21.jpeg', 5, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'390914', N'Набор 42М Дыня', CAST(14344.00 AS Decimal(10, 2)), N'\products\paper_13.jpeg', 3, 5, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'397143', N'Полотенце 7М Ваниль', CAST(2868.00 AS Decimal(10, 2)), N'', 3, 2, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'400418', N'Полотенце 11М Дыня', CAST(11660.00 AS Decimal(10, 2)), N'\products\paper_25.jpeg', 4, 2, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'400484', N'Бумага 45М Клубника', CAST(3475.00 AS Decimal(10, 2)), N'', 4, 3, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'403054', N'Полотенце 17М Ваниль', CAST(504800.00 AS Decimal(10, 2)), N'', 4, 2, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'414339', N'Бумага 49М Бриз', CAST(10786.00 AS Decimal(10, 2)), N'', 1, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'414595', N'Набор 50М Бриз', CAST(10750.00 AS Decimal(10, 2)), N'\products\paper_8.jpeg', 2, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'416066', N'Бумага 38М Ваниль', CAST(12175.00 AS Decimal(10, 2)), N'', 1, 2, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'418298', N'Полотенце 16М Бриз', CAST(7342.00 AS Decimal(10, 2)), N'', 1, 2, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'422185', N'Бумага 44М Бриз', CAST(6441.00 AS Decimal(10, 2)), N'', 5, 2, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'425641', N'Полотенце 43М Клубника', CAST(14151.00 AS Decimal(10, 2)), N'', 4, 2, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'426804', N'Бумага 12М Бриз', CAST(10703.00 AS Decimal(10, 2)), N'', 5, 1, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'431234', N'Набор 10М Дыня', CAST(3816.00 AS Decimal(10, 2)), N'\products\paper_22.jpeg', 5, 4, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'434113', N'Набор 25М Бриз', CAST(1304700.00 AS Decimal(10, 2)), N'', 5, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'437519', N'Полотенце 23М Ваниль', CAST(3317.00 AS Decimal(10, 2)), N'', 1, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'440942', N'Набор 9М Дыня', CAST(258000.00 AS Decimal(10, 2)), N'', 5, 3, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'441239', N'Набор 17М Клубника', CAST(1486300.00 AS Decimal(10, 2)), N'', 4, 2, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'442634', N'Бумага 37М Клубника', CAST(12664.00 AS Decimal(10, 2)), N'\products\paper_14.jpeg', 3, 5, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'443382', N'Набор 22М Бриз', CAST(450100.00 AS Decimal(10, 2)), N'', 3, 3, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'443538', N'Набор 43М Клубника', CAST(13786.00 AS Decimal(10, 2)), N'', 5, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'444337', N'Бумага 26М Ваниль', CAST(3007.00 AS Decimal(10, 2)), N'', 4, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'446103', N'Бумага 10М Дыня', CAST(13975.00 AS Decimal(10, 2)), N'', 5, 1, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'446348', N'Бумага 9М Ваниль', CAST(13568.00 AS Decimal(10, 2)), N'', 3, 3, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'449359', N'Бумага 15М Клубника', CAST(1000900.00 AS Decimal(10, 2)), N'', 2, 3, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'449401', N'Набор 31М Дыня', CAST(5236.00 AS Decimal(10, 2)), N'', 5, 5, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'450659', N'Набор 11М Дыня', CAST(595600.00 AS Decimal(10, 2)), N'\products\paper_16.jpeg', 2, 3, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'454479', N'Бумага 50М Ваниль', CAST(3163.00 AS Decimal(10, 2)), N'', 3, 3, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'456129', N'Бумага 12М Клубника', CAST(6467.00 AS Decimal(10, 2)), N'\products\paper_1.jpeg', 5, 3, 4)
GO
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 24, 20, 1)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'275591', 6, 1, 2)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'400484', 6, 4, 3)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'456129', 24, 18, 4)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'349614', 6, 3, 5)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'334385', 24, 9, 6)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'337632', 23, 15, 7)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 25, 3, 8)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 39, 12, 9)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'259488', 25, 20, 10)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'349614', 42, 4, 11)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 33, 4, 12)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 39, 12, 13)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'425641', 25, 8, 14)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'334385', 25, 4, 15)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'400418', 42, 3, 16)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'431234', 42, 4, 17)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'253218', 42, 6, 18)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'240580', 2, 1, 19)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'240580', 8, 1, 20)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'332522', 38, 15, 21)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'268393', 13, 3, 22)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 27, 6, 23)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 40, 15, 24)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 13, 1, 25)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'256862', 13, 6, 26)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'385037', 2, 16, 27)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 38, 19, 28)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'303994', 21, 5, 29)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'253218', 27, 6, 30)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'285792', 27, 14, 31)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'446348', 40, 8, 32)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'443382', 2, 3, 33)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'414595', 40, 6, 34)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'443382', 36, 2, 35)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'348651', 14, 9, 36)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'310212', 13, 10, 37)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'290729', 40, 15, 38)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 40, 14, 39)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 13, 3, 40)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'340583', 8, 2, 41)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'259488', 21, 4, 42)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'450659', 14, 11, 43)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'303994', 10, 4, 44)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'446348', 22, 15, 45)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'381110', 16, 1, 46)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'240580', 16, 16, 47)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 16, 11, 48)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'294441', 16, 1, 49)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'349614', 18, 20, 50)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'385037', 18, 18, 51)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'347239', 18, 18, 52)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'281425', 18, 6, 53)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 18, 3, 54)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 46, 11, 55)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'456129', 15, 19, 56)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 12, 18, 57)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'377042', 46, 19, 58)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 17, 3, 59)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'310212', 46, 19, 60)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'450659', 12, 6, 61)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'309862', 46, 7, 62)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 12, 14, 63)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'381110', 34, 14, 64)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'256862', 34, 5, 65)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'449359', 29, 15, 66)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 5, 13, 67)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'253218', 5, 10, 68)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'309862', 5, 5, 69)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'281425', 30, 20, 70)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'332522', 41, 8, 71)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 48, 19, 72)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'334385', 3, 13, 73)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 48, 18, 74)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'416066', 47, 8, 75)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'347239', 32, 20, 76)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 32, 4, 77)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 49, 14, 78)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'259488', 7, 8, 79)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'377042', 35, 10, 80)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 28, 5, 81)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 35, 1, 82)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'303994', 28, 10, 83)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'256862', 7, 19, 84)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 32, 16, 85)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 28, 17, 86)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'331270', 44, 8, 87)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'390914', 37, 17, 88)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'310212', 37, 10, 89)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 44, 11, 90)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'440942', 43, 4, 91)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'414595', 26, 16, 92)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'275591', 26, 11, 93)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'275591', 11, 4, 94)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 44, 12, 95)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 44, 16, 96)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'416066', 11, 3, 97)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'449359', 43, 4, 98)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 37, 10, 99)
GO
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'281425', 44, 6, 100)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (1, N'Три слоя')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (2, N'Два слоя')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (3, N'Детская')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (4, N'Супер мягкая')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (5, N'Один слой')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (6, N'Три слоя')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] ON 

INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (1, N' м')
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (2, N' л')
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (3, N' кг')
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] OFF
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Materials__Mater__3D5E1FD2] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Materials__Mater__3D5E1FD2]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Materials__UnitO__3E52440B] FOREIGN KEY([UnitOfMeasureId])
REFERENCES [dbo].[UnitOfMeasure] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Materials__UnitO__3E52440B]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Product__412EB0B6] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Product__412EB0B6]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK__ProductMa__Mater__44FF419A] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK__ProductMa__Mater__44FF419A]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Article])
GO
