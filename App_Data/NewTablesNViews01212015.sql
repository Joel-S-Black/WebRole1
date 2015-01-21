/* This table (Values) is eliminated 01.21.2015. Each value set will have their own table.
--The values Table will hold the drop down menu options, such as phone types of cellphone, work, neighbor's house, home, etc.
-- Creating table 'Values'
--The below table was optimized (12.11.2014)
CREATE TABLE [dbo].[Values] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AccessLevel] nvarchar(max),
    [PhoneType] nvarchar(25),
    [EmailType] nvarchar(25), --Type of email will include, but isn't limited to work, school, home, primary
	[Title] nvarchar(7),--Title is Mr, Mrs, Doctor, etc
	[Suffix] nvarchar(7),--This includes Senior, Junior, etc
	[MethodOfContact] nvarchar(15)--This is the what the values in VisitContactTracking are based on.
	--Title and Suffix fields were added 12.11.2014 and subsequently added to the edmx file.
	--MethodOfContact was added 12.17.2014.
	--The non-identity fields were all converted to not required 12.17.2014
);
*/

--Create a table to many user's level of access. These values go into a drop down list
CREATE TABLE [dbo].[ValuesAccessLevel] (
    [ValueId] int IDENTITY(1,1) NOT NULL,
    [AccessLevel] nvarchar(max)
	);
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('User');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Parent');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Staff');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Manager');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Admin');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Pastor');

    [PhoneType] nvarchar(25),
    [EmailType] nvarchar(25), --Type of email will include, but isn't limited to work, school, home, primary
	[Title] nvarchar(7),--Title is Mr, Mrs, Doctor, etc
	[Suffix] nvarchar(7),--This includes Senior, Junior, etc
	[MethodOfContact] nvarchar(15)--This is the what the values in VisitContactTracking are based on.