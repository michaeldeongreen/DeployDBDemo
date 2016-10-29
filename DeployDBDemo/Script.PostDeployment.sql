/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF (EXISTS(SELECT * FROM [dbo].[Company]))
BEGIN
	DELETE FROM [dbo].[Company]
END

IF (EXISTS(SELECT * FROM [dbo].[Employees]))
BEGIN
	DELETE FROM [dbo].[Employees]
END

--Company
INSERT INTO [dbo].Company VALUES ('Apple')
INSERT INTO [dbo].Company VALUES ('Microsoft')

--Employees
INSERT INTO [dbo].Employees VALUES ('Warren', 'Buffet', 'CFO',1)
INSERT INTO [dbo].Employees VALUES ('Bill', 'Gates', 'CEO',1)
INSERT INTO [dbo].Employees VALUES ('Oprah', 'Winfrey', 'CEO',2)
INSERT INTO [dbo].Employees VALUES ('Steve', 'Jobs', 'CTO',2)
INSERT INTO [dbo].Employees VALUES ('Mark', 'Zuckerberg', 'Co-Founder',1)
INSERT INTO [dbo].Employees VALUES ('Percy', 'Miller', 'Mogul',1)