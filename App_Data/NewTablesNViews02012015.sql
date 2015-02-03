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

--Create a table to many user's level of access. These values go into a drop down list. Added 01.21.2015
CREATE TABLE [dbo].[ValuesAccessLevel] 
	(
    [ValueId] int IDENTITY(1,1) NOT NULL,
    [AccessLevel] nvarchar(12)
	);

ALTER TABLE [dbo].[ValuesAccessLevel]
ADD CONSTRAINT [PK_ValuesAccessLevel]
    PRIMARY KEY CLUSTERED ([ValueId] ASC);

INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('User');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Parent');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Staff');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Manager');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Admin');
INSERT INTO [ValuesAccessLevel] (AccessLevel) Values ('Pastor');

--Create View Here 02.01.2015
GO

--Create a table to choose the values for phone types from a drop down. Added 01.31.2015
CREATE TABLE [dbo].[PhoneTypes]
	(
	[PhoneTypeID] int IDENTITY(1,1) NOT NULL,
	[PhoneType] nvarchar(12)
	);

ALTER TABLE [dbo].[PhoneTypes]
ADD CONSTRAINT [PK_PhoneTypes]
    PRIMARY KEY CLUSTERED ([PhoneTypeID] ASC);

INSERT INTO [PhoneTypes] (PhoneType) Values ('Cell');
INSERT INTO [PhoneTypes] (PhoneType) Values ('Work');
INSERT INTO [PhoneTypes] (PhoneType) Values ('Home');
INSERT INTO [PhoneTypes] (PhoneType) Values ('Fax');
INSERT INTO [PhoneTypes] (PhoneType) Values ('School');
INSERT INTO [PhoneTypes] (PhoneType) Values ('Friend');
INSERT INTO [PhoneTypes] (PhoneType) Values ('Neighbor');
--Create View Here 02.01.2015
GO

--Create a table to choose values from dropdown list of Email types. Added 01.31.2015
CREATE TABLE [dbo].[EmailTypes]
	(
	[EmailTypeID] int IDENTITY(1,1) NOT NULL,
	[EmailType] nvarchar(12)
	);

ALTER TABLE [dbo].[EmailTypes]
ADD CONSTRAINT [PK_EmailTypes]
    PRIMARY KEY CLUSTERED ([EmailTypeID] ASC);

INSERT INTO [EmailTypes] (EmailType) Values ('Home');
INSERT INTO [EmailTypes] (EmailType) Values ('Work');
INSERT INTO [EmailTypes] (EmailType) Values ('School');
INSERT INTO [EmailTypes] (EmailType) Values ('Secondary');
--Create View Here 02.01.2015
GO

--Create a table to choose values from dropdown list of title types. Added 01.31.2015
CREATE TABLE [dbo].[Titles]
	(
	[TitleID] int IDENTITY(1,1) NOT NULL,
	[TitleType] nvarchar(12)
	);

ALTER TABLE [dbo].[Titles]
ADD CONSTRAINT [PK_Titles]
    PRIMARY KEY CLUSTERED ([TitleID] ASC);

INSERT INTO [Titles] (TitleType) Values ('Dr.');
INSERT INTO [Titles] (TitleType) Values ('Mr.');
INSERT INTO [Titles] (TitleType) Values ('Mrs.');
INSERT INTO [Titles] (TitleType) Values ('Miss');
INSERT INTO [Titles] (TitleType) Values ('Pastor');
INSERT INTO [Titles] (TitleType) Values ('Reverend');
--Create View Here 02.01.2015
GO
--Create a table to choose values from dropdown list of suffix types. Added 01.31.2015
CREATE TABLE [dbo].[Suffixes]
	(
	[SuffixID] int IDENTITY(1,1) NOT NULL,
	[SuffixType] nvarchar(8)
	);

ALTER TABLE [dbo].[Suffixes]
ADD CONSTRAINT [PK_Suffixes]
    PRIMARY KEY CLUSTERED ([SuffixID] ASC);

INSERT INTO [Suffixes] (SuffixType) Values ('Junior');
INSERT INTO [Suffixes] (SuffixType) Values ('Senior');
INSERT INTO [Suffixes] (SuffixType) Values ('III');
INSERT INTO [Suffixes] (SuffixType) Values ('IV');
INSERT INTO [Suffixes] (SuffixType) Values ('V');
INSERT INTO [Suffixes] (SuffixType) Values ('VI');
INSERT INTO [Suffixes] (SuffixType) Values ('VII');
--Create View Here 02.01.2015
GO
	
--Create a table to choose values from dropdown list of method of contact for visitor contact tracking. Added 02.01.2015
CREATE TABLE [dbo].[MethodsOfContact]
	(
	[MethodID] int IDENTITY(1,1) NOT NULL,
	[MethodOfContact] nvarchar(30)
	);

ALTER TABLE [dbo].[MethodsOfContact]
ADD CONSTRAINT [PK_MethodID]
    PRIMARY KEY CLUSTERED ([MethodID] ASC);
--these values will be used from a listbox, hence their high level of description
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('on their cell phone');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('on their home phone');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('on their work phone');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('by mail to their home');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('by mail to their job');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('in person, at their home');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('in person, at their job');
INSERT INTO [MethodsOfContact] (MethodOfContact) Values ('in person, neutral location');

--Create View Here 02.01.2015
GO
	
--Create a table to choose values from dropdown list of male and female. Added 02.01.2015
CREATE TABLE [dbo].[Genders]
	(
	[GenderID] int IDENTITY(1,1) NOT NULL,
	[Gender] nvarchar(6)
	);

ALTER TABLE [dbo].[Genders]
ADD CONSTRAINT [PK_GenderID]
    PRIMARY KEY CLUSTERED ([GenderID] ASC);

INSERT INTO [Genders] (Gender) Values ('Female');
INSERT INTO [Genders] (Gender) Values ('Male');
--Create View Here 02.01.2015
GO	
--This is the new Addresses Table, put in for normalization. 02.01.2015
CREATE TABLE [dbo].[Addresses] (
	[AddressID] int IDENTITY (1,1) NOT NULL,
    [Address] nvarchar(50),
    [City] nvarchar(50),
    [State] nvarchar(20),
    [Zip] nvarchar(11)
	);

ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_AddressID]
    PRIMARY KEY CLUSTERED ([AddressID] ASC);

--This is the new Mailing Addresses Table, put in for normalization, 02.02.2015
CREATE TABLE [dbo].[MailingAddresses] (
	[MailingAddressID] int IDENTITY (1,1) NOT NULL,
    [MailingAddress] nvarchar(50),
    [MailingCity] nvarchar(50),
    [MailingState] nvarchar(11),
    [MailingZip] nvarchar(11)
    
);

ALTER TABLE [dbo].[MailingAddresses]
ADD CONSTRAINT [PK_MailingAddressID]
    PRIMARY KEY CLUSTERED ([MailingAddressID] ASC);

--This is the new Email Addresses Table, put in for normalization
CREATE TABLE [dbo].[Email]
ALTER TABLE [dbo].[Email]
ADD CONSTRAINT [PK_EmailID]
    PRIMARY KEY CLUSTERED ([EmailID] ASC);


	