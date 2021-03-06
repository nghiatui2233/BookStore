USE [BSDB2]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[Author]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 3/9/2022 9:25:39 AM ******/
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
	[ConfirmPassword] [varchar](50) NOT NULL,
	[DateCreate] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/9/2022 9:25:39 AM ******/
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
/****** Object:  Table [dbo].[Publisher]    Script Date: 3/9/2022 9:25:39 AM ******/
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

INSERT [dbo].[Admin] ([IDAdmin], [Account], [Password], [FullName], [Status]) VALUES (1, N'admin', N'admin@123', N'Pham Huu Nghia', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (1, N'Kenneth Grahame', N'Edinburgh, Scotland, United Kingdom', CAST(N'1912-12-03T00:00:00' AS SmallDateTime), CAST(N'1998-03-07T00:00:00' AS SmallDateTime), N'Kenneth Grahame is an English writer born in Edinburgh, Scotland. He is most famous for The Wind in the Willows (1908), one of the classics of children''s literature, as well as The Reluctant Dragon. Both books were later adapted for the stage and film, of which A. A. Milne''s Toad of Toad Hall, based in part on The Wind in the Willows, was the first.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (2, N'Ray Bradbury', N'Waukegan, Illinois,', CAST(N'1920-08-22T00:00:00' AS SmallDateTime), CAST(N'2012-06-05T00:00:00' AS SmallDateTime), N'Ray Bradbury Douglas (August 22, 1920 – June 5, 2012)[4] was an American writer of horror, science fiction, and mystery novels. Best known for his novel 451 degrees Fahrenheit (Fahrenheit 451, 1953) and his collection of sci-fi stories such as The Martian Chronicles (1950) and The Illustrated Man (The Illustrated Man, 1951), Ray Bradbury was one of the few. America''s most famous writers of the 20th and 21st centuries. Many of his works have been adapted into films and television shows.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (3, N'Joseph Heller', N'American ', CAST(N'1923-05-01T00:00:00' AS SmallDateTime), CAST(N'1999-12-10T00:00:00' AS SmallDateTime), N'Joseph Heller was an American author of novels, short stories, plays, and screenplays. His best-known work is the 1961 novel Catch-22, a satire on war and bureaucracy, whose title has become a synonym for an absurd or contradictory choice.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (6, N'Mark Twain', N'USA', CAST(N'1900-11-30T00:00:00' AS SmallDateTime), CAST(N'1975-04-21T00:00:00' AS SmallDateTime), N'Samuel Langhorne Clemens (better known by his pen name Mark Twain) is an American humor writer, novelist, and public speaker. He was born on the same day that Halley''s comet appeared in 1835 and died on the same day that the next comet appeared, in 1910.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (7, N'Stephen Wiacek', N'American ', CAST(N'1923-03-21T00:00:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (8, N'Mark Millar', N'American ', CAST(N'1969-10-24T00:00:00' AS SmallDateTime), NULL, N'Mark Millar is a Scottish comic book writer, known for his work on The Authority, Swamp Thing, the Ultimates, Marvel Knights Spider-Man, Ultimate Fantastic Four, Civil War, Kingsman: The Secret Service, Wanted, Chrononauts, Superior, and Kick-Ass, the latter seven of which have been or are planned to be, adapted into feature films.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (9, N'Kishimoto Masashi', N'Japan', CAST(N'1974-11-08T00:00:00' AS SmallDateTime), NULL, N'Kishimoto Masashi is a manga artist known through the world-famous manga series Naruto. Masashi''s twin brother, Kishimoto Seishi, is also a manga artist and creator of 666 Satan and Blazer Drive.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (10, N'Stephen King', N'American ', CAST(N'1947-09-21T00:00:00' AS SmallDateTime), NULL, N'Stephen King is an American writer of the horror or fantasy genre that is widely acclaimed around the world, especially for his motif of transforming ordinary stressful situations into terrifying phenomena. King''s horror stories and varied writing have helped critics accept the horror fantasy genre as a part of 20th-century literature. By the end of 2006, the total number of books he had sold was approx. 350 million copies.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (11, N'James Patterson', N'Newburgh, American ', CAST(N'1947-03-22T00:00:00' AS SmallDateTime), NULL, N'In more than 30 years as a professional writer, Patterson has written nearly 70 novels including: "Lawyer and Defendant", "Honeymoon", "Red Red"….He has stood in the same position 19 times for 19 times. first on the New York Times bestseller list.')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (1, 1, 1, 1, N'The Wind in the Willows', 2.5800, N'For more than a century, The Wind in the Willows and its endearing protagonists--Mole, Mr. Toad, Badger, and Ratty--have enchanted children of all ages. Whether the four friends are setting forth on an exciting adventure, engaging in a comic caper, or simply relaxing by the River Thames, their stories are among the most charming in all English literature.', N'Nguyen Phuong', N'TheWindInTheWillows.jpg', CAST(N'2022-03-01T00:00:00' AS SmallDateTime), 50)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (2, 1, 2, 2, N'Fahrenheit 451', 3.5000, N'Fahrenheit 451 is a novel by famous writer Ray Bradbury Douglas. He specializes in American horror, science fiction, and mystery works. This novel was written in 1953, set in the 23-24 century in a future American city. The lesson to be drawn from this classic is that the dangers of American censorship and government control are becoming increasingly serious.', N'Hung Dung', N'451F.jpg', CAST(N'2022-03-01T00:00:00' AS SmallDateTime), 20)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (3, 1, 3, 3, N'Catch-22', 10.0000, N'Set in the final months of World War II, this is the story of a bombardier soldier named Yossarian who is frantic and angry because thousands of people he has never met are trying to kill him. His real problem is not the enemy - it is his own army that continues to increase the number of missions the men must fly to fulfill their duties.', N'Ngoc Anh', N'Catch-22.jpg', CAST(N'2022-03-01T00:00:00' AS SmallDateTime), 30)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (4, 1, 4, 6, N'The Adventures of Huckleberry Finn', 4.9900, N'"You don''t know about me, otherwise you would have read a book called The Adventures of Tom Sawyer, but that doesn''t matter. That book was made by Mr. Mark Twain, and he told the truth, mostly. There were things he stretched on, but mostly he told the truth.” With these words, Huckleberry Finn draws us into the story that forever changed American literature."', N'Xuan Mai', N'The Adventures of Huckleberry Finn.jpg', CAST(N'2022-03-01T00:00:00' AS SmallDateTime), 15)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (5, 2, 5, 7, N'Marvel Encyclopedia', 9.9900, N'a book that mankind has been hungering for, a book that is-now and forever-a shining beacon of wonder, a titanic tribute to talent unleashed', N'Phi Yen', N'Marvel Encyclopedia.jpg', CAST(N'2019-04-04T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (6, 2, 5, 8, N'Civil War', 4.8900, N'Civil War', N'Xuan Mai', N'Civil War.jpg', CAST(N'2007-08-24T00:00:00' AS SmallDateTime), 25)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (7, 3, 6, 9, N'Naruto', 10.0000, N'The story is based on the incident that happened twelve years ago, the Nine-Tailed Fox attacked Konoha. With its enormous amount of power, it could easily cause a tsunami to rise up and level a mountain with just one of its nine tails, it caused extreme chaos and killed many people, until humans Konoha''s leader - the Fourth Hokage (Namikaze Minato) sacrificed himself to seal the beast inside his son - Naruto when he was just born.', N'Xuan Mai', N'Naruto.jpg', CAST(N'2021-04-18T00:00:00' AS SmallDateTime), 30)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (8, 4, 7, 10, N'IT', 4.9900, N'''They float...and when you''re here with me, you''ll float too.'' Derry, Maine is just an ordinary town: mostly familiar, good order, a good place to live. It''s a group of kids who see - and feel - what makes Derry so horribly different. In the sewers, in the sewers, IT lurks, taking the form of every nightmare, everyone''s deepest terror. Sometimes it comes in the form of an evil clown named Pennywise and sometimes IT reaches out, captures, rips kills. . .', N'Xuan Mai', N'IT.jpg', CAST(N'2010-03-10T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (9, 4, 8, 10, N'The Bachman Books', 5.4900, N'For years, readers wrote asking if Richard Bachman was really world-bestselling Stephen King writing under another name. Now the secret is out - and so, brought together in one volume, are these three spellbinding stories of future shock and suspense.
The Long Walk: A chilling look at the ultra-conservative America of the future where a grueling 450-mile marathon is the ultimate sports competition.
Roadwork: An immovable man refuses to surrender to the irresistible force of progress.', N'Ngoc Anh', N'The Bachman Books.jpg', CAST(N'2001-06-22T00:00:00' AS SmallDateTime), 32)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (10, 4, 7, 11, N'Zoo ', 2.5800, N'Jackson Oz, a young biologist, watches the escalating events with an increasing sense of dread. When he witnesses a coordinated lion ambush in Africa, the enormity of the impending violence becomes terrifyingly clear.
With the help of ecologist Chloe Tousignant, Oz races to warn world leaders before it''s too late. The attacks are growing in ferocity, cunning, and planning, and soon there will be no place left for humans to hide.', N'Hung Dung', N'Zoo.jpg', CAST(N'2012-09-27T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (11, 4, 7, 3, N'Goth', 12.0000, N'Morino is the strangest girl in school—how could she not be, given her obsession with brutal murders? And there are plenty of murders to grow obsessed with, as the town in which she lives is a magnet for serial killers. She and her schoolmate will go to any length to investigate the murders, even putting their own bodies on the line. And they don’t want to stop the killers—Morino and her friend simply want to understand them.', N'Nguyen Phuong', N'GOTH.jpg', CAST(N'2015-08-18T00:00:00' AS SmallDateTime), 40)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Novel')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Manga')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Manga Anime')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Horror')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (1, N'Huu Nghia', N'Pham', N'nghiatui223355@gmail.com', N'021352498', N'Test Contact', CAST(N'2022-03-07T08:50:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (1, CAST(N'2022-03-07T10:25:00' AS SmallDateTime), CAST(N'2022-03-10T10:25:00' AS SmallDateTime), 1, 7, 1, NULL)
INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (2, CAST(N'2022-03-07T14:20:00' AS SmallDateTime), CAST(N'2022-03-10T14:20:00' AS SmallDateTime), 1, 8, 1, NULL)
INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (3, CAST(N'2022-03-07T14:23:00' AS SmallDateTime), CAST(N'2022-03-10T14:23:00' AS SmallDateTime), 1, 9, 1, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (2, 3, 1, 3.5000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (4, 2, 1, 4.9900)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (6, 1, 2, 4.8900)
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (1, N'Jake Eberts', N'Montréal, Canada', N'0236584965')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (2, N'Lewis M. Allen', N' Berryville, Virginia', N'0236584965')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (3, N'Peter Tägtgren', N'France', N'125498564')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (4, N'Samuel Goldwyn Jr.', N'USA', N'6364285495')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (5, N'Marvel', N'America', N'458216589')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (6, N'Shueisha', N'Japan', N'658254952')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (7, N'James Wan', N'America', N'36589447')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (8, N' Richard Bachman', N'USA', N'6582349')
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
