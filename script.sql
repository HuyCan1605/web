USE [master]
GO
/****** Object:  Database [Assign]    Script Date: 7/20/2021 1:32:24 PM ******/
CREATE DATABASE [Assign]
 
CREATE TABLE [dbo].[Account](
	[accId] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](150) NULL,
	[password] [varchar](50) NULL,
	[isAdmin] [bit] NULL,
	[isCustomer] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/20/2021 1:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[idCategory] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[description] [nvarchar](150) NULL,
	[priceRange] [nvarchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/20/2021 1:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](500) NULL,
	[date] [date] NULL,
	[pid] [int] NULL,
	[user] [varchar](50) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDetail]    Script Date: 7/20/2021 1:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetail](
	[idCustomer] [int] IDENTITY(1,1) NOT NULL,
	[payment_methods] [bit] NULL,
	[name] [nvarchar](150) NULL,
	[phone] [varchar](12) NULL,
	[email] [varchar](150) NULL,
	[firstName] [nvarchar](12) NULL,
	[midName] [nvarchar](12) NULL,
	[lastName] [nvarchar](12) NULL,
	[address] [nvarchar](150) NULL,
	[numberRoad] [nvarchar](150) NULL,
	[oid] [int] NULL,
	[note] [nvarchar](max) NULL,
	[type_add] [bit] NULL,
 CONSTRAINT [PK_CustomerDetail] PRIMARY KEY CLUSTERED 
(
	[idCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/20/2021 1:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[cid] [int] NULL,
	[totalmoney] [money] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/20/2021 1:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[oid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[oid] ASC,
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/20/2021 1:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[available] [bit] NULL,
	[description] [nvarchar](150) NULL,
	[price] [int] NULL,
	[imageLink] [nvarchar](150) NULL,
	[idCategory] [int] NULL,
	[quantity] [nvarchar](150) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accId], [username], [password], [isAdmin], [isCustomer]) VALUES (1, N'sa', N'123', 1, 1)
INSERT [dbo].[Account] ([accId], [username], [password], [isAdmin], [isCustomer]) VALUES (2, N'huy', N'123', 1, 1)
INSERT [dbo].[Account] ([accId], [username], [password], [isAdmin], [isCustomer]) VALUES (3, N'hoa', N'1234', 0, 0)
INSERT [dbo].[Account] ([accId], [username], [password], [isAdmin], [isCustomer]) VALUES (1002, N'van', N'123', 0, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([idCategory], [title], [description], [priceRange]) VALUES (1, N'Giá đỗ', NULL, NULL)
INSERT [dbo].[Category] ([idCategory], [title], [description], [priceRange]) VALUES (2, N'Bánh đa nem', NULL, NULL)
INSERT [dbo].[Category] ([idCategory], [title], [description], [priceRange]) VALUES (3, N'Công nghệ', NULL, NULL)
INSERT [dbo].[Category] ([idCategory], [title], [description], [priceRange]) VALUES (4, N'Miến', NULL, NULL)
INSERT [dbo].[Category] ([idCategory], [title], [description], [priceRange]) VALUES (5, N'Nấm', NULL, NULL)
INSERT [dbo].[Category] ([idCategory], [title], [description], [priceRange]) VALUES (6, N'Gia vị', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (1, N'oke', CAST(N'2020-12-01' AS Date), 1, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (2, N'oke1', CAST(N'2020-12-01' AS Date), 2, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (4, N'ÄÆ°á»£c', CAST(N'2021-07-18' AS Date), 1, N'hoa')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (5, N'ÄÆ°á»£c Äáº¥y', CAST(N'2021-07-18' AS Date), 1, N'hoa')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (6, N'du?c nh?', CAST(N'2020-12-01' AS Date), 1, N'hoa')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (7, N'oke nhỉ', CAST(N'2021-07-18' AS Date), 1, N'hoa')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (8, N'chuẩn đấy', CAST(N'2021-07-19' AS Date), 1, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (9, N'hihi', CAST(N'2021-07-19' AS Date), 1, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (10, N'test', CAST(N'2021-07-19' AS Date), 1, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (11, N'oke', CAST(N'2021-07-19' AS Date), 1, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (12, N'nani', CAST(N'2021-07-19' AS Date), 2, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (13, N'oke', CAST(N'2021-07-19' AS Date), 6, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (14, N'chuẩn', CAST(N'2021-07-20' AS Date), 1, N'huy')
INSERT [dbo].[Comment] ([cid], [content], [date], [pid], [user]) VALUES (15, N'được đấy', CAST(N'2021-07-20' AS Date), 3, N'huy')
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3, CAST(N'2021-07-15' AS Date), 2, 18.0000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4, CAST(N'2021-07-20' AS Date), 3, 97.0000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5, CAST(N'2021-07-20' AS Date), 2, 30.0000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (6, CAST(N'2021-07-20' AS Date), 2, 100.0000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (7, CAST(N'2021-07-20' AS Date), 2, 24.0000)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (3, 1, 4, 5)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (3, 2, 1, 8)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (3, 3, 1, 10)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (4, 1, 2, 6)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (4, 3, 1, 10)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (4, 5, 1, 30)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (4, 6, 1, 45)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (5, 1, 5, 6)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (6, 20, 1, 100)
INSERT [dbo].[OrderDetail] ([oid], [pid], [quantity], [price]) VALUES (7, 9, 3, 8)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (1, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 6, N'images/home/300gram.png', 1, N'300 gram')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (2, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 8, N'images/home/500gram.png', 1, N'500 gram')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (3, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 10, N'images/home/700gram.png', 1, N'700 gram')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (4, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 15, N'images/home/1kg.png', 1, N'1 kg')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (5, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 30, N'images/home/2kg.png', 1, N'2 kg')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (6, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 45, N'images/home/3kg.png', 1, N'3 kg')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (7, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 75, N'images/home/5kg.png', 1, N'5 kg')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (8, N'Túi giá', 1, N'Giá Quang Hài sạch, thơm ngon mà không sử dụng bất kỳ loại hóa chất và chất kích thích tăng trưởng nào', 150, N'images/home/gia1.png', 1, N'10 kg')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (9, N'Bánh đa nem', 1, NULL, 8, N'images/home/banhtrang.jpg', 2, N'Trắng, To (20 cái)')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (10, N'Bánh đa nem', 1, NULL, 8, N'images/home/banhdo.jpg', 2, N'Đỏ, To (20 cái)')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (11, N'Bánh đa nem', 1, NULL, 6, N'images/home/banhdobe.jpg', 2, N'Đỏ, Bé(20 cái)')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (12, N'Miến', 1, NULL, 5, N'images/home/mienvang.jpg', 4, N'Vàng')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (13, N'Miến', 1, NULL, 5, N'images/home/mientrang.jpg', 4, N'Trắng')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (14, N'Miến', 1, NULL, 5, N'images/home/mienden.jpg', 4, N'Đen')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (15, N'Miến Hưng Thịnh', 1, NULL, 30, N'images/home/mienhungthinh.jpg', 4, N'500 gram')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (16, N'Mộc nhĩ', 1, NULL, 15, N'images/home/mocnhi.jpg', 5, N'100 gram')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (17, N'Nấm hương', 1, NULL, 30, N'images/home/namhuong.jpg', 5, N'100 gram')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (18, N'Hạt tiêu', 1, NULL, 1, N'images/home/hattieu.jpg', 6, N'1 túi')
INSERT [dbo].[Product] ([idProduct], [name], [available], [description], [price], [imageLink], [idCategory], [quantity]) VALUES (20, N'Nấm thôi miên', 1, N'Có khả năng thôi miên zombies để tấn công cho bản thân', 500, N'okeoke', 6, N'/5 cây')
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([idProduct])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
ALTER TABLE [dbo].[CustomerDetail]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDetail_Order] FOREIGN KEY([oid])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[CustomerDetail] CHECK CONSTRAINT [FK_CustomerDetail_Order]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([cid])
REFERENCES [dbo].[Account] ([accId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order1] FOREIGN KEY([oid])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order1]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product1] FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([idProduct])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([idCategory])
REFERENCES [dbo].[Category] ([idCategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [Assign] SET  READ_WRITE 
GO
