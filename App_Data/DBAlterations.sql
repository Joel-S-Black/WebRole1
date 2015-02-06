/*
There are some normalization changes coming to the existing DB
those changes are recorded here.
*/

--This alteration will alter the contactinfo table to track by ids only

--new tables will be addressess and phone numbers with types
--The following tables need a tracking field.
--Nursery Clients 02.05.2015
ALTER TABLE	[dbo].[NurseryClients] 
  ADD [DateModifiedLast] DateTime2 NOT NULL;

ALTER TABLE	[dbo].[NurseryClients] 
  ADD [ModifiedBy] int;
-- Adults 02.06.2015
ALTER TABLE	[dbo].[Adults] 
  ADD [DateModifiedLast] DateTime2 NOT NULL;


