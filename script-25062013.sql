USE [pos]
GO
/****** Object:  Table [dbo].[tableIsInsert]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableIsInsert](
	[tableName] [varchar](50) NOT NULL,
	[isInsert] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxType]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taxType](
	[taxTypeID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NULL,
	[inputTaxAccount] [nvarchar](20) NULL,
	[outputTaxAccount] [nvarchar](20) NULL,
	[refundTaxAccount] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_taxType] PRIMARY KEY CLUSTERED 
(
	[taxTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serviceType]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serviceType](
	[serviceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[serviceType] [nvarchar](100) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_serviceType] PRIMARY KEY CLUSTERED 
(
	[serviceTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testM]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_testM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testD]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testD](
	[id] [int] NOT NULL,
	[name2] [nchar](10) NULL,
 CONSTRAINT [PK_testD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[deptID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
	[image] [varchar](100) NULL,
	[deptName] [varchar](100) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[modifierMaster]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modifierMaster](
	[modifierID] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[divisible] [nchar](1) NULL,
	[comment] [nvarchar](200) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_modifier_header] PRIMARY KEY CLUSTERED 
(
	[modifierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itemWarning]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemWarning](
	[warningID] [int] IDENTITY(1,1) NOT NULL,
	[allUser] [nchar](1) NULL,
	[users] [int] NULL,
	[warningMessage] [nvarchar](100) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_itemWarning] PRIMARY KEY CLUSTERED 
(
	[warningID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itemRestaurant]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemRestaurant](
	[itemRestID] [int] IDENTITY(1,1) NOT NULL,
	[itemID] [int] NULL,
	[byPortion] [nchar](1) NULL,
	[visibleSales] [nchar](1) NULL,
	[orderNo] [int] NULL,
	[isMenu] [nchar](1) NULL,
	[freePrice] [nchar](1) NULL,
	[freeMin] [float] NULL,
	[freeMax] [float] NULL,
	[couponCode] [int] NULL,
	[shortcut] [nvarchar](10) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[yield] [float] NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_itemRestaurant] PRIMARY KEY CLUSTERED 
(
	[itemRestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 06/25/2013 16:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brandID] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [nvarchar](100) NULL,
	[description] [nvarchar](50) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[department]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[deptID] [int] IDENTITY(1,1) NOT NULL,
	[deptName] [varchar](100) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[family]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[family](
	[deptID] [int] NOT NULL,
	[sectionID] [int] NOT NULL,
	[familyID] [int] IDENTITY(1,1) NOT NULL,
	[familyName] [varchar](100) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_family] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC,
	[sectionID] ASC,
	[familyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[format]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[format](
	[formatID] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[combination] [nchar](1) NULL,
	[portion1] [float] NULL,
	[portion2] [float] NULL,
	[costSecond] [float] NULL,
	[favoriteCode] [int] NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_format] PRIMARY KEY CLUSTERED 
(
	[formatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[itemPics]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemPics](
	[itemPicID] [int] IDENTITY(1,1) NOT NULL,
	[itemID] [int] NULL,
	[image] [int] NULL,
	[reference] [nvarchar](20) NULL,
	[description] [nvarchar](100) NULL,
	[version] [timestamp] NOT NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_itemPics] PRIMARY KEY CLUSTERED 
(
	[itemPicID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[itemID] [int] IDENTITY(1,1) NOT NULL,
	[itemName] [nvarchar](100) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](100) NULL,
	[shortDescription] [nvarchar](50) NULL,
	[deptID] [int] NULL,
	[sectionID] [int] NULL,
	[familyID] [int] NULL,
	[brandID] [int] NULL,
	[lineID] [int] NULL,
	[isStockItem] [nchar](1) NULL,
	[discontinue] [nchar](1) NULL,
	[stockMeasure] [nvarchar](20) NULL,
	[stockMeasureUnit] [float] NULL,
	[purchaseMeasure] [nvarchar](20) NULL,
	[purchaseMeasureUnit] [float] NULL,
	[saleMeasure] [nvarchar](20) NULL,
	[saleMeasureUnit] [float] NULL,
	[itemType] [int] NULL,
	[itemClass] [nvarchar](20) NULL,
	[saleAccount] [nvarchar](20) NULL,
	[purchaseAccount] [nvarchar](20) NULL,
	[costOfSaleAccount] [nvarchar](20) NULL,
	[saleReturnAccount] [nvarchar](20) NULL,
	[purchaseReturnAccount] [nvarchar](20) NULL,
	[visibleOnWeb] [nchar](1) NULL,
	[season] [nvarchar](20) NULL,
	[characteristics] [nvarchar](20) NULL,
	[warningID] [int] NULL,
	[version] [timestamp] NOT NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[formatSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[formatSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@formatID INTEGER = -1,
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @combination nchar(1) = '',
    @portion1 float = -1,
    @portion2 float = -1,
    @costSecond float = -1,
    @favoriteCode int = -1,
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into format( reference, description, image, bgColor, textColor, combination, portion1, portion2, costSecond, favoriteCode, createDate, lastModified, createUser, modifyUser) values
	( @reference, @description, @image, @bgColor, @textColor, @combination, @portion1, @portion2, @costSecond, @favoriteCode, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('format', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @formatID = -1)
	BEGIN
	select * from format;
	select @isInserted = isInsert from tableIsInsert where tableName = 'format';
	
	if(@isInserted!=1) select(IDENT_CURRENT('format')) as nextID;
	else select(IDENT_CURRENT('format')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @formatID != -1)
	BEGIN
	select * from format where formatID=@formatID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'format';
	
	if(@isInserted!=1) select(IDENT_CURRENT('format')) as nextID;
	else select(IDENT_CURRENT('format')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE format SET
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		combination = @combination,
		portion1 = @portion1,
		portion2 = @portion2,
		costSecond = @costSecond,
		favoriteCode = @favoriteCode,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE formatID = @formatID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM format WHERE formatID=@formatID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[familySelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[familySelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@sectionID INTEGER = -1,
	@familyID INTEGER = -1,
	@familyName varchar(100) = '',
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into family ( deptID, sectionID, familyName, reference, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, lastModified, createUser, modifyUser) values
	( @deptID, @sectionID, @familyName, @reference, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('family', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @deptID = -1)
	BEGIN
	select * from family;
	select @isInserted = isInsert from tableIsInsert where tableName = 'family';
	
	if(@isInserted!=1) select(IDENT_CURRENT('family')) as nextID;
	else select(IDENT_CURRENT('family')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1 AND @sectionID != -1)
	BEGIN
	select * from family where deptID=@deptID and sectionID=@sectionID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'family';
	
	if(@isInserted!=1) select(IDENT_CURRENT('family')) as nextID;
	else select(IDENT_CURRENT('family')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1 AND @sectionID != -1 AND @familyID != -1)
	BEGIN
	select * from family where deptID=@deptID and sectionID=@sectionID and familyID=@familyID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'family';
	
	if(@isInserted!=1) select(IDENT_CURRENT('family')) as nextID;
	else select(IDENT_CURRENT('family')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE family SET
		deptId = @deptId,
		sectionID=@sectionID,
		familyName = @familyName,
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE deptId = @deptId and sectionID=@sectionID and familyID=@familyID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM family WHERE deptId = @deptId and sectionID=@sectionID and familyID=@familyID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[departmentSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[departmentSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@deptName varchar(100) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
    
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into department ( deptName, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, lastModified, createUser, modifyUser) values
	(  @deptName, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('department', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @deptID = -1)
	BEGIN
	select * from department;
	select @isInserted = isInsert from tableIsInsert where tableName = 'department';
	
	if(@isInserted!=1) select(IDENT_CURRENT('department')) as nextID;
	else select(IDENT_CURRENT('department')+1) as nextID;
	
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1)
	BEGIN
	select * from department where deptID=@deptID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'department';
	
	if(@isInserted!=1) select(IDENT_CURRENT('department')) as nextID;
	else select(IDENT_CURRENT('department')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE department SET
		deptName = @deptName,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE deptId = @deptId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM department WHERE deptId = @deptId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[commentSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[commentSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@commentID INTEGER = -1,
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into comment( reference, description, image, bgColor, textColor, createDate, lastModified, createUser, modifyUser) values
	( @reference, @description, @image, @bgColor, @textColor, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('comment', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @commentID = -1)
	BEGIN
	select * from comment;
	select @isInserted = isInsert from tableIsInsert where tableName = 'comment';
	
	if(@isInserted!=1) select(IDENT_CURRENT('comment')) as nextID;
	else select(IDENT_CURRENT('comment')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @commentID != -1)
	BEGIN
	select * from comment where commentID=@commentID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'comment';
	
	if(@isInserted!=1) select(IDENT_CURRENT('comment')) as nextID;
	else select(IDENT_CURRENT('comment')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE comment SET
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE commentID = @commentID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM comment WHERE commentID=@commentID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[brandSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[brandSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@brandID INTEGER = -1,
	@brandName varchar(100) = '',
    @description nvarchar(50) = '',
    -- @image varchar(100) = '',
    -- @bgColor nvarchar(20) = '',
    -- @textColor nvarchar(20) = '',
    -- @costCenter nvarchar(10) = '',
    -- @saleAcct nvarchar(20) = '',
    -- @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into brand ( brandName, description, createDate, lastModified, createUser, modifyUser) values
	(  @brandName, @description, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('brand', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @brandID = -1)
	BEGIN
	select * from brand;
	select @isInserted = isInsert from tableIsInsert where tableName = 'brand';
	
	if(@isInserted!=1) select(IDENT_CURRENT('brand')) as nextID;
	else select(IDENT_CURRENT('brand')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @brandID != -1)
	BEGIN
	select * from brand where brandID=@brandID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'brand';
	
	if(@isInserted!=1) select(IDENT_CURRENT('brand')) as nextID;
	else select(IDENT_CURRENT('brand')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE brand SET
		brandName = @brandName,
		description = @description, 
		-- image = @image, 
		-- bgColor = @bgColor, 
		-- textColor = @textColor, 
		-- costCenter = @costCenter, 
		-- saleAcct = @saleAcct, 
		-- purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE brandId = @brandId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM brand WHERE brandId = @brandId
	END
END
GO
/****** Object:  Table [dbo].[line]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[line](
	[brandID] [int] NOT NULL,
	[lineID] [int] IDENTITY(1,1) NOT NULL,
	[lineName] [nvarchar](100) NULL,
	[description] [nvarchar](50) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_line] PRIMARY KEY CLUSTERED 
(
	[lineID] ASC,
	[brandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[itemWarningSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemWarningSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@warningID INTEGER = -1,
	@allUser nchar(1) = '-1',
	@users INTEGER = '-1',
	@warningMessage nvarchar(100) = '',
	@createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @StatementType = 'Insert'
	BEGIN
	insert into itemWarning ( allUser, users, warningMessage, createDate, lastModified, createUser, modifyUser) values
	(  @allUser, @users, @warningMessage, GETDATE(), GETDATE(), @createUser, @modifyUser);
	
	SELECT @newID = SCOPE_IDENTITY();
	END
	
	IF (@StatementType = 'Select' AND @warningID = -1)
	BEGIN
	select * from itemWarning
	END
	
	IF (@StatementType = 'Select' AND @warningID != -1)
	BEGIN
	select * from itemWarning where warningID=@warningID
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE itemWarning SET
		allUser = @allUser,
		users = @users, 
		warningMessage = @warningMessage,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE warningID = @warningID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM itemWarning WHERE warningID = @warningID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[itemPicsSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemPicsSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@itemPicID INTEGER = -1,
	@itemID INTEGER = -1,
	@reference varchar(20) = '',
    @description nvarchar(100) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
	IF @StatementType = 'Insert'
	BEGIN
	insert into itemPics ( itemID, reference, description, createDate, lastModified, createUser, modifyUser) values
	(  @itemID, @reference, @description, GETDATE(), GETDATE(), @createUser, @modifyUser);
	
	SELECT @newID = SCOPE_IDENTITY();
	END
	
	IF (@StatementType = 'Select' AND @itemID = -1)
	BEGIN
	select * from itemPics
	END
	
	IF (@StatementType = 'Select' AND @itemID != -1)
	BEGIN
	select * from itemPics where itemPicID=@itemPicID
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE itemPics SET
		reference = @reference,
		description = @description, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE itemPicID=@itemPicID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM itemPics WHERE itemPicID=@itemPicID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[itemSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
@itemID	int = -1,
@itemName	nvarchar(100) ='',
@reference	nvarchar(25) ='',
@description	nvarchar(100) ='',
@shortDescription	nvarchar(50) ='',
@deptID	int =-1,
@sectionID	int =-1,
@familyID	int =-1,
@brandID	int =-1,
@lineID	int =-1,
@isStockItem	nchar(1) ='0',
@discontinue	nchar(1) ='0',
@stockMeasure	nvarchar(20) ='',
@stockMeasureUnit	float =-1,
@purchaseMeasure	nvarchar(20) ='',
@purchaseMeasureUnit	float =-1,
@saleMeasure	nvarchar(20) ='',
@saleMeasureUnit	float =-1,
@itemType	int =-1,
@itemClass	nvarchar(20) ='',
@saleAccount	nvarchar(20) ='',
@purchaseAccount	nvarchar(20) ='',
@costOfSaleAccount	nvarchar(20) ='',
@saleReturnAccount	nvarchar(20) ='',
@purchaseReturnAccount	nvarchar(20) ='',
@visibleOnWeb	nchar(1) ='0',
@season	nvarchar(20) ='',
@characteristics	nvarchar(20) ='',
@warningID	int =-1,

@allUser nchar(1) = '-1',
@users INTEGER = '-1',
@warningMessage nvarchar(100) = '',

@itemPicID INTEGER = -1,
@referencePic varchar(20) = '',
@descriptionPic nvarchar(100) = '',

@createUser int = -1,
@modifyUser	int = -1,

@StatementType varchar(20) ='',

@NewId int output,
@NewPicId int output
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @HasError int;
	set @HasError = 0;
	
	-- Insert statements for procedure here
	declare @isError int;
	set @isError = 0;
	
	if @StatementType = 'Insert'
	begin
		begin transaction
		
		/* step 1: Insert into ItemWarning */
		insert into itemWarning ( allUser, users, warningMessage, createDate, lastModified, createUser, modifyUser) values
		(@allUser, @users, @warningMessage, GETDATE(), GETDATE(), @createUser, @modifyUser);
		select @warningID = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		/* step 2: Insert into Item */
		insert into item (itemName, reference, description, shortDescription, deptID, sectionID, familyID, brandID, lineID, isStockItem, discontinue, stockMeasure, stockMeasureUnit, purchaseMeasure, purchaseMeasureUnit, saleMeasure, saleMeasureUnit, itemType, itemClass, saleAccount, purchaseAccount, costOfSaleAccount, saleReturnAccount, purchaseReturnAccount, visibleOnWeb, season, characteristics, warningID, createDate, lastModified, createUser, modifyUser) values
		(@itemName, @reference, @description, @shortDescription, @deptID, @sectionID, @familyID, @brandID, @lineID, @isStockItem, @discontinue, @stockMeasure, @stockMeasureUnit, @purchaseMeasure, @purchaseMeasureUnit, @saleMeasure, @saleMeasureUnit, @itemType, @itemClass, @saleAccount, @purchaseAccount, @costOfSaleAccount, @saleReturnAccount, @purchaseReturnAccount, @visibleOnWeb, @season, @characteristics, @warningID, GETDATE(), GETDATE(), @createUser, @modifyUser);
		SELECT @newID = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		insert into tableIsInsert(tableName, isInsert) values('item', 1);
		if(@@ERROR!=0) set @HasError = 1;
		
		/* step 3: Insert into ItemPics */
		insert into itemPics ( itemID, reference, description, createDate, lastModified, createUser, modifyUser) values
		(@newID, @referencePic, @descriptionPic, GETDATE(), GETDATE(), @createUser, @modifyUser);
		select @NewPicId = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	if (@StatementType = 'Select' and @itemID = -1)
	begin
		select * from item
		inner join itemWarning
		on item.warningID=itemWarning.warningID
		inner join itemPics
		on itemPics.itemID = item.itemID;
		
		select @isInserted = isInsert from tableIsInsert where tableName = 'item';
		if(@isInserted!=1) select(IDENT_CURRENT('item')) as nextID;
		else select(IDENT_CURRENT('item')+1) as nextID;
	end
	if (@StatementType = 'Select' and @itemID != -1)
	begin
		select * from item
		inner join itemWarning
		on item.warningID=itemWarning.warningID
		inner join itemPics
		on itemPics.itemID = item.itemID
		where item.itemID=@itemID;
		
		select @isInserted = isInsert from tableIsInsert where tableName = 'item';
		if(@isInserted!=1) select(IDENT_CURRENT('item')) as nextID;
		else select(IDENT_CURRENT('item')+1) as nextID;
	end

	if @StatementType = 'Update'
	begin
		begin transaction
		
		update item set
			itemName=@itemName,
			reference=@reference,
			description=@description,
			shortDescription=@shortDescription, 
			deptID=@deptID, 
			sectionID=@sectionID, 
			familyID=@familyID, 
			brandID=@brandID, 
			lineID=@lineID, 
			isStockItem=@isStockItem, 
			discontinue=@discontinue, 
			stockMeasure=@stockMeasure, 
			stockMeasureUnit=@stockMeasureUnit, 
			purchaseMeasure=@purchaseMeasure, 
			purchaseMeasureUnit=@purchaseMeasureUnit, 
			saleMeasure=@saleMeasure, 
			saleMeasureUnit=@saleMeasureUnit, 
			itemType=@itemType, 
			itemClass=@itemClass, 
			saleAccount=@saleAccount, 
			purchaseAccount=@purchaseAccount, 
			costOfSaleAccount=@costOfSaleAccount, 
			saleReturnAccount=@saleReturnAccount, 
			purchaseReturnAccount=@purchaseReturnAccount, 
			visibleOnWeb=@visibleOnWeb, 
			season=@season, 
			characteristics=@characteristics, 
			warningID=@warningID,
			lastModified=GETDATE(), 
			modifyUser=@modifyUser 
		where itemID=@itemID;
		if(@@ERROR!=0) set @HasError = 1;
		
		UPDATE itemWarning SET
			allUser = @allUser,
			users = @users, 
			warningMessage = @warningMessage,
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		WHERE warningID = @warningID;
		if(@@ERROR!=0) set @HasError = 1;
		
		UPDATE itemPics SET
			reference = @reference,
			description = @description, 
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		WHERE itemPicID=@itemPicID;
		if(@@ERROR!=0) set @HasError = 1;
	end
		
	if @StatementType = 'Delete'
	begin
		begin transaction
		delete from item where itemID = @itemID;
		if(@@ERROR!=0) set @HasError = 1;
		
		DELETE FROM itemWarning WHERE warningID = @warningID
		if(@@ERROR!=0) set @HasError = 1;
		
		DELETE FROM itemPics WHERE itemPicID=@itemPicID
		if(@@ERROR!=0) set @HasError = 1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
