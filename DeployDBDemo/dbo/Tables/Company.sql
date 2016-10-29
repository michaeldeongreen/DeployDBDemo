CREATE TABLE [dbo].[Company] (
    [CompanyId] INT          IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (50) NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([CompanyId] ASC)
);

