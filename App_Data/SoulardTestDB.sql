
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/23/2014 22:06:48
-- Generated from EDMX file: C:\Users\Joel\Documents\Soulard\Database\RockInSoulard\WebRole1\Content\SoulardDBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
CREATE DATABASE [SoulardTestDB];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO




--The below table was optimized (12.10.2014)
-- Creating table 'NurseryClients'
CREATE TABLE [dbo].[NurseryClients] (
    [NurseryClientId] int IDENTITY(1,1) NOT NULL,
    [ChildID] int  NOT NULL,
    [MaleParentAdultId] int,
    [FemaleParentAdultId] int  NOT NULL,
    [ChildCallID] int  
);
GO
--The below table was optimized (12.10.2014)
-- Creating table 'Adults'
CREATE TABLE [dbo].[Adults] (
    [AdultId] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(10)  NOT NULL,
    [FirstName] nvarchar(25)  NOT NULL,
    [MiddleName] nvarchar(25) NULL,
    [LastName] nvarchar(25)  NOT NULL,
    [Suffix] nvarchar(7) NULL,
    [Birthday] date NOT NULL,
    [PhotoURL] nvarchar(max)  NULL,
    [Gender] nvarchar(6)  NOT NULL
);

GO
--The below table was optimized (12.10.2014)
-- Creating table 'Children'
CREATE TABLE [dbo].[Children] (
    [ChildId] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(10),
    [FirstName] nvarchar(25)  NOT NULL,
    [MiddleName] nvarchar(25),
    [LastName] nvarchar(25)  NOT NULL,
    [Suffix] nvarchar(7)  NULL,
    [Birthday] date  NOT NULL,
    [PhotoURL] nvarchar(max) NULL,
    [Gender] nvarchar(6) NULL,
    [MaleParentId] int,
    [FemaleParentId] int  NOT NULL
);

