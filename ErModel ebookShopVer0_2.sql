USE [svqdotnet_books]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Street] [varchar](80) NOT NULL,
	[Number] [varchar](10) NULL,
	[Line-2] [varchar](80) NULL,
	[City] [varchar](80) NULL,
	[ZipCode] [varchar](10) NULL,
	[Country] [varchar](25) NULL,
	[Longitude] [decimal](12, 9) NULL,
	[Latitude] [decimal](12, 9) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Author]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[Email] [nvarchar](70) NULL,
	[Gender] [tinyint] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](70) NOT NULL,
	[PublicationDate] [datetime] NULL,
	[Language] [int] NULL,
	[NumPages] [int] NULL,
	[Format] [int] NULL,
	[ISBN] [bigint] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book_Author]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Author](
	[BookId] [bigint] NOT NULL,
	[AuthorId] [bigint] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Book_Author] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC,
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book_Category]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Category](
	[BookId] [bigint] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Book_Category] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book_Publisher]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Publisher](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookId] [bigint] NOT NULL,
	[PublisherId] [bigint] NOT NULL,
	[EditionNumber] [tinyint] NULL,
	[Year] [datetime] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Book_Publisher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book_Shop]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Shop](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookId] [bigint] NOT NULL,
	[ShopId] [bigint] NOT NULL,
	[Stock] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Book_Shop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[ParentCategory] [bigint] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[AddressId] [bigint] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[NickName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[FirstSignInDate] [datetime] NOT NULL,
	[PhotoFileName] [varchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[LastAccess] [datetime] NULL,
	[Email] [varchar](255) NULL,
	[Salt] [char](64) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Book]    Script Date: 26/07/2017 2:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Book](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[BookId] [bigint] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedByUserId] [bigint] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdateByUserId] [bigint] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedByUserId] [datetime] NULL,
 CONSTRAINT [PK_User_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Author] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([Id])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Author]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Book]
GO
ALTER TABLE [dbo].[Book_Category]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_Category] CHECK CONSTRAINT [FK_Book_Category_Book]
GO
ALTER TABLE [dbo].[Book_Category]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Book_Category] CHECK CONSTRAINT [FK_Book_Category_Category]
GO
ALTER TABLE [dbo].[Book_Publisher]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_Publisher] CHECK CONSTRAINT [FK_Book_Publisher_Book]
GO
ALTER TABLE [dbo].[Book_Publisher]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher_Publisher] FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Publisher] ([Id])
GO
ALTER TABLE [dbo].[Book_Publisher] CHECK CONSTRAINT [FK_Book_Publisher_Publisher]
GO
ALTER TABLE [dbo].[Book_Shop]  WITH CHECK ADD  CONSTRAINT [FK_Book_Shop_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_Shop] CHECK CONSTRAINT [FK_Book_Shop_Book]
GO
ALTER TABLE [dbo].[Book_Shop]  WITH CHECK ADD  CONSTRAINT [FK_Book_Shop_Shop] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shop] ([Id])
GO
ALTER TABLE [dbo].[Book_Shop] CHECK CONSTRAINT [FK_Book_Shop_Shop]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Address]
GO
ALTER TABLE [dbo].[User_Book]  WITH CHECK ADD  CONSTRAINT [FK_User_Book_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[User_Book] CHECK CONSTRAINT [FK_User_Book_Book]
GO
ALTER TABLE [dbo].[User_Book]  WITH CHECK ADD  CONSTRAINT [FK_User_Book_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[User_Book] CHECK CONSTRAINT [FK_User_Book_User]
GO
