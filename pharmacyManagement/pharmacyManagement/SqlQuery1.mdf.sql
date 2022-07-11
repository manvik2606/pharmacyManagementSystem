CREATE TABLE [dbo].[PMHistoryInfo] (
    [RecordId]           INT           IDENTITY (1, 1) NOT NULL,
    [PId]       VARCHAR (MAX) NULL,
    [Mobile]       VARCHAR (MAX) NULL,
    [Drug]         VARCHAR (MAX) NULL,
    [CurrentMedicine]       VARCHAR (MAX) NULL,
   
    CONSTRAINT [PK_PMHistoryInfo] PRIMARY KEY CLUSTERED ([RecordId] ASC)
);

CREATE TABLE [dbo].[PInfo] (
    [RecordId]           INT           IDENTITY (1, 1) NOT NULL,
    [PId]       VARCHAR (MAX) NULL,
    [mobno]       VARCHAR (MAX) NULL,
    [email]         VARCHAR (MAX) NULL,
    [password]       VARCHAR (MAX) NULL, 
   
    CONSTRAINT [PK_PInfo] PRIMARY KEY CLUSTERED ([RecordId] ASC)
);