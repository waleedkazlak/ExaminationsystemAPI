/****** Object:  Table [dbo].[City]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NOT NULL,
	[CountryID] [int] NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[NationalityArabic] [nvarchar](max) NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamDefination]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamDefination](
	[ExamDefinationID] [int] IDENTITY(1,1) NOT NULL,
	[InstitutID] [int] NULL,
	[SubjectID] [int] NULL,
	[AcademicYear] [int] NULL,
	[Day] [datetime] NULL,
	[GeneratedByUserID] [int] NULL,
	[Auto] [bit] NULL,
	[ExamDuration] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[TotalNumberOfQuestion] [int] NULL,
	[PassPercentage] [float] NULL,
	[Level_1_QuestionCount] [int] NULL,
	[Level_2_QuestionCount] [int] NULL,
	[Level_3_QuestionCount] [int] NULL,
	[Level_4_QuestionCount] [int] NULL,
	[Level_5_QuestionCount] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamDefinationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamType]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamType](
	[ExamTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExamTypeName] [nvarchar](max) NOT NULL,
	[HasCertificate] [bit] NOT NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_ExamType] PRIMARY KEY CLUSTERED 
(
	[ExamTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeID] [int] IDENTITY(1,1) NOT NULL,
	[MinLimit] [int] NOT NULL,
	[MaxLimit] [int] NOT NULL,
	[GradeName] [nvarchar](max) NOT NULL,
	[Symbole] [nvarchar](max) NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Grade] UNIQUE NONCLUSTERED 
(
	[MaxLimit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Grade_1] UNIQUE NONCLUSTERED 
(
	[MinLimit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Grade_2] UNIQUE NONCLUSTERED 
(
	[MaxLimit] ASC,
	[MinLimit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institut]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institut](
	[InstitutID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Telephone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[PostalCode] [int] NULL,
	[SignCertificateUserID] [int] NULL,
	[GeneralManagerUserID] [int] NULL,
	[ExcutiveManagerUserID] [int] NULL,
	[MaxStudentsCount] [int] NULL,
	[MaxInternetPayBack] [float] NULL,
	[ReportsHeaderPhoto] [nvarchar](500) NULL,
	[CertificateSignaturePhoto] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Institut] PRIMARY KEY CLUSTERED 
(
	[InstitutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[BootstrapClass] [varchar](500) NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuPage]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuPage](
	[MenuPageID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NOT NULL,
	[PageID] [int] NOT NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_MenuPages] PRIMARY KEY CLUSTERED 
(
	[MenuPageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [int] NULL,
	[QuestionLevelID] [int] NULL,
	[QuestionText] [nvarchar](1000) NULL,
	[QuestionPhoto] [nvarchar](500) NULL,
	[IsCheckbox] [bit] NULL,
	[IsRadioButton] [bit] NULL,
	[IsTextbox] [bit] NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_ExamQuestion] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionsAnswer]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionsAnswer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NOT NULL,
	[AnswerText] [nvarchar](max) NULL,
	[AnswerPhoto] [varchar](50) NULL,
	[IsCorrect] [bit] NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_ExamAnswer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NOT NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMenu]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenu](
	[RoleMenuID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[MenuID] [int] NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[RoleMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_RoleMenu] UNIQUE NONCLUSTERED 
(
	[MenuID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePage]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePage](
	[RolePageID] [int] IDENTITY(1,1) NOT NULL,
	[PageID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Can_View] [bit] NULL,
	[Can_Insert] [bit] NULL,
	[Can_Update] [bit] NULL,
	[Can_Delete] [bit] NULL,
	[ColumnsToHide] [nvarchar](max) NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_RolePages] PRIMARY KEY CLUSTERED 
(
	[RolePageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_RolePages] UNIQUE NONCLUSTERED 
(
	[RoleID] ASC,
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentExam]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamDefinationID] [int] NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[StudentID] [int] NULL,
	[Taken] [bit] NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_ExamHeader] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentExamAnswer]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExamAnswer](
	[ExamDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[StudentAnswerID] [int] NULL,
	[StudentAnswerText] [nvarchar](max) NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_StudentExamDetails] PRIMARY KEY CLUSTERED 
(
	[ExamDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentType]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentType](
	[StudentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Sort] [int] NULL,
	[Show] [bit] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_StudentType] PRIMARY KEY CLUSTERED 
(
	[StudentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[InstitutID] [int] NOT NULL,
	[SubjectCategoryID] [int] NULL,
	[SubjectName] [nvarchar](max) NOT NULL,
	[LevelID] [int] NOT NULL,
	[TotalHours] [int] NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectCategory]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectCategory](
	[SubjectCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCategoryName] [nvarchar](max) NOT NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_SubjectCategory] PRIMARY KEY CLUSTERED 
(
	[SubjectCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemPage]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPage](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Controller] [nvarchar](500) NULL,
	[Action] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Student_Parent]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Student_Parent](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserStatusID] [int] NULL,
	[UserTypeID] [int] NULL,
	[StudentTypeID] [int] NULL,
	[ParentID] [int] NULL,
	[Username] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[ParentAccountRequired] [bit] NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[FullNameArabic] [nvarchar](max) NULL,
	[FullName]  AS (([LastName]+', ')+[FirstName]),
	[BornPlaceArabic] [nvarchar](max) NULL,
	[GenderID] [int] NULL,
	[Email] [nvarchar](100) NOT NULL,
	[IDNumber] [nvarchar](100) NULL,
	[Phone] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[BithDate] [date] NULL,
	[Address] [nvarchar](max) NULL,
	[CountryID_Nationality] [int] NULL,
	[CountryID_Address] [int] NULL,
	[CityID_Address] [int] NULL,
	[SkypeAccount] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Town] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[RegistartionDate] [datetime] NULL,
	[DepartmentID] [int] NULL,
	[BranchID] [int] NULL,
	[Active] [bit] NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_User] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_User_1] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_UserRole] UNIQUE NONCLUSTERED 
(
	[RoleID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[UserStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_UserStatus] PRIMARY KEY CLUSTERED 
(
	[UserStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 9/10/2023 9:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [nvarchar](max) NOT NULL,
	[Show] [bit] NULL,
	[Sort] [int] NULL,
	[UserID_Add] [int] NULL,
	[Date_Add] [datetime] NULL,
	[UserID_Edit] [int] NULL,
	[Date_Edit] [datetime] NULL,
	[Date_Delete] [datetime] NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[ExamDefination] ADD  CONSTRAINT [DF_ExamDefination_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[ExamDefination] ADD  CONSTRAINT [DF_Exam_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[ExamType] ADD  CONSTRAINT [DF_ExamType_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[ExamType] ADD  CONSTRAINT [DF_ExamType_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Grade] ADD  CONSTRAINT [DF_Grade_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Grade] ADD  CONSTRAINT [DF_Grade_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Institut] ADD  CONSTRAINT [DF_Institut_MaxStudentsCount]  DEFAULT ((0)) FOR [MaxStudentsCount]
GO
ALTER TABLE [dbo].[Institut] ADD  CONSTRAINT [DF_Institut_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Institut] ADD  CONSTRAINT [DF_Institut_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[MenuPage] ADD  CONSTRAINT [DF_MenuPage_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[MenuPage] ADD  CONSTRAINT [DF_MenuPages_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_ExamQuestion_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[QuestionsAnswer] ADD  CONSTRAINT [DF_Answers_IsCorrect]  DEFAULT ((0)) FOR [IsCorrect]
GO
ALTER TABLE [dbo].[QuestionsAnswer] ADD  CONSTRAINT [DF_QuestionsAnswer_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[QuestionsAnswer] ADD  CONSTRAINT [DF_Answers_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[RoleMenu] ADD  CONSTRAINT [DF_RoleMenu_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[RoleMenu] ADD  CONSTRAINT [DF_RoleMenu_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[RolePage] ADD  CONSTRAINT [DF_RolePages_Can_View]  DEFAULT ((0)) FOR [Can_View]
GO
ALTER TABLE [dbo].[RolePage] ADD  CONSTRAINT [DF_RolePages_Can_Insert]  DEFAULT ((0)) FOR [Can_Insert]
GO
ALTER TABLE [dbo].[RolePage] ADD  CONSTRAINT [DF_RolePages_Can_Update]  DEFAULT ((0)) FOR [Can_Update]
GO
ALTER TABLE [dbo].[RolePage] ADD  CONSTRAINT [DF_RolePages_Can_Delete]  DEFAULT ((0)) FOR [Can_Delete]
GO
ALTER TABLE [dbo].[RolePage] ADD  CONSTRAINT [DF_RolePage_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[RolePage] ADD  CONSTRAINT [DF_RolePages_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[StudentExam] ADD  CONSTRAINT [DF_StudentExam_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[StudentExam] ADD  CONSTRAINT [DF_StudentExamHeader_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[StudentExamAnswer] ADD  CONSTRAINT [DF_StudentExamAnswer_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[StudentExamAnswer] ADD  CONSTRAINT [DF_StudentExamDetails_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[StudentType] ADD  CONSTRAINT [DF_StudentType_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[StudentType] ADD  CONSTRAINT [DF_StudentType_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[Subject] ADD  CONSTRAINT [DF_Subject_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[Subject] ADD  CONSTRAINT [DF_Subject_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[SubjectCategory] ADD  CONSTRAINT [DF_SubjectCategory_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[SubjectCategory] ADD  CONSTRAINT [DF_SubjectCategory_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[SystemPage] ADD  CONSTRAINT [DF_SystemPage_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[SystemPage] ADD  CONSTRAINT [DF_SystemPages_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[User_Student_Parent] ADD  CONSTRAINT [DF_User_Student_Parent_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[User_Student_Parent] ADD  CONSTRAINT [DF_User_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[UserStatus] ADD  CONSTRAINT [DF_UserStatus_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[UserStatus] ADD  CONSTRAINT [DF_UserStatus_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_UserType_Show]  DEFAULT ((1)) FOR [Show]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_UserType_Date_Add]  DEFAULT (getdate()) FOR [Date_Add]
GO
ALTER TABLE [dbo].[ExamDefination]  WITH CHECK ADD  CONSTRAINT [FK_ExamSetting_ExamType] FOREIGN KEY([AcademicYear])
REFERENCES [dbo].[ExamType] ([ExamTypeID])
GO
ALTER TABLE [dbo].[ExamDefination] CHECK CONSTRAINT [FK_ExamSetting_ExamType]
GO
ALTER TABLE [dbo].[ExamDefination]  WITH CHECK ADD  CONSTRAINT [FK_ExamSetting_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[ExamDefination] CHECK CONSTRAINT [FK_ExamSetting_Subject]
GO
ALTER TABLE [dbo].[ExamDefination]  WITH CHECK ADD  CONSTRAINT [FK_ExamSetting_User] FOREIGN KEY([GeneratedByUserID])
REFERENCES [dbo].[User_Student_Parent] ([UserID])
GO
ALTER TABLE [dbo].[ExamDefination] CHECK CONSTRAINT [FK_ExamSetting_User]
GO
ALTER TABLE [dbo].[MenuPage]  WITH CHECK ADD  CONSTRAINT [FK_MenuPages_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
GO
ALTER TABLE [dbo].[MenuPage] CHECK CONSTRAINT [FK_MenuPages_Menu]
GO
ALTER TABLE [dbo].[MenuPage]  WITH CHECK ADD  CONSTRAINT [FK_MenuPages_Pages] FOREIGN KEY([PageID])
REFERENCES [dbo].[SystemPage] ([PageID])
GO
ALTER TABLE [dbo].[MenuPage] CHECK CONSTRAINT [FK_MenuPages_Pages]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestion_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_ExamQuestion_Subject]
GO
ALTER TABLE [dbo].[RoleMenu]  WITH CHECK ADD  CONSTRAINT [FK_RoleMenu_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
GO
ALTER TABLE [dbo].[RoleMenu] CHECK CONSTRAINT [FK_RoleMenu_Menu]
GO
ALTER TABLE [dbo].[RoleMenu]  WITH CHECK ADD  CONSTRAINT [FK_RoleMenu_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[RoleMenu] CHECK CONSTRAINT [FK_RoleMenu_Role]
GO
ALTER TABLE [dbo].[RolePage]  WITH CHECK ADD  CONSTRAINT [FK_RolePages_Pages] FOREIGN KEY([PageID])
REFERENCES [dbo].[SystemPage] ([PageID])
GO
ALTER TABLE [dbo].[RolePage] CHECK CONSTRAINT [FK_RolePages_Pages]
GO
ALTER TABLE [dbo].[RolePage]  WITH CHECK ADD  CONSTRAINT [FK_RolePages_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[RolePage] CHECK CONSTRAINT [FK_RolePages_Role]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_User] FOREIGN KEY([StudentID])
REFERENCES [dbo].[User_Student_Parent] ([UserID])
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_Exam_User]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_StudentExamHeader_Exam] FOREIGN KEY([ExamDefinationID])
REFERENCES [dbo].[ExamDefination] ([ExamDefinationID])
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_StudentExamHeader_Exam]
GO
ALTER TABLE [dbo].[StudentExamAnswer]  WITH CHECK ADD  CONSTRAINT [FK_StudentExamDetails_ExamAnswer] FOREIGN KEY([StudentAnswerID])
REFERENCES [dbo].[QuestionsAnswer] ([AnswerID])
GO
ALTER TABLE [dbo].[StudentExamAnswer] CHECK CONSTRAINT [FK_StudentExamDetails_ExamAnswer]
GO
ALTER TABLE [dbo].[StudentExamAnswer]  WITH CHECK ADD  CONSTRAINT [FK_StudentExamDetails_StudentExamHeader] FOREIGN KEY([ExamID])
REFERENCES [dbo].[StudentExam] ([ExamID])
GO
ALTER TABLE [dbo].[StudentExamAnswer] CHECK CONSTRAINT [FK_StudentExamDetails_StudentExamHeader]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_SubjectCategory] FOREIGN KEY([SubjectCategoryID])
REFERENCES [dbo].[SubjectCategory] ([SubjectCategoryID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_SubjectCategory]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_SubjectCategory] FOREIGN KEY([SubjectCategoryID])
REFERENCES [dbo].[SubjectCategory] ([SubjectCategoryID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subjects_SubjectCategory]
GO
ALTER TABLE [dbo].[User_Student_Parent]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[User_Student_Parent] CHECK CONSTRAINT [FK_User_UserType]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used in Certificate table certificateon field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamDefination', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = female
1 = male' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User_Student_Parent', @level2type=N'COLUMN',@level2name=N'GenderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Put in here CountryID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User_Student_Parent', @level2type=N'COLUMN',@level2name=N'CountryID_Nationality'
GO
