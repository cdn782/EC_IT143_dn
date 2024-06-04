/*
Missing Index Details from SQLQuery15.sql - DESKTOP-VNTRNBG\SQLEXPRESS.AdventureWorks2019 (DESKTOP-VNTRNBG\Nnam (67))
The Query Processor estimates that implementing the following index could improve the query cost by 91.0545%.
*/


USE [AdventureWorks2019]
GO
CREATE NONCLUSTERED INDEX IX_my_index
ON [Person].[Address] ([City])

GO