GO
--The below table was optimized (12.10.2014)
-- Creating table 'ContactInfo'
CREATE TABLE [dbo].[ContactInfo] (
    [ContactInfoID] int IDENTITY(1,1) NOT NULL,
    [ContactID] int NOT NULL,
    [PhoneNumber1] nvarchar(15),
    [PhoneNumber1Type] nvarchar(10),
    [PhoneNumber2] nvarchar(15),
    [PhoneNumber2Type] nvarchar(10),
    [PhoneNumber3] nvarchar(15),
    [PhoneNumber3Type] nvarchar(10),
    [Email1] nvarchar(max),
    [Email1Type] nvarchar(10),
    [Email2] nvarchar(max),
    [Email2Type] nvarchar(10),
    [Address] nvarchar(50)  NOT NULL,
    [City] nvarchar(50)  NOT NULL,
    [State] nvarchar(20)  NOT NULL,
    [Zip] nvarchar(11)  NOT NULL,
    [MailingAddress] nvarchar(50),
    [MailingCity] nvarchar(50),
    [MailingState] nvarchar(11),
    [MailingZip] nvarchar(11),
    [FacebookName] nvarchar(max),
    [TwitterHandle] nvarchar(max),
    [InstagramName] nvarchar(max)
    
);
GO
--The below table was optimized (12.10.2014)
-- Creating table 'ContactPreference'
CREATE TABLE [dbo].[ContactPreference] (
    [ContactPreferenceId] int IDENTITY(1,1) NOT NULL,
    [ContactID] int NOT NULL,
    [PreferredContactMethod1] nvarchar(30)  NOT NULL DEFAULT "Cellphone", --Most of our contacts have cellphones
    [PreferredContactMethod2] nvarchar(30),
    [PreferredContactMethod3] nvarchar(30),
    [PreferredContactMethod4] nvarchar(30),
    [PreferredContactMethod5] nvarchar(30)
);
GO
--The below table was optimized (12.10.2014)
-- Creating table 'Membership'
--The all members are adults, but not adults or children are members.
CREATE TABLE [dbo].[Memberships] (
    [MemberId] int IDENTITY(1,1) NOT NULL,
    [PersonId] int NOT NULL,--altered from "AdultId" 12.14.2014
    [Saved] bit DEFAULT 1, --Saved is default to 1 which is yes
	--The [SalvationDate] column is a nvarchar instead of date so that it can be null. We won't have this information on some people.
    [SalvationDate] nvarchar(15) NULL,
    [Baptized] bit  NOT NULL DEFAULT 1,--Baptized is default to 1 which is yes
	--The [BaptizedDate] column is a nvarchar instead of date so that it can be null. We won't have this information on some people.
    [BaptizedDate] nvarchar(15)  NULL,
    [DateJoined] nvarchar(15),
    [MethodOfEntry] nvarchar(21) DEFAULT "Christian Experience", --"Christian Experience" is the most common method for our members
    [TransferedFrom] nvarchar(max),
    [CopyOfLetter] nvarchar(max)
);
GO
--The below table was optimized (12.11.2014)
--Spiritual Gifts Table is for the pastors to use after someone takes a spiritual gift inventory
-- Creating table 'SpiritualGifts'
CREATE TABLE [dbo].[SpiritualGifts] (
    [SpiritualGiftListingsId] int IDENTITY(1,1) NOT NULL,
	[PersonID] int NOT NULL, --This is foreign key related to the child or the adult ID, either one.
    [SpiritualGift1] nvarchar(max),
    [GiftComment1] nvarchar(max),
    [SpiritualGift2] nvarchar(max),
    [GiftComment2] nvarchar(max),
    [SpiritualGift3] nvarchar(max),
    [GiftComment3] nvarchar(max),
    [SpiritualGift4] nvarchar(max),
    [GiftComment4] nvarchar(max),
    [SpiritualGift5] nvarchar(max),
    [GiftComment5] nvarchar(max),
    [SpiritualGift6] nvarchar(max),
    [GiftComment6] nvarchar(max),
    [SpiritualGift7] nvarchar(max),
    [GiftComment7] nvarchar(max),
    [SpiritualGift8] nvarchar(max),
    [GiftComment8] nvarchar(max)
);
GO

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
GO
--The below table was optimized (12.11.2014)
-- Creating table 'EmergencyContacts'
CREATE TABLE [dbo].[EmergencyContacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ContactID] int NOT NULL, --Contact ID will have a foreign key relationship to AdultID and ChildID. Children will automatically be updated with their parent's contact info.
    [EContactFirstName] nvarchar(25)  NOT NULL,
    [EContactLastName] nvarchar(25)  NOT NULL,
    [EContactSuffix] nvarchar(7),
    [EContactPhone] nvarchar(15)  NOT NULL,
    [EContactAddress] nvarchar(max),
    [EContactCity] nvarchar(max),
    [EContactState] nvarchar(max),
    [EContactZip] nvarchar(max),
    [NonHouseHoldFirstName] nvarchar(25)  NOT NULL,--If the Adult(child) chooses a contact in their household, code will cause the  non household fieldsto be filled.
    [NonHouseHoldLastName] nvarchar(25)  NOT NULL, --If the Adult(child) chooses a contact NOT in their household, code will cause the  non household fields to be copied from EContact.
    [NonHouseHoldSuffix] nvarchar(7)  NOT NULL,
    [NonHouseHoldPhone] nvarchar(15)  NOT NULL,
    [NonHouseHoldAddress] nvarchar(max),
    [NonSpouseCity] nvarchar(max),
    [NonSpouseState] nvarchar(max),
    [NonSpouseZip] nvarchar(max)
	--The "NonHouseHold" was changed from "NonSpouse" this change needs to be reflected in the edmx file.
);
GO
--The below table was optimized (12.11.2014)
-- Creating table 'Staff'
CREATE TABLE [dbo].[Staff] (
    [StaffId] int IDENTITY(1,1) NOT NULL,
    [AdultId] int  NOT NULL, --Each Staff member must be in the adult(child)'s table
    [PositionTitle] nvarchar(25),
    [PositionDuties] nvarchar(max),
    [SupervisorID] int, --Each supervisor must be in the Adult's table only
    [Expertise] nvarchar(max), --everyone doesn't have expertise
    [AreaInChargeOf] nvarchar(max), --everyone isn't intrusted with a certain part of the building
    [Role] nvarchar(max) --everyone doesn't have a clearly defined role
);
GO

