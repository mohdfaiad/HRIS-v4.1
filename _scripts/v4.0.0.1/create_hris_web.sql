USE [master]
GO
/****** Object:  Database [HRISWeb]    Script Date: 6/09/2018 9:14:58 AM ******/
CREATE DATABASE [HRISWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRISWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DEV\MSSQL\DATA\HRISWeb.mdf' , SIZE = 279616KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRISWeb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DEV\MSSQL\DATA\HRISWeb_log.ldf' , SIZE = 202816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRISWeb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRISWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRISWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRISWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRISWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRISWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRISWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRISWeb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HRISWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRISWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRISWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRISWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRISWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRISWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRISWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRISWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRISWeb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HRISWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRISWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRISWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRISWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRISWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRISWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRISWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRISWeb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HRISWeb] SET  MULTI_USER 
GO
ALTER DATABASE [HRISWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRISWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRISWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRISWeb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HRISWeb]
GO
/****** Object:  User [kiosk]    Script Date: 6/09/2018 9:15:03 AM ******/
CREATE USER [kiosk] FOR LOGIN [kiosk] WITH DEFAULT_SCHEMA=[kiosk]
GO
/****** Object:  User [hris]    Script Date: 6/09/2018 9:15:03 AM ******/
CREATE USER [hris] FOR LOGIN [hris] WITH DEFAULT_SCHEMA=[hris]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [kiosk]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [kiosk]
GO
ALTER ROLE [db_datareader] ADD MEMBER [kiosk]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [kiosk]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [hris]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [hris]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [hris]
GO
ALTER ROLE [db_datareader] ADD MEMBER [hris]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [hris]
GO
/****** Object:  Schema [hris]    Script Date: 6/09/2018 9:15:06 AM ******/
CREATE SCHEMA [hris]
GO
/****** Object:  Schema [kiosk]    Script Date: 6/09/2018 9:15:06 AM ******/
CREATE SCHEMA [kiosk]
GO
/****** Object:  Table [dbo].[t_wsmessagestatus]    Script Date: 6/09/2018 9:15:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_wsmessagestatus](
	[messagestatus_code] [char](3) NOT NULL,
	[messagestatus_name] [varchar](25) NOT NULL,
	[messagestatus_description] [varchar](250) NULL,
 CONSTRAINT [PK_t_wsmessagestatus] PRIMARY KEY CLUSTERED 
(
	[messagestatus_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_wsmessagetype]    Script Date: 6/09/2018 9:15:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_wsmessagetype](
	[messagetype_code] [char](3) NOT NULL,
	[messagetype_name] [varchar](25) NOT NULL,
	[messagetype_description] [varchar](250) NULL,
 CONSTRAINT [PK_t_wsmessagetype] PRIMARY KEY CLUSTERED 
(
	[messagetype_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wsmessage]    Script Date: 6/09/2018 9:15:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wsmessage](
	[event_object] [char](3) NOT NULL,
	[pk_event_object] [varchar](30) NOT NULL,
	[ws_message] [varchar](max) NOT NULL,
	[ws_message_date] [datetime] NOT NULL,
	[source_location] [char](3) NOT NULL,
	[destination_location] [char](3) NOT NULL,
	[priority] [smallint] NULL,
	[messagetype_code] [char](3) NOT NULL,
	[messagestatus_code] [char](3) NOT NULL,
	[last_transaction_date] [datetime] NOT NULL CONSTRAINT [DF_wsmessage_last_transaction_date]  DEFAULT (getdate()),
 CONSTRAINT [PK_wsmessage] PRIMARY KEY CLUSTERED 
(
	[event_object] ASC,
	[pk_event_object] ASC,
	[source_location] ASC,
	[destination_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wsmessage]  WITH CHECK ADD  CONSTRAINT [FK_wsmessage_t_wsmessagestatus] FOREIGN KEY([messagestatus_code])
REFERENCES [dbo].[t_wsmessagestatus] ([messagestatus_code])
GO
ALTER TABLE [dbo].[wsmessage] CHECK CONSTRAINT [FK_wsmessage_t_wsmessagestatus]
GO
ALTER TABLE [dbo].[wsmessage]  WITH CHECK ADD  CONSTRAINT [FK_wsmessage_t_wsmessagetype] FOREIGN KEY([messagetype_code])
REFERENCES [dbo].[t_wsmessagetype] ([messagetype_code])
GO
ALTER TABLE [dbo].[wsmessage] CHECK CONSTRAINT [FK_wsmessage_t_wsmessagetype]
GO
/****** Object:  StoredProcedure [dbo].[sync_get_wsmessage]    Script Date: 6/09/2018 9:15:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sync_get_wsmessage]
	@destination_location char(3)
AS
BEGIN
	declare @event_object char(3) = NULL,
			@pk_event_object varchar(30) = NULL,
			@source_location char(3) = null
	
	-- get the latest message		
	select top 1 
		   @event_object = event_object,
		   @pk_event_object = pk_event_object,
		   @source_location = source_location
	  from wsmessage wm (nolock)
	 where rtrim(wm.destination_location) = rtrim(@destination_location)
	   and wm.messagestatus_code <> 'SYN'
  order by wm.priority desc, wm.last_transaction_date, wm.ws_message_date 
	
	-- update the latest message
	-- set the transaction date to the current date
	update wsmessage
	   set last_transaction_date = GETDATE()
	 where event_object = @event_object
	   and pk_event_object = @pk_event_object
	   and source_location = @source_location
	   and rtrim(destination_location) = rtrim(@destination_location)
	
	-- return the message		
	if isnull(@event_object,'') <> '' 
	begin
		select top 1 *
		  from wsmessage wm (nolock)
		 where event_object = @event_object
		   and pk_event_object = @pk_event_object
		   and source_location = @source_location
		   and rtrim(destination_location) = rtrim(@destination_location)
		   and wm.messagestatus_code <> 'SYN'
	end
	else
	begin
		select null as event_object
			   ,null as pk_event_object
			   ,'' as ws_message
               ,null as ws_message_date
               ,null as source_location
               ,null as destination_location
               ,null as priority
               ,null as messagetype_code
               ,null as messagestatus_code
               ,null as last_transaction_date
  	end
END


GO
/****** Object:  StoredProcedure [dbo].[sync_get_wsmessage_status]    Script Date: 6/09/2018 9:15:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sync_get_wsmessage_status] 
	@event_object char(3),
	@pk_event_object varchar(30),
	@source_location char(3),
	@destination_location char(3)
AS
BEGIN
	select isnull(messagestatus_code,'') messagestatus_code
	  from wsmessage (nolock)
	 where event_object = @event_object
	   and pk_event_object = @pk_event_object
	   and source_location = @source_location
	   and destination_location = @destination_location
	   and messagetype_code = 'CHS'
END
GO
/****** Object:  StoredProcedure [dbo].[sync_set_wsmessage_status]    Script Date: 6/09/2018 9:15:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sync_set_wsmessage_status] 
	@event_object char(3),
	@pk_event_object varchar(30),
	@messagestatus_code char(3),
	@source_location char(3),
	@destination_location char(3)
AS
BEGIN
	update wsmessage
	   set messagestatus_code = @messagestatus_code,
		   messagetype_code = 'CHS'
	 where event_object = @event_object
	   and pk_event_object = @pk_event_object
	   and source_location = @source_location
	   and destination_location = @destination_location
END

GO
USE [master]
GO
ALTER DATABASE [HRISWeb] SET  READ_WRITE 
GO
