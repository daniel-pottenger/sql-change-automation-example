-- <Migration ID="adc5fe80-b5fd-4330-b13a-6a6d5a1e3534" />
GO

PRINT N'Creating [dbo].[Customer]'
GO
CREATE TABLE [dbo].[Customer]
(
[id] [int] NOT NULL,
[name] [nvarchar] (50) NOT NULL,
[telephone] [nvarchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK_Customer] on [dbo].[Customer]'
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([id])
GO
PRINT N'Creating [dbo].[Order]'
GO
CREATE TABLE [dbo].[Order]
(
[id] [int] NOT NULL,
[customer_id] [int] NULL,
[staff_id] [int] NULL,
[order_date] [date] NULL
)
GO
PRINT N'Creating primary key [PK_Order] on [dbo].[Order]'
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED  ([id])
GO
PRINT N'Creating [dbo].[Staff]'
GO
CREATE TABLE [dbo].[Staff]
(
[id] [int] NOT NULL,
[name] [varchar] (50) NULL,
[telephone] [nvarchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK_Staff] on [dbo].[Staff]'
GO
ALTER TABLE [dbo].[Staff] ADD CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED  ([id])
GO
PRINT N'Creating [dbo].[OrderItem]'
GO
CREATE TABLE [dbo].[OrderItem]
(
[order_id] [int] NOT NULL,
[product_id] [int] NOT NULL,
[quantity] [int] NULL,
[list_price] [decimal] (18, 2) NULL,
[discount] [decimal] (18, 2) NULL
)
GO
PRINT N'Creating primary key [PK_OrderItem] on [dbo].[OrderItem]'
GO
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED  ([product_id])
GO
PRINT N'Creating [dbo].[Product]'
GO
CREATE TABLE [dbo].[Product]
(
[id] [int] NOT NULL,
[name] [nvarchar] (50) NULL,
[price] [decimal] (4, 2) NULL
)
GO
PRINT N'Creating primary key [PK_Product] on [dbo].[Product]'
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED  ([id])
GO
PRINT N'Adding foreign keys to [dbo].[Order]'
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_CustomerId] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_StaffId] FOREIGN KEY ([staff_id]) REFERENCES [dbo].[Staff] ([id])
GO
PRINT N'Adding foreign keys to [dbo].[OrderItem]'
GO
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_OrderItem_OrderId] FOREIGN KEY ([order_id]) REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_OrderItem_ProductId] FOREIGN KEY ([product_id]) REFERENCES [dbo].[Product] ([id])
GO
