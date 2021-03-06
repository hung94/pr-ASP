USE [QuanLiBanHang]
GO
/****** Object:  Table [dbo].[Danh_muc]    Script Date: 08/20/2016 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Danh_muc](
	[id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[parent_category_id] [int] NULL,
 CONSTRAINT [Danh_muc_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Danh_muc] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Danh_muc] ([id], [name], [parent_category_id]) VALUES (1, N'Dien Thoai', NULL)
INSERT [dbo].[Danh_muc] ([id], [name], [parent_category_id]) VALUES (2, N'Table', NULL)
INSERT [dbo].[Danh_muc] ([id], [name], [parent_category_id]) VALUES (3, N'May Tinh', NULL)
INSERT [dbo].[Danh_muc] ([id], [name], [parent_category_id]) VALUES (4, N'Phu Kien', NULL)
INSERT [dbo].[Danh_muc] ([id], [name], [parent_category_id]) VALUES (5, N'The Cao', NULL)
/****** Object:  Table [dbo].[Khach_hang]    Script Date: 08/20/2016 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khach_hang](
	[id] [int] NOT NULL,
	[full_name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
 CONSTRAINT [Khach_hang_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Khach_hang] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Khach_hang] ([id], [full_name], [email]) VALUES (1, N'Hoang Minh Khue', N'Khuehm@fpt.edu.vn')
INSERT [dbo].[Khach_hang] ([id], [full_name], [email]) VALUES (2, N'Duong Van Tin', N'Tindv@fpt.edu.vn')
INSERT [dbo].[Khach_hang] ([id], [full_name], [email]) VALUES (3, N'Nguyen Van Hung', N'Hungnv@fpt.edu.vn')
INSERT [dbo].[Khach_hang] ([id], [full_name], [email]) VALUES (4, N'Trinh Huu Hung', N'Hungth@fpt.edu.vn')
INSERT [dbo].[Khach_hang] ([id], [full_name], [email]) VALUES (5, N'Nguyen Chi Tuan', N'Tuannc@fpt.edu.vn')
/****** Object:  Table [dbo].[Don_hang]    Script Date: 08/20/2016 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Don_hang](
	[id] [int] NOT NULL,
	[purchase_no] [char](12) NOT NULL,
	[client_id] [int] NOT NULL,
 CONSTRAINT [Don_hang_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Don_hang] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Don_hang] ([id], [purchase_no], [client_id]) VALUES (1, N'yes         ', 1)
INSERT [dbo].[Don_hang] ([id], [purchase_no], [client_id]) VALUES (2, N'yes         ', 2)
INSERT [dbo].[Don_hang] ([id], [purchase_no], [client_id]) VALUES (3, N'yes         ', 3)
INSERT [dbo].[Don_hang] ([id], [purchase_no], [client_id]) VALUES (4, N'no          ', 4)
INSERT [dbo].[Don_hang] ([id], [purchase_no], [client_id]) VALUES (5, N'yes         ', 5)
/****** Object:  Table [dbo].[San_pham]    Script Date: 08/20/2016 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[San_pham](
	[id] [int] NOT NULL,
	[product_category_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[price] [decimal](12, 2) NOT NULL,
	[description] [varchar](1000) NOT NULL,
	[img] [varchar](255) NOT NULL,
 CONSTRAINT [San_pham_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[San_pham] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[San_pham] ([id], [product_category_id], [name], [price], [description], [img]) VALUES (1, 1, N'Iphone 6s', CAST(12000000.00 AS Decimal(12, 2)), N'San pham moi nhat cua hang Apple', N'Link')
INSERT [dbo].[San_pham] ([id], [product_category_id], [name], [price], [description], [img]) VALUES (2, 2, N'Ipad 4 wifi', CAST(9000000.00 AS Decimal(12, 2)), N'Ipad 4 co kha nang toi uu hieu suat', N'Link')
INSERT [dbo].[San_pham] ([id], [product_category_id], [name], [price], [description], [img]) VALUES (3, 3, N'Laptop Asus x550c', CAST(12000000.00 AS Decimal(12, 2)), N'Laptop Asus corel i5 - Ram 4G', N'Link')
INSERT [dbo].[San_pham] ([id], [product_category_id], [name], [price], [description], [img]) VALUES (4, 4, N'USB 8GB', CAST(100000.00 AS Decimal(12, 2)), N'USB 8GB 2.0 Apacer AH328', N'Link')
INSERT [dbo].[San_pham] ([id], [product_category_id], [name], [price], [description], [img]) VALUES (5, 5, N'The Cao Viettel', CAST(50000.00 AS Decimal(12, 2)), N'The cao viettel', N'Link')
/****** Object:  Table [dbo].[Chi_tiet_don_hang]    Script Date: 08/20/2016 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_tiet_don_hang](
	[id] [int] NOT NULL,
	[purchase_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[product_name] [nchar](50) NULL,
 CONSTRAINT [Chi_tiet_don_hang_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chi_tiet_don_hang] DISABLE CHANGE_TRACKING
GO
INSERT [dbo].[Chi_tiet_don_hang] ([id], [purchase_id], [product_id], [amount], [product_name]) VALUES (1, 1, 1, 2, N'Iphone                                            ')
INSERT [dbo].[Chi_tiet_don_hang] ([id], [purchase_id], [product_id], [amount], [product_name]) VALUES (2, 2, 2, 1, N'Laptop                                            ')
INSERT [dbo].[Chi_tiet_don_hang] ([id], [purchase_id], [product_id], [amount], [product_name]) VALUES (3, 3, 3, 1, N'Ipad4                                             ')
INSERT [dbo].[Chi_tiet_don_hang] ([id], [purchase_id], [product_id], [amount], [product_name]) VALUES (4, 4, 4, 1, N'USB 8GB                                           ')
INSERT [dbo].[Chi_tiet_don_hang] ([id], [purchase_id], [product_id], [amount], [product_name]) VALUES (5, 5, 5, 3, N'The cao 20k                                       ')
/****** Object:  ForeignKey [product_purchase_item]    Script Date: 08/20/2016 21:41:48 ******/
ALTER TABLE [dbo].[Chi_tiet_don_hang]  WITH CHECK ADD  CONSTRAINT [product_purchase_item] FOREIGN KEY([product_id])
REFERENCES [dbo].[San_pham] ([id])
GO
ALTER TABLE [dbo].[Chi_tiet_don_hang] CHECK CONSTRAINT [product_purchase_item]
GO
/****** Object:  ForeignKey [purchase_purchase_item]    Script Date: 08/20/2016 21:41:48 ******/
ALTER TABLE [dbo].[Chi_tiet_don_hang]  WITH CHECK ADD  CONSTRAINT [purchase_purchase_item] FOREIGN KEY([purchase_id])
REFERENCES [dbo].[Don_hang] ([id])
GO
ALTER TABLE [dbo].[Chi_tiet_don_hang] CHECK CONSTRAINT [purchase_purchase_item]
GO
/****** Object:  ForeignKey [product_category_product_category]    Script Date: 08/20/2016 21:41:48 ******/
ALTER TABLE [dbo].[Danh_muc]  WITH CHECK ADD  CONSTRAINT [product_category_product_category] FOREIGN KEY([parent_category_id])
REFERENCES [dbo].[Danh_muc] ([id])
GO
ALTER TABLE [dbo].[Danh_muc] CHECK CONSTRAINT [product_category_product_category]
GO
/****** Object:  ForeignKey [client_purchase]    Script Date: 08/20/2016 21:41:48 ******/
ALTER TABLE [dbo].[Don_hang]  WITH CHECK ADD  CONSTRAINT [client_purchase] FOREIGN KEY([client_id])
REFERENCES [dbo].[Khach_hang] ([id])
GO
ALTER TABLE [dbo].[Don_hang] CHECK CONSTRAINT [client_purchase]
GO
/****** Object:  ForeignKey [product_category_product]    Script Date: 08/20/2016 21:41:48 ******/
ALTER TABLE [dbo].[San_pham]  WITH CHECK ADD  CONSTRAINT [product_category_product] FOREIGN KEY([product_category_id])
REFERENCES [dbo].[Danh_muc] ([id])
GO
ALTER TABLE [dbo].[San_pham] CHECK CONSTRAINT [product_category_product]
GO
