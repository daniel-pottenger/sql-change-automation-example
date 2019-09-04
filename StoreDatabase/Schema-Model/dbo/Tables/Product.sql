CREATE TABLE [dbo].[Product]
(
[id] [int] NOT NULL,
[name] [nvarchar] (50) NULL,
[price] [decimal] (4, 2) NULL
)
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED  ([id])
GO
