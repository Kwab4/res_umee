USE AP
GO 


--SELECT * FROM Invoices
UPDATE Invoices
SET PaymentTotal = ' Null'
WHERE PaymentTotal ='0';



CREATE TABLE ALog (
	LogId varchar(32) ,
	TableName varchar(50),
	ReportDate varchar(50),
	NumberofUpdates int,
	);

	Update Invoices
	SET PaymentTotal ='0'
	WHERE PaymentTotal= 'Null'
	IF @@ROWCOUNT = 0
	Print 'No Rows were Updated';
	Go