-- Creating table 'Incidents'
CREATE TABLE [dbo].[Incidents] (
    [IncidentID] int IDENTITY(1,1) NOT NULL,
    [PersonsInvolved] nvarchar(max)  NOT NULL,
    [Witnesses] nvarchar(max)  NOT NULL,
    [Comments] nvarchar(max)  NOT NULL,
    [EnteredBy] int NOT NULL, --This field has a foreign key to the Adult's table
  
);

GO
-- Adding in new table VisitorContactTracking, on 12.17.2014

CREATE TABLE [dbo].[VisitorContactTracking] (
    [ContactTrackingId] int IDENTITY(1,1) NOT NULL,
    [VisitorID] int  NOT NULL,
    [EnteredBy] int NOT NULL,
    [ContactedHow] int  NOT NULL,
	[ContactedWhen] int  NOT NULL,
	[Notes] varchar(max),
    [ContactedBy] int NOT Null
);
GO
-- Creating table NurseryClients.12.11.2014
CREATE TABLE [dbo].[NurseryClients] (
    [NurseryClientId] int IDENTITY(1,1) NOT NULL,
    [ChildID] int  NOT NULL,
    [MaleParentAdultId] int,
    [FemaleParentAdultId] int  NOT NULL,
    [ChildCallID] int  
);
GO


-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [NurseryClientId] in table 'NurseryClients'
ALTER TABLE [dbo].[NurseryClients]
ADD CONSTRAINT [PK_NurseryClients]
    PRIMARY KEY CLUSTERED ([NurseryClientId] ASC);
GO

-- Creating primary key on [AdultId] in table 'Adults'
ALTER TABLE [dbo].[Adults]
ADD CONSTRAINT [PK_Adults]
    PRIMARY KEY CLUSTERED ([AdultId] ASC);
GO

-- Creating primary key on [ContactInfoID] in table 'ContactInfo'
ALTER TABLE [dbo].[ContactInfo]
ADD CONSTRAINT [PK_ContactInfo]
    PRIMARY KEY CLUSTERED ([ContactInfoID] ASC);
GO

-- Creating primary key on [ContactPreferenceId] in table 'ContactPreference'
ALTER TABLE [dbo].[ContactPreference]
ADD CONSTRAINT [PK_ContactPreference]
    PRIMARY KEY CLUSTERED ([ContactPreferenceId] ASC);
GO

-- Creating primary key on [ChildId] in table 'Children'
ALTER TABLE [dbo].[Children]
ADD CONSTRAINT [PK_Children]
    PRIMARY KEY CLUSTERED ([ChildId] ASC);
GO

-- Creating primary key on [MemberId] in table 'Memberships'
ALTER TABLE [dbo].[Memberships]
ADD CONSTRAINT [PK_Membership]
    PRIMARY KEY CLUSTERED ([MemberId] ASC);
GO

-- Creating primary key on [SpiritualGiftListingsId] in table 'SpiritualGifts'
ALTER TABLE [dbo].[SpiritualGifts]
ADD CONSTRAINT [PK_SpiritualGifts]
    PRIMARY KEY CLUSTERED ([SpiritualGiftListingsId] ASC);
