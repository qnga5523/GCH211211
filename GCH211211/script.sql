USE [asm-aspnet]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15/12/2023 12:24:21 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206152054_intialCreate', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206171833_[Order]', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231207063710_intialCreate', N'8.0.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AD', N'Admin', N'Admin', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0e0628db-c898-48c7-8f0c-86cd8405c13e', N'AD')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0e0628db-c898-48c7-8f0c-86cd8405c13e', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEI4bmNRtb9YbN87ycIYVUS/B0G4SCI+D7oFjbXhlEfDstviJx90q5vpLIcoTpfQlCQ==', N'NDDQY4M5RESK5M4E53NCMBEVYMC2XXDW', N'5f25f1d9-8790-49c5-bc01-5ebe718a1d70', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'35cbf4ad-c1dd-45cf-ab1a-2c9585373fad', N'mod@gmail.com', N'MOD@GMAIL.COM', N'mod@gmail.com', N'MOD@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELBvJNn4/Wmj9uLL2DaghEXx3AA1rE4CcqvEAqHP7rVWZwMzel6fgc1dlT/M9Wt1mQ==', N'U2IXICQ6SAXY462OJUMPRPTAL4QR3WNZ', N'13bea2b2-6d90-410d-a763-e4621f311d50', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a323240f-10ae-44f5-a8af-a1484c516c98', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBa7UZOSioWbpk5aamvEsDSHTs7xX5yOqe6oOOhCEwTRQUjh0BCh5vCpZlYxS5esfQ==', N'J3RW3NYUERJQVSLZWU7LDN77OU4577OE', N'66940f46-512a-409d-b773-cf34edb4a0d7', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (1, N'Comics', N'A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes. Panels are often accompanied by brief descriptive prose and written narrative, usually dialog contained in word balloons emblematic of the comics art form')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (2, N'Sci-fi Movie', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (3, N'YOUNG ADULT', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (4, N'Fantasy', N'Fantasy is a genre that uses magic and other supernatural forms as a primary element of plot, theme, and/or setting. Fantasy is generally distinguished from science fiction and horror by the expectation that it steers clear of technological and macabre themes, respectively, though there is a great deal of overlap between the three (collectively known as speculative fiction or science fiction/fantasy)  In its broadest sense, fantasy comprises works by many writers, artists, filmmakers, and musicians, from ancient myths and legends to many recent works embraced by a wide audience today, including young adults, most of whom are represented by the works below.')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (5, N'Manga', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (6, N'Steins;Gate 0 Part 2 - Blu-ray/DVD', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (7, N'Domestic Girlfriend Complete Series Collection - Blu-ray', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (8, N'Noragami Aragoto Complete Season 2 Collection - Blu-ray', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (9, N'Historical Fiction', N'A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes. Panels are often accompanied by brief descriptive prose and written narrative, usually dialog contained in word balloons emblematic of the comics art form')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (10, N'MYSTERY & THRILLER', N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [ProductId], [ProductName], [Image], [Quantity], [Price], [TotalPrice]) VALUES (1, N'a323240f-10ae-44f5-a8af-a1484c516c98', 2, N'YOUNG ADULT', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 2, CAST(2819.00 AS Decimal(18, 2)), CAST(9554.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([Id], [UserId], [ProductId], [ProductName], [Image], [Quantity], [Price], [TotalPrice]) VALUES (2, N'a323240f-10ae-44f5-a8af-a1484c516c98', 1, N'Noragami Aragoto Complete Season 2 Collection - Blu-ray', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 1, CAST(3916.00 AS Decimal(18, 2)), CAST(9554.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([Id], [UserId], [ProductId], [ProductName], [Image], [Quantity], [Price], [TotalPrice]) VALUES (3, N'35cbf4ad-c1dd-45cf-ab1a-2c9585373fad', 1, N'Noragami Aragoto Complete Season 2 Collection - Blu-ray', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 4, CAST(3916.00 AS Decimal(18, 2)), CAST(24121.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([Id], [UserId], [ProductId], [ProductName], [Image], [Quantity], [Price], [TotalPrice]) VALUES (4, N'35cbf4ad-c1dd-45cf-ab1a-2c9585373fad', 2, N'YOUNG ADULT', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 3, CAST(2819.00 AS Decimal(18, 2)), CAST(24121.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([Id], [UserId], [ProductId], [ProductName], [Image], [Quantity], [Price], [TotalPrice]) VALUES (5, N'a323240f-10ae-44f5-a8af-a1484c516c98', 6, N'Domestic Girlfriend Complete Series Collection - Blu-ray', N'https://www.alltheanime.com/cdn/shop/products/domestic-girlfriend-collection-18-blu-ray_x1024.jpg?v=1675273478', 3, CAST(3916.00 AS Decimal(18, 2)), CAST(14247.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([Id], [UserId], [ProductId], [ProductName], [Image], [Quantity], [Price], [TotalPrice]) VALUES (6, N'a323240f-10ae-44f5-a8af-a1484c516c98', 3, N'Domestic Girlfriend Complete Series Collection - Blu-ray', N'https://www.alltheanime.com/cdn/shop/products/ANI0579_5CM_3DSTEELBOOK_FRONT_x1024.jpg?v=1610969691', 1, CAST(2499.00 AS Decimal(18, 2)), CAST(14247.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (1, N'Noragami Aragoto Complete Season 2 Collection - Blu-ray', CAST(3916.00 AS Decimal(18, 2)), 44, N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 6)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (2, N'YOUNG ADULT', CAST(2819.00 AS Decimal(18, 2)), 22, N'The mystery genre is a genre of fiction that follows a crime (like a murder or a disappearance) from the moment it is committed to the moment it is solved. Mystery novels are often called “whodunnits” because they turn the reader into a detective trying to figure out the who, what, when, and how of a particular crime. Most mysteries feature a detective or private eye solving a case as the central character.', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (3, N'Domestic Girlfriend Complete Series Collection - Blu-ray', CAST(2499.00 AS Decimal(18, 2)), 80, N'A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes. Panels are often accompanied by brief descriptive prose and written narrative, usually dialog contained in word balloons emblematic of the comics art form', N'https://www.alltheanime.com/cdn/shop/products/ANI0579_5CM_3DSTEELBOOK_FRONT_x1024.jpg?v=1610969691', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (4, N'A Couple of Cuckoos Season 1 Part 1 - Blu-ray', CAST(2918.00 AS Decimal(18, 2)), 55, N'Takaki and Akari became best friends after transferring into the same elementary school. However, the two are separated following their elementary school graduation. As they place their feelings for each other behind them, time simply passes by. Then one snowy day, Takaki is about to be reunited with Akari. As he sits on the train from Tokyo, his meeting time with Akari drawing ever closer, memories of the past rush through Takaki''s head.  Join Takaki on a journey into three interconnected tales of love and lost innocence that span the minutes and months of their lives.', N'https://www.alltheanime.com/cdn/shop/products/toradora-collection-12-blu-ray_x1024.jpg?v=1676455487', 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (5, N'Arifureta: From Commonplace to World’s Strongest Complete Season 2 - Blu-ray', CAST(2819.00 AS Decimal(18, 2)), 33, N'Japanese or Japanese-influenced comics and graphic novels. Usually printed in black-and-white. There are many genres inside manga, the most distinct being shojo (for girls) and shonen (for boys).', N'https://www.alltheanime.com/cdn/shop/products/steins-gate-0-part-2-combi-15-bddvd_x1024.jpg?v=1677169863', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (6, N'Domestic Girlfriend Complete Series Collection - Blu-ray', CAST(3916.00 AS Decimal(18, 2)), 33, N'A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes. Panels are often accompanied by brief descriptive prose and written narrative, usually dialog contained in word balloons emblematic of the comics art form', N'https://www.alltheanime.com/cdn/shop/products/domestic-girlfriend-collection-18-blu-ray_x1024.jpg?v=1675273478', 6)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (7, N'Toradora! - Blu-ray', CAST(2499.00 AS Decimal(18, 2)), 3, N'Takaki and Akari became best friends after transferring into the same elementary school. However, the two are separated following their elementary school graduation. As they place their feelings for each other behind them, time simply passes by. Then one snowy day, Takaki is about to be reunited with Akari. As he sits on the train from Tokyo, his meeting time with Akari drawing ever closer, memories of the past rush through Takaki''s head.  Join Takaki on a journey into three interconnected tales of love and lost innocence that span the minutes and months of their lives.', N'https://www.alltheanime.com/cdn/shop/files/81fzr93o8ZL._AC_SL1500_x1024.jpg?v=1694766063', 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Description], [Image], [CategoryId]) VALUES (8, N'Domestic Girlfriend Complete Series Collection - Blu-ray', CAST(2819.00 AS Decimal(18, 2)), 89, N'uthor Shuzo Oshimi (Flowers of Evil)  After scouring town looking for Yori, Mari is reunited with her lone friend. But now the two have to turn their attention on finding out what actually happened to Mari.  A torn photo and a trip to Tokyo Dome City reveal some deep-rooted secrets. But is anyone really prepared to face the past again?  Author Bio: Shuzo Oshimi is the best-selling author behind works such as Flowers of Evil and Happiness. His works mix in the struggles of youth along with modern fantasy themes.  What are People Saying about this Title: "Inside Mari is currently the standard for the body-swap genre." - Makoto Shinkai, Director of Your Name', N'https://www.alltheanime.com/cdn/shop/products/toradora-collection-12-blu-ray_x1024.jpg?v=1676455487', 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Order_OrderId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product_productId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
