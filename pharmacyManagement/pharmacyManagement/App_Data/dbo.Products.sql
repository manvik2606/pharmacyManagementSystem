CREATE TABLE [dbo].[Products] (
    [productname]  VARCHAR (MAX) DEFAULT ('unknown') NULL,
    [productid]        INT DEFAULT ('0') NOT NULL ,
    [sellername]   VARCHAR (MAX) DEFAULT ('unknown') NULL,
    [productimage]    VARBINARY(MAX)  NULL,
    [productdesc]  VARCHAR (MAX) DEFAULT ('unknown') NULL,
    PRIMARY KEY CLUSTERED ([productid] ASC)
);
