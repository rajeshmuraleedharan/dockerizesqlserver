echo 'Please wait while SQL Server 2017 warms up'
sleep 10s

echo 'Initializing database after 10 seconds of wait'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P January2018 -d master -i sqlserverdemo_Create.sql

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P January2018 -d master -i ./TestData/Person.TestData.sql

echo 'Finished initializing the database'