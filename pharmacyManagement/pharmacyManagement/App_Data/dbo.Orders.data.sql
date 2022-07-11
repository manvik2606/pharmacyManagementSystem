CREATE TABLE [dbo].[Orders]
(
	[orderid] INT NOT NULL PRIMARY KEY,
	[username] VARCHAR (MAX) NULL,
	[datemodified] VARCHAR (MAX) NULL,
	[status] VARCHAR (MAX) NULL,
	[productname] VARCHAR (MAX) NULL,
	[sellername] VARCHAR (MAX) NULL
)
