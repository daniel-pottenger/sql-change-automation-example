CREATE TABLE [dbo].[Order]
(
[id] [int] NOT NULL,
[customer_id] [int] NULL,
[staff_id] [int] NULL,
[order_date] [date] NULL
)
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED  ([id])
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_CustomerId] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_StaffId] FOREIGN KEY ([staff_id]) REFERENCES [dbo].[Staff] ([id])
GO
