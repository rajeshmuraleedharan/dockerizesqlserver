CREATE TABLE [dbo].[Person]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FirstName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [Age] INT NULL, 
    [Nationality] INT NULL, 
    CONSTRAINT [FK_Person_ToTable] FOREIGN KEY ([Nationality]) REFERENCES [NationalityMaster]([Id])
)
