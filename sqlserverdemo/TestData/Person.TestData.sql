Insert into dbo.Person (Id,FirstName,LastName,Age,Nationality)
SELECT 1, 'Rajesh', 'Muraleedharan',35,1
WHERE NOT EXISTS (SELECT 1 FROM dbo.Person where id = 1)
GO
