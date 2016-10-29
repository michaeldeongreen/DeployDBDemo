CREATE TABLE [dbo].[Employees] (
    [EmployeeId] INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]  VARCHAR (50) NULL,
    [LastName]   VARCHAR (50) NULL,
    [Title]      VARCHAR (50) NULL,
    [CompanyId]  INT          NOT NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeId] ASC),
    CONSTRAINT [FK_Employees_Company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([CompanyId])
);





