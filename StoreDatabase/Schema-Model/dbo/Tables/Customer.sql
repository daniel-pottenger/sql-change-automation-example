CREATE TABLE [dbo].[Customer]
(
[id] [int] NOT NULL,
[name] [nvarchar] (50) NOT NULL,
[telephone] [nvarchar] (50) NULL
)
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([id])
GO