END
GO
/****** Object:  StoredProcedure [dbo].[itemRestaurantSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemRestaurantSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@itemRestID INTEGER = -1,
	@itemID integer = -1,
    @byPortion nchar(1) = '',
    @visibleSales nchar(1) = '',
    @orderNo int = '',
    @isMenu nchar(1) = '',
    @freePrice nchar(1) = '',
    @freeMin float = 0,
    @freeMax float = 0,
    @couponCode int = 0,
    @shortcut nvarchar(10) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @yield float = 0,
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into itemRestaurant ( itemID, byPortion, visibleSales, orderNo, isMenu, freePrice, freeMin, freeMax, couponCode, shortcut, bgColor, textColor, yield, createDate, lastModified, createUser, modifyUser) values
	(  @itemID, @byPortion, @visibleSales, @orderNo, @isMenu, @freePrice, @freeMin, @freeMax, @couponCode, @shortcut, @bgColor, @textColor, @yield, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('itemRestaurant', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @itemRestID = -1)
	BEGIN
	select * from itemRestaurant;
	select @isInserted = isInsert from tableIsInsert where tableName = 'itemRestaurant';
	
	if(@isInserted!=1) select(IDENT_CURRENT('itemRestaurant')) as nextID;
	else select(IDENT_CURRENT('itemRestaurant')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @itemRestID != -1)
	BEGIN
	select * from itemRestaurant where itemRestID=@itemRestID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'itemRestaurant';
	
	if(@isInserted!=1) select(IDENT_CURRENT('itemRestaurant')) as nextID;
	else select(IDENT_CURRENT('itemRestaurant')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE itemRestaurant SET
		itemID = @itemID,
		byPortion = @byPortion, 
		visibleSales = @visibleSales, 
		orderNo = @orderNo, 
		isMenu = @isMenu, 
		freePrice = @freePrice, 
		freeMin = @freeMin, 
		freeMax = @freeMax,
		couponCode = @couponCode,
		shortcut = @shortcut,
		bgColor = @bgColor,
		textColor = @textColor,
		yield = @yield,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE itemRestID = @itemRestID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM itemRestaurant WHERE itemRestID = @itemRestID
	END
END
GO
/****** Object:  Table [dbo].[section]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[section](
	[deptID] [int] NOT NULL,
	[sectionID] [int] IDENTITY(1,1) NOT NULL,
	[sectionName] [varchar](100) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_section] PRIMARY KEY CLUSTERED 
(
	[sectionID] ASC,
	[deptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[modifierMasterSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[modifierMasterSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@modifierID INTEGER = -1,
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @divisible nchar(1) = '',
    @comment nvarchar(200) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into modifierMaster ( reference, description, divisible, comment, createDate, lastModified, createUser, modifyUser) values
	( @reference, @description, @divisible, @comment, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('modifierMaster', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @modifierID = -1)
	BEGIN
	select * from modifierMaster;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierMaster';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierMaster')) as nextID;
	else select(IDENT_CURRENT('modifierMaster')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @modifierID != -1)
	BEGIN
	select * from modifierMaster where modifierID=@modifierID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierMaster';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierMaster')) as nextID;
	else select(IDENT_CURRENT('modifierMaster')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE modifierMaster SET
		reference = @reference,
		description = @description, 
		divisible = @divisible, 
		comment = @comment, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE modifierID = @modifierID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM modifierMaster WHERE modifierID = @modifierID
	END
END
GO
/****** Object:  Table [dbo].[modifierDetail]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modifierDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modifierID] [int] NOT NULL,
	[itemID] [int] NOT NULL,
	[isItem] [nchar](1) NULL,
	[portion] [float] NULL,
	[priceChange] [float] NULL,
	[position] [int] NULL,
	[formatID] [int] NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_modifier_detail_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[TestSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@deptName varchar(100) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
	IF @StatementType = 'Insert'
	BEGIN
	insert into test ( deptName, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, createUser, modifyUser) values
	(  @deptName, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), @createUser, @modifyUser);
	
	SELECT @newID = SCOPE_IDENTITY();
	END
	
	IF @StatementType = 'Select'
	BEGIN
	select * from test
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE test SET
		deptName = @deptName,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct, 
		modifyUser = @modifyUser
	WHERE deptId = @deptId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM test WHERE deptId = @deptId
	END
END
GO
/****** Object:  Table [dbo].[taxGroup]    Script Date: 06/25/2013 16:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taxGroup](
	[taxGroupID] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](20) NULL,
	[state] [nvarchar](20) NULL,
	[city] [nvarchar](20) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[category] [nvarchar](20) NULL,
	[comment] [nvarchar](100) NULL,
	[serviceTypeID] [int] NULL,
	[inclusive] [nchar](1) NULL,
	[line] [int] NULL,
	[taxTypeID] [int] NULL,
	[isPerAmount] [nchar](1) NULL,
	[amount] [float] NULL,
	[percentage] [float] NULL,
	[isExempt] [nchar](1) NULL,
	[afterDiscount] [nchar](1) NULL,
	[afterLine] [nchar](1) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_taxGroup] PRIMARY KEY CLUSTERED 
(
	[taxGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[taxTypeSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[taxTypeSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@taxTypeID INTEGER = -1,
	@description nvarchar(50) = '',
    @inputTaxAccount nvarchar(20) = '',
    @outputTaxAccount nvarchar(20) = '',
    @refundTaxAccount nvarchar(10) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into taxType ( description, inputTaxAccount, outputTaxAccount, refundTaxAccount, createDate, lastModified, createUser, modifyUser) values
	(  @description, @inputTaxAccount, @outputTaxAccount, @refundTaxAccount, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('taxType', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @taxTypeID = -1)
	BEGIN
	select * from taxType;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxType';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxType')) as nextID;
	else select(IDENT_CURRENT('taxType')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @taxTypeID != -1)
	BEGIN
	select * from taxType where taxTypeID=@taxTypeID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxType';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxType')) as nextID;
	else select(IDENT_CURRENT('taxType')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE taxType SET
		description = @description, 
		inputTaxAccount = @inputTaxAccount, 
		outputTaxAccount = @outputTaxAccount, 
		refundTaxAccount = @refundTaxAccount, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE taxTypeID=@taxTypeID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM taxType WHERE taxTypeID=@taxTypeID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TestD]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TestD] 
	-- Add the parameters for the stored procedure here
	@id int = -1,
	@name2 varchar(10) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
	BEGIN
		insert into testD (id, name2) values (@id, @name2);
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[taxGroupSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[taxGroupSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@taxGroupID INTEGER = -1,
	@country nvarchar(20) = '',
	@state nvarchar(20) = '',
	@city nvarchar(20) = '',
	@reference nvarchar(25) = '',
	@description nvarchar(50) = '',
    @category nvarchar(20) = '',
    @comment nvarchar(100) = '',
    @serviceTypeID int = -1,
    @inclusive nchar(1) = '',
    @line int = -1,
    @taxTypeID int = -1,
    @isPerAmount nchar(1) = '',
    @amount float = 0,
    @percentage float = 0,
    @isExempt nchar(1) = '',
    @afterDiscount nchar(1) = '',
    @afterLine nchar(1) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into taxGroup ( country, state, city, reference, description, category, comment, serviceTypeID, inclusive, line, taxTypeID, isPerAmount, amount, percentage, isExempt, afterDiscount, afterLine, createDate, lastModified, createUser, modifyUser) values
	(  @country, @state, @city, @reference, @description, @category, @comment, @serviceTypeID, @inclusive, @line, @taxTypeID, @isPerAmount, @amount, @percentage, @isExempt, @afterDiscount, @afterLine, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('taxGroup', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @taxGroupID = -1)
	BEGIN
	select * from taxGroup;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxGroup';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxGroup')) as nextID;
	else select(IDENT_CURRENT('taxGroup')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @taxGroupID != -1)
	BEGIN
	select * from taxGroup where taxGroupID=@taxGroupID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxGroup';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxGroup')) as nextID;
	else select(IDENT_CURRENT('taxGroup')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE taxGroup SET
		country = @country, 
		city = @city, 
		reference = @reference, 
		description = @description,
		category = @category,
		comment = @comment,
		serviceTypeID = @serviceTypeID,
		line = @line,
		taxTypeID = @taxTypeID,
		isPerAmount = @isPerAmount,
		amount = @amount,
		percentage = @percentage,
		isExempt = @isExempt,
		afterDiscount = @afterDiscount,
		afterLine = @afterLine, 
		
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE taxGroupID=@taxGroupID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM taxGroup WHERE taxGroupID=@taxGroupID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sectionSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sectionSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@sectionID INTEGER = -1,
	@sectionName varchar(100) = '',
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	insert into section ( deptID, sectionName, reference, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, lastModified, createUser, modifyUser) values
	( @deptID, @sectionName, @reference, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('section', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @deptID = -1)
	BEGIN
	select * from section;
	select @isInserted = isInsert from tableIsInsert where tableName = 'section';
	
	if(@isInserted!=1) select(IDENT_CURRENT('section')) as nextID;
	else select(IDENT_CURRENT('section')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1)
	BEGIN
	select * from section where deptID=@deptID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'section';
	
	if(@isInserted!=1) select(IDENT_CURRENT('section')) as nextID;
	else select(IDENT_CURRENT('section')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1 AND @sectionID != -1)
	BEGIN
	select * from section where deptID=@deptID and sectionID=@sectionID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'section';
	
	if(@isInserted!=1) select(IDENT_CURRENT('section')) as nextID;
	else select(IDENT_CURRENT('section')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE section SET
		deptId = @deptId,
		sectionName = @sectionName,
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE deptId = @deptId and sectionID=@sectionID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM section WHERE deptId = @deptId and sectionID=@sectionID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TestM]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TestM] 
	-- Add the parameters for the stored procedure here
	@name varchar(10) = '',
	@name2 varchar(10) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    
    declare @newID int;
    declare @HasError int;
    set @HasError = 0;
    
	BEGIN TRANSACTION
	insert into testM (name) values (@name);
	
	if (@@ERROR != 0)
	begin
		set @HasError = 1;
	end
	
	SELECT @newID = SCOPE_IDENTITY();

	EXECUTE sp_TestD @newID,@name2;
	
	if (@@ERROR != 0)
	begin
		set @HasError = 1;
	end
	
	if (@HasError <> 0)
	begin
		rollback transaction
	end
	else
	begin
		commit transaction
	end
END
GO
/****** Object:  StoredProcedure [dbo].[lineSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[lineSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@brandID INTEGER = -1,
	@lineID INTEGER = -1,
	@lineName varchar(100) = '',
    @description nvarchar(50) = '',
    -- @image varchar(100) = '',
    -- @bgColor nvarchar(20) = '',
    -- @textColor nvarchar(20) = '',
    -- @costCenter nvarchar(10) = '',
    -- @saleAcct nvarchar(20) = '',
    -- @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into line ( brandID, lineName, description, createDate, lastModified, createUser, modifyUser) values
	( @brandID, @lineName, @description, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('line', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @brandID = -1 AND @lineID = -1)
	BEGIN
	select * from line;
	select @isInserted = isInsert from tableIsInsert where tableName = 'line';
	
	if(@isInserted!=1) select(IDENT_CURRENT('line')) as nextID;
	else select(IDENT_CURRENT('line')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @brandID != -1)
	BEGIN
	select * from line where brandID=@brandID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'line';
	
	if(@isInserted!=1) select(IDENT_CURRENT('line')) as nextID;
	else select(IDENT_CURRENT('line')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @brandID != -1 AND @lineID != -1)
	BEGIN
	select * from line where brandID=@brandID and lineID=@lineID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'line';
	
	if(@isInserted!=1) select(IDENT_CURRENT('line')) as nextID;
	else select(IDENT_CURRENT('line')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE line SET
		brandID = @brandID,
		lineName = @lineName,
		description = @description, 
		-- image = @image, 
		-- bgColor = @bgColor, 
		-- textColor = @textColor, 
		-- costCenter = @costCenter, 
		-- saleAcct = @saleAcct, 
		-- purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE brandId = @brandId and lineID=@lineID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM line WHERE brandId = @brandId and lineID=@lineID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[modifierDetailSelectInsertUpdateDelete]    Script Date: 06/25/2013 16:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[modifierDetailSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@ID INTEGER = -1,
	@modifierID INTEGER = -1,
	@itemID INTEGER = -1,
	@isItem nchar(1) = '',
    @portion float = 0,
    @priceChange float = 0,
    @position integer = -1,
    @formatID integer = -1,
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	insert into modifierDetail ( modifierID, itemID, isItem, portion, priceChange, position, formatID, createDate, lastModified, createUser, modifyUser) values
	( @modifierID, @itemID, @isItem, @portion, @priceChange, @position, @formatID, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('modifierDetail', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @ID = -1)
	BEGIN
	select * from modifierDetail;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierDetail';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierDetail')) as nextID;
	else select(IDENT_CURRENT('modifierDetail')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @ID != -1)
	BEGIN
	select * from modifierDetail where ID=@ID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierDetail';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierDetail')) as nextID;
	else select(IDENT_CURRENT('modifierDetail')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE modifierDetail SET
		modifierID = @modifierID,
		itemID = @itemID, 
		isItem = @isItem, 
		portion = @portion,
		priceChange = @priceChange,
		position = @position,
		formatID = @formatID,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE ID = @ID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM modifierDetail WHERE ID = @ID
	END
END
GO
/****** Object:  ForeignKey [FK_family_family]    Script Date: 06/25/2013 16:25:49 ******/
ALTER TABLE [dbo].[family]  WITH CHECK ADD  CONSTRAINT [FK_family_family] FOREIGN KEY([deptID], [sectionID], [familyID])
REFERENCES [dbo].[family] ([deptID], [sectionID], [familyID])
GO
ALTER TABLE [dbo].[family] CHECK CONSTRAINT [FK_family_family]
GO
/****** Object:  ForeignKey [FK_brand_line]    Script Date: 06/25/2013 16:25:49 ******/
ALTER TABLE [dbo].[line]  WITH CHECK ADD  CONSTRAINT [FK_brand_line] FOREIGN KEY([brandID])
REFERENCES [dbo].[brand] ([brandID])
GO
ALTER TABLE [dbo].[line] CHECK CONSTRAINT [FK_brand_line]
GO
/****** Object:  ForeignKey [FK_modifierDetail_modifierMaster]    Script Date: 06/25/2013 16:25:49 ******/
ALTER TABLE [dbo].[modifierDetail]  WITH CHECK ADD  CONSTRAINT [FK_modifierDetail_modifierMaster] FOREIGN KEY([modifierID])
REFERENCES [dbo].[modifierMaster] ([modifierID])
GO
ALTER TABLE [dbo].[modifierDetail] CHECK CONSTRAINT [FK_modifierDetail_modifierMaster]
GO
/****** Object:  ForeignKey [FK_section_department]    Script Date: 06/25/2013 16:25:49 ******/
ALTER TABLE [dbo].[section]  WITH CHECK ADD  CONSTRAINT [FK_section_department] FOREIGN KEY([deptID])
REFERENCES [dbo].[department] ([deptID])
GO
ALTER TABLE [dbo].[section] CHECK CONSTRAINT [FK_section_department]
GO
/****** Object:  ForeignKey [FK_taxGroup_serviceType]    Script Date: 06/25/2013 16:25:49 ******/
ALTER TABLE [dbo].[taxGroup]  WITH CHECK ADD  CONSTRAINT [FK_taxGroup_serviceType] FOREIGN KEY([serviceTypeID])
REFERENCES [dbo].[serviceType] ([serviceTypeID])
GO
ALTER TABLE [dbo].[taxGroup] CHECK CONSTRAINT [FK_taxGroup_serviceType]
GO
/****** Object:  ForeignKey [FK_taxGroup_taxGroup]    Script Date: 06/25/2013 16:25:49 ******/
ALTER TABLE [dbo].[taxGroup]  WITH CHECK ADD  CONSTRAINT [FK_taxGroup_taxGroup] FOREIGN KEY([taxTypeID])
REFERENCES [dbo].[taxType] ([taxTypeID])
GO
ALTER TABLE [dbo].[taxGroup] CHECK CONSTRAINT [FK_taxGroup_taxGroup]
GO
