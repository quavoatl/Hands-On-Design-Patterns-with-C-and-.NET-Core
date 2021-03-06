/****** Object:  Table [dbo].[Categories]    Script Date: 2/12/2019 2:12:34 AM ******/
CREATE DATABASE FlixOneDB
Go
USE FlixOneDB
Go
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/12/2019 2:12:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (N'891872e6-5824-4096-ad42-b67408cddba0', N'Fruit', N'All fruits')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Image], [Price], [CategoryId]) VALUES (N'09c2599e-652a-4807-a0f8-390a146f459b', N'Mango', N'A juicy mango', NULL, CAST(40.00 AS Decimal(18, 2)), N'891872e6-5824-4096-ad42-b67408cddba0')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Image], [Price], [CategoryId]) VALUES (N'7af8c5c2-fa98-42a0-b4e0-6d6a22fc3d52', N'Apple', N'Red apple', NULL, CAST(100.00 AS Decimal(18, 2)), N'891872e6-5824-4096-ad42-b67408cddba0')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Image], [Price], [CategoryId]) VALUES (N'e2a8d6b3-a1f9-46dd-90bd-7f797e5c3986', N'Orange', N'Fruity oranges', NULL, CAST(35.00 AS Decimal(18, 2)), N'891872e6-5824-4096-ad42-b67408cddba0')
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
