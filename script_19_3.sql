USE [master]
GO
/****** Object:  Database [ProjectPRN231]    Script Date: 3/19/2024 3:14:48 PM ******/
DROP DATABASE [ProjectPRN231]
CREATE DATABASE [ProjectPRN231]
 
USE [ProjectPRN231]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/19/2024 3:14:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Status] [int] NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apply]    Script Date: 3/19/2024 3:14:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apply](
	[ApplyId] [int] IDENTITY(1,1) NOT NULL,
	[CvId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
 CONSTRAINT [PK_Apply] PRIMARY KEY CLUSTERED 
(
	[ApplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CV]    Script Date: 3/19/2024 3:14:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[CvId] [int] IDENTITY(1,1) NOT NULL,
	[CvName] [nvarchar](max) NOT NULL,
	[CvLink] [varchar](max) NOT NULL,
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_CV] PRIMARY KEY CLUSTERED 
(
	[CvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 3/19/2024 3:14:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](200) NOT NULL,
	[JobDesc] [nvarchar](max) NOT NULL,
	[JobRequire] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Salary] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountId], [Username], [Password], [Name], [Address], [Email], [Phone], [Status], [Role]) VALUES (1, N'string', N'string', N'string', N'string', N'string@gmail.com', N'01234567', 1, N'User')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [Name], [Address], [Email], [Phone], [Status], [Role]) VALUES (2, N'trinhminh', N'trinhminh', N'trinhminh', N'trinhminh', N'trinhminh@gmail.com', N'01234567', 1, N'1')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [Name], [Address], [Email], [Phone], [Status], [Role]) VALUES (3, N'trinhminh123', N'trinhminh', N'trinhminh', N'trinhminh', N'trinhminh2907@gmail.com', N'01234567', 1, N'Admin')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Apply] ON 

INSERT [dbo].[Apply] ([ApplyId], [CvId], [JobId]) VALUES (1, 1, 1)
INSERT [dbo].[Apply] ([ApplyId], [CvId], [JobId]) VALUES (2, 2, 1)
INSERT [dbo].[Apply] ([ApplyId], [CvId], [JobId]) VALUES (3, 1, 2)
SET IDENTITY_INSERT [dbo].[Apply] OFF
GO
SET IDENTITY_INSERT [dbo].[CV] ON 

INSERT [dbo].[CV] ([CvId], [CvName], [CvLink], [AccountId]) VALUES (1, N'SampleTestSWE_Revised.pdf', N'D:\prn231-project\BE\PRN231Project\Uploads\aee2782f-dfa2-434c-b242-c8dd0f25a3b7.pdf', 1)
INSERT [dbo].[CV] ([CvId], [CvName], [CvLink], [AccountId]) VALUES (2, N'TRINH_HAI_LONG_04-01-2024.pdf', N'D:\prn231-project\BE\PRN231Project\Uploads\67c02be4-ccce-4a5a-b034-d5a7609caca5.pdf', 2)
SET IDENTITY_INSERT [dbo].[CV] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([JobId], [JobName], [JobDesc], [JobRequire], [Address], [Salary], [StartDate], [EndDate],AccountId) VALUES (1, N'string', N'string', N'string', N'string', N'string', CAST(N'2024-03-19' AS Date), CAST(N'2024-03-19' AS Date),1)
INSERT [dbo].[Jobs] ([JobId], [JobName], [JobDesc], [JobRequire], [Address], [Salary], [StartDate], [EndDate],AccountId) VALUES (2, N'string', N'string', N'string', N'string', N'200000', CAST(N'2024-03-19' AS Date), CAST(N'2024-03-19' AS Date),2)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Account_Jobs] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Account_Jobs]
GO
ALTER TABLE [dbo].[Apply]  WITH CHECK ADD  CONSTRAINT [FK_Apply_CV] FOREIGN KEY([CvId])
REFERENCES [dbo].[CV] ([CvId])
GO
ALTER TABLE [dbo].[Apply] CHECK CONSTRAINT [FK_Apply_CV]
GO
ALTER TABLE [dbo].[Apply]  WITH CHECK ADD  CONSTRAINT [FK_Apply_Jobs] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([JobId])
GO
ALTER TABLE [dbo].[Apply] CHECK CONSTRAINT [FK_Apply_Jobs]
GO
ALTER TABLE [dbo].[CV]  WITH CHECK ADD  CONSTRAINT [FK_CV_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[CV] CHECK CONSTRAINT [FK_CV_Account]
GO
USE [master]
GO
ALTER DATABASE [ProjectPRN231] SET  READ_WRITE 
GO
