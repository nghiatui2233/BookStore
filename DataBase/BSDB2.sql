USE [BSDB2]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__Order__398D8EEE]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FK__Book__PublisherI__36B12243]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FK__Book__CategoryID__35BCFE0A]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FK__Book__AuthorID__37A5467C]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [DF__Order__DateStart__34C8D9D1]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [DF__Book__DateUpdate__33D4B598]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Publisher]') AND type in (N'U'))
DROP TABLE [dbo].[Publisher]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
DROP TABLE [dbo].[Book]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Author]') AND type in (N'U'))
DROP TABLE [dbo].[Author]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/5/2022 1:02:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type in (N'U'))
DROP TABLE [dbo].[Admin]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[IDAdmin] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NULL,
	[Hometown] [nvarchar](250) NULL,
	[DateOfBirth] [smalldatetime] NULL,
	[DateOfDeath] [smalldatetime] NULL,
	[Biographic] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[BookName] [nvarchar](250) NULL,
	[Price] [money] NULL,
	[Description] [nvarchar](500) NULL,
	[Translator] [nvarchar](50) NULL,
	[Image] [varchar](50) NULL,
	[DateUpdate] [smalldatetime] NULL,
	[Inventory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[DateOfBirth] [smalldatetime] NULL,
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[DateCreate] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FBID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Contents] [nvarchar](500) NULL,
	[DateUpdate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[DateStart] [smalldatetime] NULL,
	[DateEnd] [smalldatetime] NULL,
	[OrderStatus] [bit] NULL,
	[CustomerID] [int] NOT NULL,
	[Payment] [int] NULL,
	[Tracking] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[BookID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 3/5/2022 1:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([IDAdmin], [Account], [Password], [FullName], [Status]) VALUES (1, N'admin', N'admin', N'Thanh Nhan', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (2, N'Scotland Kenneth Grahame', N'Edinburgh, Scotland, United Kingdom', NULL, NULL, N'Kenneth Grahame (/ˈɡreɪ.əm/ GRAY-əm; 8 March 1859 – 6 July 1932) was an English writer born in Edinburgh, Scotland, to a Scottish family. He is most famous for The Wind Inside the Willows (1908), one of the classics of children''s literature. He also wrote The Reluctant Dragon. Both books were later adapted for stage and film.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (17, N'Ernest Hemingway', N'Oak Park, Illinois', CAST(N'1960-07-21T00:00:00' AS SmallDateTime), CAST(N'2012-07-02T00:00:00' AS SmallDateTime), N'Ernest Hemingway is an American novelist, short story writer, journalist, and athlete. His frugality and style - which he called iceberg theory - had a strong influence on 20th-century fiction, while his simple lifestyle and public image made generations then admire.')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (2, 2, 2, 2, N'The Wind in the Willows', 2.5800, N'The story follows the adventures of four friends Toad, Mole, Rat, and Uncle Badger. Together they went through forests, rivers, lakeshores, etc. together talk about a poetic picture of life and friendship.', N'Nguyen Phuong', N'TheWindInTheWillows.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 20)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Novel')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status]) VALUES (7, N'admin', N'emty@gmail.com', N'TP.HCM', N'123456789', CAST(N'2016-10-04T00:00:00' AS SmallDateTime), N'admin', N'123456', CAST(N'2016-10-28T22:41:31.740' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (2, N'a', N'a', N'a@gmail.com', N'123456', N'đây là nội dung thứ 2', CAST(N'2016-07-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (3, N'b', N'b', N'test@gmail.com', N'1', N'nội dung 3', CAST(N'2016-07-01T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (1, CAST(N'2016-07-05T13:22:00' AS SmallDateTime), CAST(N'2016-07-08T13:22:00' AS SmallDateTime), 1, 1, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (2, CAST(N'2016-07-05T13:24:00' AS SmallDateTime), CAST(N'2016-07-08T13:24:00' AS SmallDateTime), 1, 1, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (3, CAST(N'2022-03-04T09:58:00' AS SmallDateTime), CAST(N'2022-03-07T09:58:00' AS SmallDateTime), 1, 7, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (2, 3, 1, 2.5800)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (14, 2, 2, 475000.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (16, 1, 1, 60000.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (16, 2, 3, 60000.0000)
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (2, N'Jake Eberts', N'Montréal, Canada', N'0235648549')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (3, N'Leland Hayward', N'USA', N'021356854')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT (getdate()) FOR [DateUpdate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [DateStart]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