GO
/* This primary key was eliminated 01.21.2015. Each value will have it's own table.
-- Creating primary key on [Id] in table 'Values'
ALTER TABLE [dbo].[Values]
ADD CONSTRAINT [PK_Values]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
*/
-- Creating primary key on [Id] in table 'EmergencyContacts'
ALTER TABLE [dbo].[EmergencyContacts]
ADD CONSTRAINT [PK_EmergencyContacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [StaffId] in table 'Staffs'
ALTER TABLE [dbo].[Staff]
ADD CONSTRAINT [PK_Staff]
    PRIMARY KEY CLUSTERED ([StaffId] ASC);
GO

-- Creating primary key on [IncidentID] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [PK_Incidents]
    PRIMARY KEY CLUSTERED ([IncidentID] ASC);
GO
--The below code was added 12.17.2014
--Creating primary key on [VisitorContactTracking]
ALTER TABLE [dbo].[VisitorContactTracking]
ADD CONSTRAINT [PK_VisitorContactTracking]
    PRIMARY KEY CLUSTERED ([ContactTrackingId] ASC);
GO
/* This was generated by the edmx, but not needed.
-- Creating primary key on [FK_Adult_Incidents_EnteredBy_AdultId], [Incidents6_IncidentID] in table 'AdultsIncidents6'
ALTER TABLE [dbo].[AdultsIncidents6]
ADD CONSTRAINT [PK_AdultsIncidents6]
    PRIMARY KEY NONCLUSTERED ([FK_Adult_Incidents_EnteredBy_AdultId], [Incidents6_IncidentID] ASC);
GO
*/
-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------
--This Foreign Key was edited 12.11.2014. The edmx created a foreign key for the navigation property, which doesn't exist in the table
-- Creating foreign key FK_ChildrenContactInfo in table 'ContactInfo'
ALTER TABLE [dbo].[ContactInfo]
ADD CONSTRAINT [FK_ChildrenContactInfo]
    FOREIGN KEY ([ContactID]) --The foreign key constraint is between Children.ChildID and ContactInfo.ContactID
    REFERENCES [dbo].[Children]
        ([ChildId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ChildrenContactInfo'
--This Index was edited 12.11.2014. The edmx created a foreign key for the navigation property, which doesn't exist in the table.
CREATE INDEX [IX_FK_ContactInfo]
ON [dbo].[ContactInfo]
    ([ContactID]);
GO

--this Foreign Key was edited on 12.11.2014
-- Creating foreign key [FK_AdultsContactInfo] in table 'ContactInfo'
ALTER TABLE [dbo].[ContactInfo]
ADD CONSTRAINT [FK_AdultsContactInfo]
    FOREIGN KEY ([ContactID])--The foreign key constraint is between Adults.AdultID and ContactInfo.ContactID
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
--The below line was eliminated because there is no reason to have 2 index for the exact same field
-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsContactInfo'
--CREATE INDEX [IX_FK_AdultsContactInfo]
--ON [dbo].[ContactInfo]--This table was called "ContactInfo", not ContactInfo
 --   ([Adult_AdultId]);
GO
--The below as edited 12.11.2014
-- Creating foreign key  [FK_AdultContactPreference] in table 'ContactPreference' between Adults Table on ContactID and AdultID
ALTER TABLE [dbo].[ContactPreference]
ADD CONSTRAINT [FK_AdultsContactPreference]
    FOREIGN KEY ([ContactID])--This foreign key was modified to look to the column ContactID vs a navigation property
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
--The below as edited 12.11.2014
-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsContactPreference'
CREATE INDEX [IX_FK_AdultsContactPreference]
ON [dbo].[ContactPreference]
    ([ContactID]);
GO
--The below as edited 12.11.2014
-- Creating foreign key  [FK_ChildContactPreference] in table 'ContactPreference' between Children Table on ContactID and ChildID
ALTER TABLE [dbo].[ContactPreference]
ADD CONSTRAINT [FK_ChildrenContactPreference]
    FOREIGN KEY ([ContactID])--This foreign key was modified to look to the column ContactID vs a navigation property
    REFERENCES [dbo].[Children]
        ([ChildId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

--The below line was eliminated because there is no reason to have 2 index for the exact same field - 12.11.2014
-- Creating non-clustered index for FOREIGN KEY 'FK_ChildrenContactPreference'
--CREATE INDEX [IX_FK_ChildrenContactPreference]
--ON [dbo].[ContactPreferences]
--    ([FK_Child_Contact_Preference_ChildId]);
GO

-- Creating foreign key [FK_ChildrenNurseyClients] in table 'NurseryClients' with Children Table on ChildId  --Edited 12.11.2014
ALTER TABLE [dbo].[NurseryClients]
ADD CONSTRAINT [FK_ChildrenNurseryClients]
    FOREIGN KEY ([ChildID])
    REFERENCES [dbo].[Children]
        ([ChildId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ChildrenNurseryClients' for column ChildID. Changed 12.11.2014
CREATE INDEX [IX_FK_ChildNurseryClients]
ON [dbo].[NurseryClients]
    ([ChildID]);
GO

-- Creating foreign key on [FK_FemaleParentAdultId] in table 'NurseryClients'.Changed 12.11.2014
ALTER TABLE [dbo].[NurseryClients]
ADD CONSTRAINT [FK_FemaleAdultsParentID]
    FOREIGN KEY ([FemaleParentAdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FemaleParentAdultId'. Changed 12.11.2014
CREATE INDEX [IX_FK_FemaleParentNurseryClients]
ON [dbo].[NurseryClients]
    ([FemaleParentAdultId]);
GO

-- Creating foreign key on [FK_MaleParentAdultId] in table 'NurseryClients'. Changed 12.11.2014
ALTER TABLE [dbo].[NurseryClients]
ADD CONSTRAINT [FK_MaleParentAdultsId]
    FOREIGN KEY ([MaleParentAdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MaleParentAdultId'. Changed 12.11.2014
CREATE INDEX [IX_FK_MaleParentNurseryClients3]
ON [dbo].[NurseryClients]
    ([MaleParentAdultId]);
GO

-- Creating foreign key on [FK_FemaleParentId] in table 'Children'. Changed 12.11.2014
ALTER TABLE [dbo].[Children]
ADD CONSTRAINT [FK_FemaleParentId]
    FOREIGN KEY ([FemaleParentId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FemaleParentId'. Changed 12.11.2014
CREATE INDEX [IX_FK_FemaleParentOfChildren]
ON [dbo].[Children]
    ([FemaleParentId]);
GO

-- Creating foreign key on [FK_MaleParentId] in table 'Children'. Changed 12.11.2014
ALTER TABLE [dbo].[Children]
ADD CONSTRAINT [FK_MaleParentId]
    FOREIGN KEY ([MaleParentId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MaleParentId'. Changed 12.11.2014
CREATE INDEX [IX_FK_MaleParentOfChildren]
ON [dbo].[Children]
    ([MaleParentId]);
GO

-- Creating foreign key [FK_AdultMemberships] in table 'Memberships'. Changed 12.12.2014. In addition to fixing the edmx conversion, AdultId was changed to "PersonId"
ALTER TABLE [dbo].[Memberships]
ADD CONSTRAINT [FK_AdultMemberships]
    FOREIGN KEY ([PersonId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsMemberships' Changed 12.12.2014. In addition to fixing the edmx conversion, AdultId was changed to "PersonId"
CREATE INDEX [IX_FK_AdultsMemberships]
ON [dbo].[Memberships]
    ([PersonId]);
GO

-- Creating foreign key [FK_ChildrenMemberships] in table 'Memberships' Changed 12.12.2014. In addition to fixing the edmx conversion, AdultId was changed to "PersonId"
ALTER TABLE [dbo].[Memberships]
ADD CONSTRAINT [FK_ChildrenMemberships]
    FOREIGN KEY ([PersonId])
    REFERENCES [dbo].[Children]
        ([ChildId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ChildrenMemberships' Changed 12.12.2014. In addition to fixing the edmx conversion, AdultId was changed to "PersonId"
CREATE INDEX [IX_FK_ChildrenMemberships]
ON [dbo].[Memberships]
    ([PersonId]);
GO

-- Creating foreign key [FK_AdultSpiritualGifts] in table 'SpiritualGifts' Changed 12.12.2014. The edmx thought the table was "Spiritual Gifts1"
ALTER TABLE [dbo].[SpiritualGifts]
ADD CONSTRAINT [FK_AdultsSpiritualGifts]
    FOREIGN KEY ([PersonId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsSpiritualGifts' Changed 12.12.2014. The edmx thought the table was "Spiritual Gifts1"
CREATE INDEX [IX_FK_AdultsSpiritualGifts]
ON [dbo].[SpiritualGifts]
    ([PersonId]);
GO

-- Creating foreign key on [FK_ChildrenSpiritualGifts] in table 'SpiritualGifts' Changed 12.12.2014. The edmx thought the table was "Spiritual Gifts1"
ALTER TABLE [dbo].[SpiritualGifts]
ADD CONSTRAINT [FK_ChildrenSpiritualGifts]
    FOREIGN KEY ([PersonId])
    REFERENCES [dbo].[Children]
        ([ChildId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ChildrenSpiritualGifts' Changed 12.12.2014. The edmx thought the table was "Spiritual Gifts1"
CREATE INDEX [IX_FK_ChildrenSpiritualGifts]
ON [dbo].[SpiritualGifts]
    ([PersonId]);
GO

-- Creating foreign key on [Adult_AdultId] in table 'EmergencyContacts.' Changed 12.12.2014. The edmx thought the table was "Spiritual Gifts1"
ALTER TABLE [dbo].[EmergencyContacts]
ADD CONSTRAINT [FK_AdultEmergencyContact]
    FOREIGN KEY ([ContactId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsEmergencyContacts' Changed 12.12.2014
CREATE INDEX [IX_FK_AdultsEmergencyContacts]
ON [dbo].[EmergencyContacts]
    ([ContactId]);
GO

-- Creating foreign key on [FK_ChildrenEmergencyContacts] in table 'EmergencyContacts' Changed 12.12.2014
ALTER TABLE [dbo].[EmergencyContacts]
ADD CONSTRAINT [FK_ChildrenEmergencyContacts]
    FOREIGN KEY ([ContactId])
    REFERENCES [dbo].[Children]
        ([ChildId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ChildrenEmergencyContacts' Changed 12.12.2014
CREATE INDEX [IX_FK_ChildrenEmergencyContacts]
ON [dbo].[EmergencyContacts]
    ([ContactId]);
GO

-- Creating foreign key on [FK_AdultStaff] in table 'Staff' Changed 12.12.2014. edmx thought the table name was "Staffs"
ALTER TABLE [dbo].[Staff]
ADD CONSTRAINT [FK_AdultsStaff]
    FOREIGN KEY ([AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsStaff' Changed 12.13.2014. edmx thought the table name was "Staffs"
CREATE INDEX [IX_FK_AdultsStaff]
ON [dbo].[Staff]
    ([AdultId]);
GO

-- Creating foreign key on [AdultStaffSupervisor_AdultId] in table 'Staff' Changed 12.13.2014. edmx thought the table name was "Staffs"
ALTER TABLE [dbo].[Staff]
ADD CONSTRAINT [FK_AdultsStaffSupervisor]
    FOREIGN KEY ([SupervisorId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsStaffSupervisor' Changed 12.13.2014. edmx thought the table name was "Staffs"
CREATE INDEX [IX_FK_AdultsStaffSupervisor]
ON [dbo].[Staff]
    ([SupervisorId]);
GO

-- Creating foreign key [FK_EnteredIncident] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [FK_EnteredIncident]
    FOREIGN KEY ([EnteredBy])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents'
CREATE INDEX [IX_FK_EnteredIncident]
ON [dbo].[Incidents]
    ([EnteredBy]);
GO
-- Creating Foreign Key 'FK_VisitorIdContactTracking'. 12.17.2014
ALTER TABLE [dbo].[VisitorContactTracking]
ADD CONSTRAINT [FK_VisitorIdContactTracking]
    FOREIGN KEY ([VisitorId]) --The foreign key constraint is between Adults.AdultID and VisitorContactTracking.VisitorID
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_VisitorIdContactTracking'
--This Index was edited 12.17.2014. 
CREATE INDEX [IX_FK_VisitorIdContactTracking]
ON [dbo].[VisitorContactTracking]
    ([VisitorId]);
GO

-- Creating Foreign Key 'FK_EnteredByAdultId'. 12.17.2014
ALTER TABLE [dbo].[VisitorContactTracking]
ADD CONSTRAINT [FK_EnteredByAdultId]
    FOREIGN KEY ([EnteredBy]) --The foreign key constraint is between Adults.AdultID and VisitorContactTracking.EnteredBy
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EnteredByAdultId'
--This Index was edited 12.17.2014. 
CREATE INDEX [IX_FK_EnteredByAdultId]
ON [dbo].[VisitorContactTracking]
    ([EnteredBy]);
GO
--Creating Foreign Key 'FK_ContactedByAdultId'. 12.17.2014
ALTER TABLE [dbo].[VisitorContactTracking]
ADD CONSTRAINT [FK_ContactedByAdultId]
    FOREIGN KEY ([ContactedBy]) --The foreign key constraint is between Adults.AdultID and VisitorContactTracking.ContactedBy
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactedByAdultId'
--This Index was edited 12.17.2014. 
CREATE INDEX [IX_FK_ContactedByAdultId]
ON [dbo].[VisitorContactTracking]
    ([ContactedBy]);
GO


/* these foreign keys and indexes were initially needed, however, the table has been simplified. Changed 12.13.2014
-- Creating foreign key on [AdultPerson2_AdultId] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [FK_AdultsIncidents1]
    FOREIGN KEY ([AdultPerson2_AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents1'
CREATE INDEX [IX_FK_AdultsIncidents1]
ON [dbo].[Incidents]
    ([AdultPerson2_AdultId]);
GO

-- Creating foreign key on [AdultPerson3_AdultId] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [FK_AdultsIncidents2]
    FOREIGN KEY ([AdultPerson3_AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents2'
CREATE INDEX [IX_FK_AdultsIncidents2]
ON [dbo].[Incidents]
    ([AdultPerson3_AdultId]);
GO

-- Creating foreign key on [AdultPerson4_AdultId] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [FK_AdultsIncidents3]
    FOREIGN KEY ([AdultPerson4_AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents3'
CREATE INDEX [IX_FK_AdultsIncidents3]
ON [dbo].[Incidents]
    ([AdultPerson4_AdultId]);
GO

-- Creating foreign key on [AdultsIncidents4_Incidents_AdultId] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [FK_AdultsIncidents4]
    FOREIGN KEY ([AdultsIncidents4_Incidents_AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents4'
CREATE INDEX [IX_FK_AdultsIncidents4]
ON [dbo].[Incidents]
    ([AdultsIncidents4_Incidents_AdultId]);
GO

-- Creating foreign key on [AdultsIncidents5_Incidents_AdultId] in table 'Incidents'
ALTER TABLE [dbo].[Incidents]
ADD CONSTRAINT [FK_AdultsIncidents5]
    FOREIGN KEY ([AdultsIncidents5_Incidents_AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents5'
CREATE INDEX [IX_FK_AdultsIncidents5]
ON [dbo].[Incidents]
    ([AdultsIncidents5_Incidents_AdultId]);
GO

-- Creating foreign key on [FK_Adult_Incidents_EnteredBy_AdultId] in table 'AdultsIncidents6'
ALTER TABLE [dbo].[AdultsIncidents6]
ADD CONSTRAINT [FK_AdultsIncidents6_Adults]
    FOREIGN KEY ([FK_Adult_Incidents_EnteredBy_AdultId])
    REFERENCES [dbo].[Adults]
        ([AdultId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Incidents6_IncidentID] in table 'AdultsIncidents6'
ALTER TABLE [dbo].[AdultsIncidents6]
ADD CONSTRAINT [FK_AdultsIncidents6_Incidents]
    FOREIGN KEY ([Incidents6_IncidentID])
    REFERENCES [dbo].[Incidents]
        ([IncidentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdultsIncidents6_Incidents'
CREATE INDEX [IX_FK_AdultsIncidents6_Incidents]
ON [dbo].[AdultsIncidents6]
    ([Incidents6_IncidentID]);
GO
*/

/* ***********************************************

STORED PROCEDURES

**************************************************
*/

CREATE PROCEDURE RetrieveMales
AS
BEGIN
SELECT FirstName, Left(MiddleName,1) as MiddleInitial,LastName
FROM Adults
WHERE Gender = 'Male'
END

GO
-- The above procedure is for drop down lists, added 01.21.2015. 
-- It pulls all the male adult names with middle initials

CREATE PROCEDURE RetrieveFemales
AS
BEGIN
SELECT FirstName, Left(MiddleName,1) as MiddleInitial, LastName
FROM Adults
WHERE Gender = 'Female'
END
GO
-- The above procedure is for drop down lists, added 01.21.2015. 
-- It pulls all of the female adult names with middle initials
-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------