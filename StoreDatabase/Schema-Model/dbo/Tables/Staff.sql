CREATE TABLE [dbo].[Staff]
(
[id] [int] NOT NULL,
[name] [varchar] (50) NULL,
[telephone] [nvarchar] (50) NULL
)
GO
ALTER TABLE [dbo].[Staff] ADD CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED  ([id])
GO
