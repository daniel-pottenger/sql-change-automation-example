CREATE TABLE [dbo].[OrderItem]
(
[order_id] [int] NOT NULL,
[product_id] [int] NOT NULL,
[quantity] [int] NULL,
[list_price] [decimal] (18, 2) NULL,
[discount] [decimal] (18, 2) NULL
)
GO
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED  ([product_id])
GO
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_OrderItem_OrderId] FOREIGN KEY ([order_id]) REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_OrderItem_ProductId] FOREIGN KEY ([product_id]) REFERENCES [dbo].[Product] ([id])
GO
