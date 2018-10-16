-- Kwabena Agyei -Boahene 

--a 
use 
AdventureWorks2012
go 

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'tableStatus' and xtype ='U')
	CREATE TABLE tableStatus (
	tableName varchar (50) ,
	checkDate smalldatetime ,
	numberofRows int, 
	rateCheckValue int,
	fastGrowth int, 
	PRIMARY KEY ( tableName, checkDate)
	);
	go 

-- Procedure 
CREATE PROCEDURE DBSTATS 
@inputPercent decimal 

AS 