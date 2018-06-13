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

insert into dbo.NationalityMaster (id,Country)
SELECT 1, N'American'
WHERE not exists (select 1 from dbo.NationalityMaster where id = 1)
GO

insert into dbo.NationalityMaster (id,Country)
SELECT 1, N'Indian'
WHERE not exists (select 1 from dbo.NationalityMaster where id = 1)
GO