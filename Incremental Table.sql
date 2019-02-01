CREATE TABLE [dbo].[test]
(
 [VAR_A]            VARCHAR(100) NOT NULL ,
 [VAR_B]            VARCHAR(100) NOT NULL ,
 [VAR_C]            VARCHAR(100) NOT NULL ,
)


INSERT INTO [dbo].[test] VALUES('AA','kamal',23);
INSERT INTO [dbo].[test] VALUES('BB','John',42);

SELECT * FROM [dbo].[test];

SELECT * FROM [dbo].[test] where timestamp < 2;

ALTER TABLE [dbo].[test] ADD [timestamp] NUMERIC(15,0)go
