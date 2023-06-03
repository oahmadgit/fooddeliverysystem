USE [master]
GO
/****** Object:  Database [call center]    Script Date: 1/13/2018 1:23:06 PM ******/
CREATE DATABASE [call center]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'call center', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\call center.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'call center_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\call center_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [call center] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [call center].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [call center] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [call center] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [call center] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [call center] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [call center] SET ARITHABORT OFF 
GO
ALTER DATABASE [call center] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [call center] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [call center] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [call center] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [call center] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [call center] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [call center] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [call center] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [call center] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [call center] SET  DISABLE_BROKER 
GO
ALTER DATABASE [call center] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [call center] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [call center] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [call center] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [call center] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [call center] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [call center] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [call center] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [call center] SET  MULTI_USER 
GO
ALTER DATABASE [call center] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [call center] SET DB_CHAINING OFF 
GO
ALTER DATABASE [call center] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [call center] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [call center]
GO
/****** Object:  User [oa]    Script Date: 1/13/2018 1:23:06 PM ******/
CREATE USER [oa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 1/13/2018 1:23:06 PM ******/
CREATE USER [admin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[branch_concat]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch_concat](
	[bcid] [int] IDENTITY(1,1) NOT NULL,
	[area_id] [int] NOT NULL,
	[brancharea_id] [int] NOT NULL,
	[branch_id] [int] NOT NULL,
	[min_delivery] [nvarchar](max) NULL,
	[delivery_charge] [nvarchar](max) NULL,
	[delivery_time] [nvarchar](max) NULL,
 CONSTRAINT [PK_branch_concat] PRIMARY KEY CLUSTERED 
(
	[bcid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[call_log]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[call_log](
	[callid] [int] IDENTITY(1,1) NOT NULL,
	[cli] [nvarchar](max) NOT NULL,
	[did] [nvarchar](max) NOT NULL,
	[ext] [nchar](10) NULL,
	[notify] [bit] NULL,
	[time] [datetime] NULL,
	[endcall] [bit] NULL,
	[time2] [datetime] NULL,
 CONSTRAINT [PK_call_log] PRIMARY KEY CLUSTERED 
(
	[callid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[catid] [int] IDENTITY(1,1) NOT NULL,
	[catname] [nvarchar](max) NOT NULL,
	[Isdeal] [bit] NULL,
	[branchid] [int] NOT NULL,
 CONSTRAINT [PK__Category__17B9D93E1BFD2C07] PRIMARY KEY CLUSTERED 
(
	[catid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complaints]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complaints](
	[cid] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[type] [nvarchar](max) NULL,
	[priority] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[oid] [int] NULL,
	[initiate] [bit] NULL,
	[process] [bit] NULL,
	[resolved] [bit] NULL,
	[closed] [bit] NULL,
	[branchid] [int] NULL,
	[inittime] [datetime] NULL,
	[closedtime] [datetime] NULL,
	[agent] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Concat]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concat](
	[concatid] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NOT NULL,
	[subcatid] [int] NOT NULL,
	[itemid] [int] NOT NULL,
	[unitid] [int] NOT NULL,
 CONSTRAINT [PK__Concat__93A5CD52182C9B23] PRIMARY KEY CLUSTERED 
(
	[concatid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](max) NOT NULL,
	[lastname] [nvarchar](max) NULL,
	[phone2] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
	[address] [nvarchar](max) NOT NULL,
	[city] [int] NOT NULL,
	[area] [int] NOT NULL,
	[brancharea] [int] NOT NULL,
	[branch] [int] NOT NULL,
	[ref] [nvarchar](max) NULL,
 CONSTRAINT [PK__Customer__D837D05F239E4DCF] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deal_concat]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deal_concat](
	[dcid] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NOT NULL,
	[did] [int] NOT NULL,
	[optid] [int] NOT NULL,
 CONSTRAINT [PK_deal_concat] PRIMARY KEY CLUSTERED 
(
	[dcid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deal_opt]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deal_opt](
	[optid] [int] IDENTITY(1,1) NOT NULL,
	[optionA] [nvarchar](max) NULL,
	[optionB] [nvarchar](max) NULL,
 CONSTRAINT [PK_deal_opt] PRIMARY KEY CLUSTERED 
(
	[optid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deals]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deals](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[dealname] [nvarchar](max) NOT NULL,
	[price] [nvarchar](max) NOT NULL,
	[Isavailable] [bit] NULL,
	[description] [nvarchar](max) NULL,
	[time] [datetime] NULL,
	[tips] [nvarchar](max) NULL,
 CONSTRAINT [PK_Deals] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[itemname] [nvarchar](max) NOT NULL,
	[time] [datetime] NULL,
	[available] [bit] NULL,
	[branch_id] [int] NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[itemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[oid] [int] NOT NULL,
	[ordername] [int] NOT NULL,
	[orderbranch] [int] NOT NULL,
	[ordertime] [datetime] NULL,
	[closedtime] [datetime] NULL,
	[description] [nvarchar](max) NULL,
	[pending] [bit] NULL,
	[closed] [bit] NULL,
	[pickup] [bit] NULL,
	[agent] [nvarchar](max) NULL,
	[notify] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetail]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetail](
	[odid] [int] IDENTITY(1,1) NOT NULL,
	[itemname] [nvarchar](max) NOT NULL,
	[qty] [int] NOT NULL,
	[price] [nvarchar](max) NOT NULL,
	[oid] [int] NOT NULL,
	[unitsize] [nvarchar](max) NOT NULL,
	[instruction] [nvarchar](max) NULL,
	[optA] [nvarchar](max) NULL,
	[optB] [nvarchar](max) NULL,
	[orderbranch] [int] NULL,
	[ordertime] [datetime] NULL,
 CONSTRAINT [PK__Orderdet__8D153E0908EA5793] PRIMARY KEY CLUSTERED 
(
	[odid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrintServer]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintServer](
	[pr_id] [int] IDENTITY(1,1) NOT NULL,
	[printip] [nvarchar](max) NOT NULL,
	[printname] [nvarchar](max) NOT NULL,
	[date] [date] NULL,
	[filename] [int] NULL,
	[isorder] [bit] NULL,
	[iscomplaint] [bit] NULL,
	[isreservation] [bit] NULL,
	[notify] [bit] NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_PrintServer] PRIMARY KEY CLUSTERED 
(
	[pr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[rid] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[cli] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
	[guest] [nvarchar](max) NULL,
	[child] [nvarchar](max) NULL,
	[chairqty] [nvarchar](max) NULL,
	[citizen] [nvarchar](max) NULL,
	[wheelchairqty] [nvarchar](max) NULL,
	[smoking] [bit] NULL,
	[type] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[branchid] [int] NOT NULL,
	[approved] [bit] NULL,
	[reservetime] [datetime] NULL,
	[approvedtime] [datetime] NULL,
	[finished] [bit] NULL,
	[finishtime] [datetime] NULL,
	[agent] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[shopid] [int] IDENTITY(1,1) NOT NULL,
	[shopname] [nvarchar](max) NOT NULL,
	[shopno] [nvarchar](max) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[pass] [nvarchar](max) NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[branchid] [int] NOT NULL,
 CONSTRAINT [PK__Shop__E5C521440519C6AF] PRIMARY KEY CLUSTERED 
(
	[shopid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategory]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategory](
	[subcatid] [int] IDENTITY(1,1) NOT NULL,
	[subcatname] [nvarchar](max) NOT NULL,
	[branch_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[subcatid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_area]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_area](
	[area_id] [int] IDENTITY(1,1) NOT NULL,
	[area_name] [nvarchar](50) NOT NULL,
	[city_id] [int] NULL,
	[branchareaid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_branch]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_branch](
	[branch_id] [int] IDENTITY(1,1) NOT NULL,
	[branch_name] [nvarchar](50) NOT NULL,
	[delivery_charge] [nchar](10) NULL,
	[delivery_time] [nchar](10) NULL,
	[last_oid] [int] NULL,
	[updated] [datetime] NULL,
	[last_cid] [int] NULL,
	[updated2] [datetime] NULL,
	[last_rid] [int] NULL,
	[updated3] [datetime] NULL,
	[printen] [bit] NULL,
	[printip] [nvarchar](max) NULL,
	[printname] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_brancharea]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_brancharea](
	[brancharea_id] [int] IDENTITY(1,1) NOT NULL,
	[brancharea_name] [nvarchar](50) NOT NULL,
	[branch_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[brancharea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_city]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[unitid] [int] IDENTITY(1,1) NOT NULL,
	[unitsize] [nvarchar](max) NOT NULL,
	[price] [nvarchar](max) NULL,
	[time] [datetime] NULL,
	[tips] [nvarchar](max) NULL,
	[available] [bit] NULL,
	[branch_id] [int] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Validate_Shop]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Validate_Shop]
	@Username NVARCHAR(20),
	@Password NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId INT, @LastLoginDate DATETIME
	
	SELECT @UserId = shopid, @LastLoginDate = LastLoginDate 
	FROM Shop WHERE username = @Username AND pass = @Password
	
	IF @UserId IS NOT NULL
	BEGIN
			UPDATE Shop
			SET LastLoginDate =  GETDATE()
			WHERE shopid = @UserId
			SELECT @UserId [shopid] -- User Valid
		END
		
	ELSE
	BEGIN
		SELECT -1 -- User invalid.
	END
END


GO
/****** Object:  StoredProcedure [dbo].[Validate_User]    Script Date: 1/13/2018 1:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Validate_User]
	@Username NVARCHAR(20),
	@Password NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId INT, @LastLoginDate DATETIME
	
	SELECT @UserId = UserId, @LastLoginDate = LastLoginDate 
	FROM Users WHERE Username = @Username AND [Password] = @Password
	
	IF @UserId IS NOT NULL
	BEGIN
			UPDATE Users
			SET LastLoginDate =  GETDATE()
			WHERE UserId = @UserId
			SELECT @UserId [UserId] -- User Valid
		END
		
	ELSE
	BEGIN
		SELECT -1 -- User invalid.
	END
END
GO
USE [master]
GO
ALTER DATABASE [call center] SET  READ_WRITE 
GO
