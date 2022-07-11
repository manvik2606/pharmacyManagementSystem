CREATE TABLE [dbo].[Orders] (
    [orderid]      INT           NOT NULL,
    [username]     VARCHAR (MAX) NULL DEFAULT 'unknown',
    [datemodified] VARCHAR (MAX) NULL DEFAULT 01-01-2009,
    [status]       VARCHAR (MAX) NULL DEFAULT 'Unprocessed',
    [productname]  VARCHAR (MAX) NULL DEFAULT 'unknown',
    [sellername]   VARCHAR (MAX) NULL DEFAULT 'unknown',
    PRIMARY KEY CLUSTERED ([orderid] ASC)
);

