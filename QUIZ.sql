USE AP
GO 


--SELECT * FROM Invoices
UPDATE Invoices
SET PaymentTotal = 1
WHERE PaymentTotal is NULL 

SELECT @@ROWCOUNT

CREATE TABLE ALog (
	LogId int UNIQUE,
	TableName varchar(50),
	ReportDate date,
	NumberofUpdates int,
	);

	Update ALog
	SET NumberofUpdates =@@ROWCOUNT
	IF @@ROWCOUNT = 0
	Print 'No Rows were Updated';
	Go
