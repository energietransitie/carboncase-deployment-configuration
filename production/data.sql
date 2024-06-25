
/** 
	Checks if the database co2 does not exists, starts seeding.
	Generated on: 29-05-2024
	First username: admin
	First user password: UM3pKGZk2Z
 **/

USE [master]
GO

:ON ERROR EXIT
IF DB_ID('co2') IS NOT NULL
	THROW 50000, 'Database exists, quitted seeding.', 1

CREATE DATABASE [co2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'co2', FILENAME = N'/var/opt/mssql/data/co2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'co2_log', FILENAME = N'/var/opt/mssql/data/co2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [co2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [co2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [co2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [co2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [co2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [co2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [co2] SET ARITHABORT OFF 
GO
ALTER DATABASE [co2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [co2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [co2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [co2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [co2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [co2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [co2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [co2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [co2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [co2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [co2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [co2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [co2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [co2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [co2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [co2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [co2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [co2] SET RECOVERY FULL 
GO
ALTER DATABASE [co2] SET  MULTI_USER 
GO
ALTER DATABASE [co2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [co2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [co2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [co2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [co2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [co2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'co2', N'ON'
GO
ALTER DATABASE [co2] SET QUERY_STORE = OFF
GO
USE [co2]
GO
/****** Object:  Schema [HangFire]    Script Date: 23-5-2024 13:35:57 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23-5-2024 13:35:57 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
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
	[FirstName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NULL,
	[AuthProvider] [int] NOT NULL,
	[ExternalId] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarbonCaseItemCategories]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarbonCaseItemCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[Required] [bit] NOT NULL,
 CONSTRAINT [PK_CarbonCaseItemCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarbonCaseItemCategoryTranslations]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarbonCaseItemCategoryTranslations](
	[Id] [uniqueidentifier] NOT NULL,
	[CarbonCaseItemCategoryId] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_CarbonCaseItemCategoryTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarbonCaseItems]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarbonCaseItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[DurationType] [int] NOT NULL,
	[Scope] [int] NOT NULL,
	[EmissionType] [int] NOT NULL,
	[UsageYear] [int] NOT NULL,
	[CategoryId] [int] NULL,
	[UsageUnit] [nvarchar](100) NOT NULL,
	[AverageFinalEnergyIntensityInkWhPerUsageUnit] [float] NOT NULL,
	[Source] [nvarchar](2000) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[Type] [int] NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[EstimatedUsage] [float] NOT NULL,
 CONSTRAINT [PK_CarbonCaseItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarbonCaseItemTranslations]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarbonCaseItemTranslations](
	[Id] [uniqueidentifier] NOT NULL,
	[CarbonCaseItemId] [int] NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[UsageUnit] [nvarchar](200) NULL,
	[LanguageCode] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarbonCaseItemTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarbonCaseUserInputs]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarbonCaseUserInputs](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](800) NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[CarbonCaseItemId] [int] NOT NULL,
	[FormFieldId] [uniqueidentifier] NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[CharacteristicId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CarbonCaseUserInputs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarbonCaseUserInputTranslations]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarbonCaseUserInputTranslations](
	[Id] [uniqueidentifier] NOT NULL,
	[CarbonCaseUserInputId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](900) NULL,
	[Description] [nvarchar](max) NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_CarbonCaseUserInputTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComparisonItems]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComparisonItems](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[Emission] [float] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_ComparisonItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComparisonItemTranslations]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComparisonItemTranslations](
	[Id] [uniqueidentifier] NOT NULL,
	[ComparisonItemId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_ComparisonItemTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DropdownFormFieldOptions]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DropdownFormFieldOptions](
	[Id] [uniqueidentifier] NOT NULL,
	[DropdownFormFieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
 CONSTRAINT [PK_DropdownFormFieldOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmissionIntensities]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmissionIntensities](
	[Id] [uniqueidentifier] NOT NULL,
	[Year] [int] NOT NULL,
	[WTTEmissionIntensity] [float] NOT NULL,
	[WTTSource] [nvarchar](2000) NULL,
	[TTWEmissionIntensity] [float] NOT NULL,
	[TTWSource] [nvarchar](2000) NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[IsAutoGenerated] [bit] NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_EmissionIntensities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormField]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormField](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[DefaultValue] [bit] NULL,
	[Multiple] [bit] NULL,
	[Min] [int] NULL,
	[Max] [int] NULL,
	[Step] [int] NULL,
	[NumberFormField_DefaultValue] [int] NULL,
	[UseSlider] [bit] NULL,
 CONSTRAINT [PK_FormField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectCharacteristics]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectCharacteristics](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[FormFieldId] [uniqueidentifier] NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[Status] [int] NOT NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_ProjectCharacteristics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectCharacteristicTranslations]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectCharacteristicTranslations](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectCharacteristicId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](2200) NOT NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_ProjectCharacteristicTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sdg]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sdg](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IconUrl] [nvarchar](1000) NULL,
	[ThumbnailUrl] [nvarchar](1000) NULL,
	[BackgroundColor] [nvarchar](15) NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_Sdg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SdgTranslations]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SdgTranslations](
	[Id] [uniqueidentifier] NOT NULL,
	[SdgId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[LanguageCode] [int] NOT NULL,
 CONSTRAINT [PK_SdgTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CX_HangFire_Counter]    Script Date: 23-5-2024 13:35:57 ******/
CREATE CLUSTERED INDEX [CX_HangFire_Counter] ON [HangFire].[Counter]
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 23-5-2024 13:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921093253_InitIdentity', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221006140023_InitSdg', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221007091241_SdgBackgroundColor', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221021115926_UserFirstLastName', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108131458_ProjectCharacteristics', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221109075115_ProjectCharacteristicsStatus', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117092601_CarbonCaseV1', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117093133_CarbonCaseV2', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117095610_CarbonCaseV3', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117110309_EmissionIntensityDt', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221206090956_CarbonCaseItemType', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221213131423_CarbonCaseItemTranslations', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221213140815_MoreTranslations', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214113512_PortedLanguageCodeToEnum', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214123641_CarbonCaseItemCategoryTranslations', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214135401_CarbonCaseItemTranslations2', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214151130_TranslationsV2', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214153906_TranslationsV3', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214214527_CharacteristicCarbonItem', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221215130631_AuthProvider', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221215133015_AuthExternalId', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221215155944_CharacteristicRemove', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221215160247_CategoryRemove', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231103123028_AddDescriptionAndImageUrl', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231107144757_CarbonCaseItemTranslationDescriptionRemoved', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231108095007_RequiredCategory', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231108124711_CategoryTranslations', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231117081845_CarbonCaseItemEstimatedUsage', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231121104532_ComparisonItem', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON 

INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'sdg.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (6, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'sdg.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (7, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'sdg.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (16, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'sdg.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (29, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'user.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (30, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'user.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (47, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'user.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (48, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'user.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (69, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'project-characteristic.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (70, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'project-characteristic.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (95, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'project-characteristic.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (110, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'project-characteristic.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (125, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (158, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (195, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (206, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (237, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'emission-intensity.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (282, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'emission-intensity.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (283, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'emission-intensity.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (308, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'emission-intensity.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (333, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item-category.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (371, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item-category.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (387, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item-category.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (444, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'carbon-case-item-category.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (445, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'comparison-item.create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (496, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'comparison-item.delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (507, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'comparison-item.update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (548, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'comparison-item.view')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (573, N'8c034f80-cecb-47ff-6f38-08dc48198766', N'co2.permission', N'management.access')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (714, N'90bd220c-d055-4bf1-6f3c-08dc48198766', N'co2.permission', N'management.access')
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8c034f80-cecb-47ff-6f38-08dc48198766', N'Administrator', N'ADMINISTRATOR', N'b79727a4-41d8-4194-a6e0-52968113a8ed')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'90bd220c-d055-4bf1-6f3c-08dc48198766', N'User', N'USER', N'52c884d5-f700-4421-b110-a284082e89e1')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'56ec154e-55ad-401c-822f-a7d134d651c8', N'8c034f80-cecb-47ff-6f38-08dc48198766')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'56ec154e-55ad-401c-822f-a7d134d651c8', N'90bd220c-d055-4bf1-6f3c-08dc48198766')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [AuthProvider], [ExternalId])
VALUES (N'56ec154e-55ad-401c-822f-a7d134d651c8', N'admin', N'admin', null, null, 1, N'ANucrg4+4mAWWDOU8Rx+pmidkAVN4i2HDIePTwKVeajIY17mdYZKXIiCXnvtfFugZw==', null, null, NULL, 0, 0, NULL, 1, 0, N'admin', NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[CarbonCaseItemCategories] ON 

INSERT [dbo].[CarbonCaseItemCategories] ([Id], [Name], [LanguageCode], [Required]) VALUES (1, N'Transport', 0, 1)
INSERT [dbo].[CarbonCaseItemCategories] ([Id], [Name], [LanguageCode], [Required]) VALUES (2, N'Hardware', 0, 1)
INSERT [dbo].[CarbonCaseItemCategories] ([Id], [Name], [LanguageCode], [Required]) VALUES (3, N'Tools/Services', 0, 1)
SET IDENTITY_INSERT [dbo].[CarbonCaseItemCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[CarbonCaseItems] ON 

INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (1, 1, N'Figma', 1, 1, 0, 2023, 3, N'personen', 0.003, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Collaboratieve webapplicatie voor interface-ontwerp.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Figma-logo.svg/1667px-Figma-logo.svg.png', 50)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (2, 1, N'GitHub', 1, 0, 0, 2023, 3, N'commits', 0.00639, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Online platform voor softwareontwikkeling en versiebeheer.', N'https://cdn-icons-png.flaticon.com/512/25/25231.png', 2)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (3, 1, N'Trein (elektrisch)', 0, 0, 0, 2023, 1, N'km', 0.00623, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer met elektrische trein van Nederlandse Spoorwegen (gemiddelde bezetting)', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDMiIGhlaWdodD0iNTMiIHZpZXdCb3g9IjAgMCA0MyA1MyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjkxNjcgMzEuNzI3MlYzNC4zNzNNMzIuMDgzNCAzMS43MjcyVjM0LjM3M00yLjk3OTI1IDIzLjc4OTdIMjEuNTAwMU0yMS41MDAxIDIzLjc4OTdINDAuMDIwOU0yMS41MDAxIDIzLjc4OTdWMTAuNTYwNU01LjYyNTA4IDUwLjI0OEwxMC45MTY3IDQyLjMxMDVNMzIuMDgzNCA0Mi4zMTA1TDM3LjM3NTEgNTAuMjQ4TTIxLjUwMDEgMTAuNTYwNUgyLjk3OTI1TTIxLjUwMDEgMTAuNTYwNUg0MC4wMjA5TTIuOTc5MjUgMTAuNTYwNVYzNy4wMTg5QzIuOTc5MjUgMzkuOTQxNSA1LjM0ODQxIDQyLjMxMDUgOC4yNzA5MSA0Mi4zMTA1SDM0LjcyOTJDMzcuNjUxOCA0Mi4zMTA1IDQwLjAyMDkgMzkuOTQxNSA0MC4wMjA5IDM3LjAxODlWMTAuNTYwNU0yLjk3OTI1IDEwLjU2MDVDMi45NzkyNSA2LjE3NjggNi41MzMgMi42MjMwNSAxMC45MTY3IDIuNjIzMDVIMzIuMDgzNEMzNi40NjczIDIuNjIzMDUgNDAuMDIwOSA2LjE3NjggNDAuMDIwOSAxMC41NjA1IiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=', 55)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (4, 1, N'Jira', 0, 0, 0, 2023, 3, N'uur', 0.003, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Product voor het volgen van problemen, ontwikkeld door Atlassian.', N'https://seeklogo.com/images/J/jira-logo-C71F8C0324-seeklogo.com.png', 89)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (5, 1, N'Microsoft Outlook', 0, 0, 0, 2023, 3, N'e-mails', 3E-09, N'https://wndyr.com/blog/popular/if-the-world-stopped-using-email-how-much-electricity-would-we-save', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'E-mailclient gemaakt door Microsoft.Onderdeel van het Microsoft Office pakket.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Microsoft_Office_Outlook_%282018%E2%80%93present%29.svg/1200px-Microsoft_Office_Outlook_%282018%E2%80%93present%29.svg.png', 6)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (6, 1, N'Linear', 0, 0, 0, 2023, 3, N'uur', 0.003, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Stroomlijn problemen, sprints en productroadmaps.', N'https://asset.brandfetch.io/iduDa181eM/idYYbqOlKi.png', 2)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (7, 1, N'Discord', 0, 0, 0, 2023, 3, N'uur', 0.0162, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Online communicatieplatform voor chats, spraak- en videooproepen.', N'https://assets-global.website-files.com/6257adef93867e50d84d30e2/636e0a6a49cf127bf92de1e2_icon_clyde_blurple_RGB.png', 34)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (8, 1, N'Microsoft Teams', 0, 0, 0, 2023, 3, N'uur', 0.0162, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Communicatie- en samenwerkingsplatform van Microsoft.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Microsoft_Office_Teams_%282018%E2%80%93present%29.svg/1101px-Microsoft_Office_Teams_%282018%E2%80%93present%29.svg.png', 7)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (9, 1, N'OneDrive', 0, 0, 0, 2023, 3, N'GB', 0.03, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Bestandsopslag en beheer gemaakt door Microsoft.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Microsoft_Office_OneDrive_%282019%E2%80%93present%29.svg/2560px-Microsoft_Office_OneDrive_%282019%E2%80%93present%29.svg.png', 23)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (10, 1, N'GitLab', 0, 0, 0, 2023, 3, N'commits', 0.00639, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Online platform voor softwareontwikkeling en versiebeheer.', N'https://static-00.iconduck.com/assets.00/gitlab-logo-illustration-2048x1886-rjkgbutf.png', 1)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (11, 1, N'Slack', 0, 0, 0, 2023, 3, N'uur', 0.0162, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Cloud-gebaseerde groupware dat als communicatiehulpmiddel ingezet wordt. ', N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Slack_icon_2019.svg/2048px-Slack_icon_2019.svg.png', 4)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (12, 1, N'Gmail', 0, 0, 0, 2023, 3, N'e-mails', 3E-09, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'E-mailservice van Google.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Gmail_icon_%282020%29.svg/800px-Gmail_icon_%282020%29.svg.png', 42)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (13, 1, N'Cypress Cloud', 0, 0, 0, 2023, 3, N'runs', 0.3, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Frontend-testtool voor webapplicaties.', N'https://asset.brandfetch.io/idIq_kF0rb/idv3zwmSiY.jpeg', 1)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (14, 1, N'NPM', 0, 0, 0, 2023, 3, N'packages', 0.0004, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Pakketbeheerder voor de programmeertaal JavaScript. ', N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Npm-logo.svg/2560px-Npm-logo.svg.png', 6)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (15, 1, N'StackOverflow', 0, 0, 0, 2023, 3, N'uur', 0.03, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Website met vragen en antwoorden over een breed scala van programmeeronderwerpen.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Stack_Overflow_icon.svg/768px-Stack_Overflow_icon.svg.png', 5)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (16, 1, N'GitHub Copilot', 0, 0, 0, 2023, 3, N'uur', 0.003, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Cloudgebaseerde tool voor kunstmatige intelligentie die is ontwikkeld door GitHub en OpenAI.', N'https://miro.medium.com/v2/resize:fit:700/0*oRRpMJ9XqkRnYLhW.png', 46)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (17, 1, N'ChatGPT', 0, 0, 0, 2023, 3, N'prompts', 0.005, N'https://lifestyle.livemint.com/news/big-story/ai-carbon-footprint-openai-chatgpt-water-google-microsoft-111697802189371.html', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Prototype van een chatbot met kunstmatige intelligentie, ontwikkeld door OpenAI', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/ChatGPT_logo.svg/1200px-ChatGPT_logo.svg.png', 33)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (18, 1, N'Bitbucket', 0, 0, 0, 2023, 3, N'commits', 0.00639, N'', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Op Git gebaseerde broncoderepository-hostingservice die eigendom is van Atlassian.', N'https://global-uploads.webflow.com/6203daf47137054c031fa0e6/64c040b32724c7a5099b37c9_bitbucket.svg', 23)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (19, 1, N'Draw.io', 0, 0, 0, 2023, 3, N'uur', 3E-06, N'Based on guessing', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Platformonafhankelijke software voor het tekenen van grafieke', N'https://store-images.s-microsoft.com/image/apps.1409.13851527096222888.2b60149a-04a5-4578-a6b2-d7b7377332d5.c22d8e97-4d44-4304-9bd2-55f9d29c0f82', 423)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (20, 1, N'Desktop', 0, 0, 0, 2023, 2, N'dag', 1.477, N'Based on desktop 65W on @ 8254 h/y, 5W sleep @ 506 h/y', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Gebruik van desktop PC', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTMiIGhlaWdodD0iNTMiIHZpZXdCb3g9IjAgMCA1MyA1MyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuNjg3NSA3LjkxNDcxQzIuNjg3NSA0Ljk5MjIxIDUuMDU2NjYgMi42MjMwNSA3Ljk3OTE3IDIuNjIzMDVINDUuMDIwOEM0Ny45NDMzIDIuNjIzMDUgNTAuMzEyNSA0Ljk5MjIxIDUwLjMxMjUgNy45MTQ3MVYzNC4zNzNDNTAuMzEyNSAzNy4yOTU2IDQ3Ljk0MzMgMzkuNjY0NyA0NS4wMjA4IDM5LjY2NDdINy45NzkxN0M1LjA1NjY2IDM5LjY2NDcgMi42ODc1IDM3LjI5NTYgMi42ODc1IDM0LjM3M1Y3LjkxNDcxWiIgZmlsbD0id2hpdGUiLz4KPHBhdGggZD0iTTIwLjU0NjkgMzkuNjY0N0wxOC41NjI1IDQ3LjYwMjJMMTUuOTE2NyA1MC4yNDhIMzcuMDgzM0wzNC40Mzc1IDQ3LjYwMjJMMzIuNDUzMSAzOS42NjQ3TTIuNjg3NSAyOS4wODE0SDUwLjMxMjVNNy45NzkxNyAzOS42NjQ3SDQ1LjAyMDhDNDcuOTQzMyAzOS42NjQ3IDUwLjMxMjUgMzcuMjk1NiA1MC4zMTI1IDM0LjM3M1Y3LjkxNDcxQzUwLjMxMjUgNC45OTIyMSA0Ny45NDMzIDIuNjIzMDUgNDUuMDIwOCAyLjYyMzA1SDcuOTc5MTdDNS4wNTY2NiAyLjYyMzA1IDIuNjg3NSA0Ljk5MjIxIDIuNjg3NSA3LjkxNDcxVjM0LjM3M0MyLjY4NzUgMzcuMjk1NiA1LjA1NjY2IDM5LjY2NDcgNy45NzkxNyAzOS42NjQ3WiIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K', 1)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (21, 1, N'Laptop', 0, 0, 0, 2023, 2, N'dag', 0.528, N'Based on laptop 35W on @  5204 h/y, 3W sleep @ 3556 h/y', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Laptopgebruik', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTciIGhlaWdodD0iNDciIHZpZXdCb3g9IjAgMCA1NyA0NyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUyLjMxMjYgMzQuMDE4NlYxMC43MzUyQzUyLjMxMjYgNy43NzE2MiA1Mi4zMTI2IDYuMjg5OCA1MS43MzU4IDUuMTU3ODZDNTEuMjI4NiA0LjE2MjE1IDUwLjQxOSAzLjM1MjYzIDQ5LjQyMzMgMi44NDUzMkM0OC4yOTE0IDIuMjY4NTUgNDYuODA5NSAyLjI2ODU1IDQzLjg0NTkgMi4yNjg1NUgxMy4xNTQyQzEwLjE5MDYgMi4yNjg1NSA4LjcwODgyIDIuMjY4NTUgNy41NzY4OCAyLjg0NTMyQzYuNTgxMTggMy4zNTI2MyA1Ljc3MTY2IDQuMTYyMTUgNS4yNjQzNSA1LjE1Nzg2QzQuNjg3NTggNi4yODk4IDQuNjg3NTggNy43NzE2MiA0LjY4NzU4IDEwLjczNTJWMzQuMDE4Nk05LjA5NzMxIDQ0LjYwMTlINDcuOTAyOEM0OS41NDMyIDQ0LjYwMTkgNTAuMzYzNCA0NC42MDE5IDUxLjAzNjIgNDQuNDIxN0M1Mi44NjI0IDQzLjkzMjIgNTQuMjg4OCA0Mi41MDU5IDU0Ljc3ODIgNDAuNjc5N0M1NC45NTg0IDQwLjAwNjkgNTQuOTU4NCAzOS4xODY3IDU0Ljk1ODQgMzcuNTQ2MkM1NC45NTg0IDM2LjcyNiA1NC45NTg0IDM2LjMxNTkgNTQuODY4MiAzNS45Nzk2QzU0LjYyMzcgMzUuMDY2NiA1My45MTA0IDM0LjM1MzMgNTIuOTk3MyAzNC4xMDg4QzUyLjY2MSAzNC4wMTg2IDUyLjI1MDkgMzQuMDE4NiA1MS40MzA3IDM0LjAxODZINS41Njk1MkM0Ljc0OTMzIDM0LjAxODYgNC4zMzkyNiAzNC4wMTg2IDQuMDAyNzkgMzQuMTA4OEMzLjA4OTc0IDM0LjM1MzMgMi4zNzY1NSAzNS4wNjY2IDIuMTMxODkgMzUuOTc5NkMyLjA0MTc1IDM2LjMxNTkgMi4wNDE3NSAzNi43MjYgMi4wNDE3NSAzNy41NDYyQzIuMDQxNzUgMzkuMTg2NyAyLjA0MTc1IDQwLjAwNjkgMi4yMjIwNiA0MC42Nzk3QzIuNzExMzYgNDIuNTA1OSA0LjEzNzcyIDQzLjkzMjIgNS45NjM4MyA0NC40MjE3QzYuNjM2NzQgNDQuNjAxOSA3LjQ1Njk1IDQ0LjYwMTkgOS4wOTczMSA0NC42MDE5WiIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K', 1)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (22, 1, N'Auto (benzine)', 0, 0, 0, 2023, 1, N'km', 0.463, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer met auto, gemiddelde bezetting', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTciIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA1NyA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjkxNjcgMzQuNjY1SDM5LjA4MzRNMTcuOTE2NyAzNC42NjVDMTcuOTE2NyAzNy41ODc2IDE1LjU0NzYgMzkuOTU2NyAxMi42MjUxIDM5Ljk1NjdDOS43MDI1NyAzOS45NTY3IDcuMzMzNDEgMzcuNTg3NiA3LjMzMzQxIDM0LjY2NU0xNy45MTY3IDM0LjY2NUMxNy45MTY3IDMxLjc0MjQgMTUuNTQ3NiAyOS4zNzM0IDEyLjYyNTEgMjkuMzczNEM5LjcwMjU3IDI5LjM3MzQgNy4zMzM0MSAzMS43NDI0IDcuMzMzNDEgMzQuNjY1TTM5LjA4MzQgMzQuNjY1QzM5LjA4MzQgMzcuNTg3NiA0MS40NTI1IDM5Ljk1NjcgNDQuMzc1MSAzOS45NTY3QzQ3LjI5NzcgMzkuOTU2NyA0OS42NjY3IDM3LjU4NzYgNDkuNjY2NyAzNC42NjVNMzkuMDgzNCAzNC42NjVDMzkuMDgzNCAzMS43NDI0IDQxLjQ1MjUgMjkuMzczNCA0NC4zNzUxIDI5LjM3MzRDNDcuMjk3NyAyOS4zNzM0IDQ5LjY2NjcgMzEuNzQyNCA0OS42NjY3IDM0LjY2NU03LjMzMzQxIDM0LjY2NUg2LjI3NTA4QzQuNzkzMjggMzQuNjY1IDQuMDUyMzcgMzQuNjY1IDMuNDg2NCAzNC4zNzY2QzIuOTg4NTYgMzQuMTIyOSAyLjU4MzggMzMuNzE4NCAyLjMzMDEyIDMzLjIyMDRDMi4wNDE3NSAzMi42NTQ1IDIuMDQxNzUgMzEuOTEzNiAyLjA0MTc1IDMwLjQzMTdWMjcuMjU2N0MyLjA0MTc1IDI0LjI5MzEgMi4wNDE3NSAyMi44MTEyIDIuNjE4NTEgMjEuNjc5M0MzLjEyNTgzIDIwLjY4MzcgMy45MzUzNCAxOS44NzQgNC45MzEwNSAxOS4zNjY4QzYuMDYyOTkgMTguNzkgNy41NDQ4MiAxOC43OSAxMC41MDg0IDE4Ljc5SDQyLjI1ODRDNDQuMjI0OCAxOC43OSA0NS4yMDggMTguNzkgNDYuMDMwNiAxOC45MjAyQzUwLjU1OTIgMTkuNjM3NSA1NC4xMTA5IDIzLjE4OTMgNTQuODI4MiAyNy43MTc5QzU0Ljk1ODQgMjguNTQwNSA1NC45NTg0IDI5LjUyMzcgNTQuOTU4NCAzMS40OUM1NC45NTg0IDMxLjk4MTYgNTQuOTU4NCAzMi4yMjc0IDU0LjkyNTkgMzIuNDMzQzU0Ljc0NjUgMzMuNTY1MiA1My44NTg1IDM0LjQ1MzEgNTIuNzI2NCAzNC42MzI1QzUyLjUyMDggMzQuNjY1IDUyLjI3NSAzNC42NjUgNTEuNzgzNCAzNC42NjVINDkuNjY2N00yMy4yMDg0IDIuOTE1MDRWMTguNzlNNy4zMzM0MSAxOC43OUw4LjIxMDU2IDEzLjUyNzJDOC44Mzg5MiA5Ljc1Njk4IDkuMTUzMTEgNy44NzE4OCAxMC4wOTM4IDYuNDU3MjhDMTAuOTIzIDUuMjEwMyAxMi4wODgxIDQuMjIzMzIgMTMuNDU0NCAzLjYxMDM5QzE1LjAwNDUgMi45MTUwNCAxNi45MTU2IDIuOTE1MDQgMjAuNzM3OCAyLjkxNTA0SDI5LjY0MDdDMzIuMTI1NyAyLjkxNTA0IDMzLjM2ODEgMi45MTUwNCAzNC40OTYxIDMuMjU3NTRDMzUuNDk0NiAzLjU2MDc4IDM2LjQyMzMgNC4wNTc4OCAzNy4yMjk1IDQuNzIwNDVDMzguMTQwMiA1LjQ2ODg4IDM4LjgyOTQgNi41MDI3MSA0MC4yMDc5IDguNTcwMzVMNDcuMDIwOSAxOC43OSIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K', 40)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (23, 1, N'Fiets', 0, 0, 0, 2023, 1, N'km', 0, N'https://1drv.ms/b/s!AuZMIvHp_a7jiwY3BPsHqrBL19h1?e=IfsfSP', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer met de fiets (extra energie en emissies t.o.v. rust)', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTkiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA1OSA0NSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQ2LjQ1NjEgMzEuOTczNEw0MC45MzU1IDE1LjAxNzNNMjkuMzA3MyAyLjY4NTU1QzM3Ljc4NTMgMi42ODU1NiAzNy41OTI2IDQuOTk3NzMgMzguMzYzNCA3LjExNzI1TDQwLjkzNTUgMTUuMDE3M000MC45MzU1IDE1LjAxNzNDNDAuNzk4OSAxNS4wMTczIDQwLjE0NDUgMTUuMDE3MyAzOS4xMzQxIDE1LjAxNzNNMjAuNjM2NiAxNS4wMTczTDEyLjM1MTIgMzEuOTczNEwyOS4zMDczIDI2Ljc3MDlNMjAuNjM2NiAxNS4wMTczQzI1LjgwMTcgMTUuMDE3MyAzNS4xODU5IDE1LjAxNzMgMzkuMTM0MSAxNS4wMTczTTIwLjYzNjYgMTUuMDE3M0wyOS4zMDczIDI2Ljc3MDlNMjAuNjM2NiAxNS4wMTczTDE1LjYyNjggNy42OTUzTTI5LjMwNzMgMjYuNzcwOUwzOS4xMzQxIDE1LjAxNzNNMTUuNjI2OCA3LjY5NTNIMTEuOTY1OE0xNS42MjY4IDcuNjk1M0gyMC4wNTg1IiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyLjU0MzkiIGN5PSIzMi4xNjYiIHI9IjEwLjAxOTUiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0Ii8+CjxjaXJjbGUgY3g9IjQ2LjQ1NiIgY3k9IjMyLjE2NiIgcj0iMTAuMDE5NSIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiLz4KPC9zdmc+Cg==', 0)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (24, 1, N'Scooter/brommer (benzine)', 0, 0, 0, 2023, 1, N'km', 0.233, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer per scooter/brommer', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTciIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA1NyA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTU0Ljk1ODMgMzIuMDE4NkM1NC45NTgzIDI3LjYzNDggNTEuNDA0NSAyNC4wODExIDQ3LjAyMDggMjQuMDgxMUM0Mi42MzcgMjQuMDgxMSAzOS4wODMzIDI3LjYzNDggMzkuMDgzMyAzMi4wMTg2QzM5LjA4MzMgMzYuNDAyMyA0Mi42MzcgMzkuOTU2MSA0Ny4wMjA4IDM5Ljk1NjFDNTEuNDA0NSAzOS45NTYxIDU0Ljk1ODMgMzYuNDAyMyA1NC45NTgzIDMyLjAxODZaIiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIvPgo8cGF0aCBkPSJNMjUuODU0MiAzMi4wMTg5VjI4LjA1MDFDMjUuODU0MiAyMy4wNjExIDI1Ljg1NDIgMjAuNTY2NyAyNC4zMDQzIDE5LjAxNjdDMjIuNzU0NSAxNy40NjY4IDIwLjI2IDE3LjQ2NjggMTUuMjcwOSAxNy40NjY4SDEzLjY4MzRDMTIuNzAwNiAxNy40NjY4IDEyLjIwOTMgMTcuNDY2OCAxMS43OTQ3IDE3LjQ5OTNDNi42MDQ5MSAxNy45MDc5IDIuNDgyODEgMjIuMDMwMSAyLjA3NDM3IDI3LjIxOTlDMi4wNDE3NSAyNy42MzQyIDIuMDQxNzUgMjguMTI1OCAyLjA0MTc1IDI5LjEwODVDMi4wNDE3NSAyOS4zNTQzIDIuMDQxNzUgMjkuNDc3IDIuMDQ5OSAyOS41ODA3QzIuMTUyMDMgMzAuODc4IDMuMTgyNTMgMzEuOTA4NSA0LjQ3OTk5IDMyLjAxMDdDNC41ODM2MyAzMi4wMTg5IDQuNzA2NDcgMzIuMDE4OSA0Ljk1MjE2IDMyLjAxODlIMjUuODU0MlpNMjUuODU0MiAzMi4wMTg5SDM5LjA4MzQiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjg4NTUgMzIuMDE4NkMyMS44ODU1IDM2LjQwMjQgMTguMzMxNyAzOS45NTYxIDEzLjk0OCAzOS45NTYxQzkuNTY0MjUgMzkuOTU2MSA2LjAxMDUgMzYuNDAyNCA2LjAxMDUgMzIuMDE4NiIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjguNSAyLjkxNTA0SDI5Ljg5NjdDMzMuMDc5MSAyLjkxNTA0IDM0LjY3MDMgMi45MTUwNCAzNS45NDkxIDMuNzA1MzVDMzcuMjI3OCA0LjQ5NTY2IDM3LjkzOTUgNS45MTg4OCAzOS4zNjI3IDguNzY1MzVMNDcuMDIwOCAyNC4wODE3IiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik00NC43NTIzIDE4Ljc4OTdMNDYuNTU2IDE3LjQ2MUM0Ny4yNTEzIDE2Ljk0ODUgNDcuNTk5MiAxNi42OTI0IDQ3Ljg0MSAxNi4zNTg1QzQ4LjAwNTYgMTYuMTMxMiA0OC4xMzI5IDE1Ljg3OTEgNDguMjE4MyAxNS42MTE4QzQ4LjM0MzggMTUuMjE5MSA0OC4zNDM3IDE0Ljc4NzEgNDguMzQzNyAxMy45MjMzQzQ4LjM0MzcgMTIuMjg5NiA0OC4zNDM4IDExLjQ3MjggNDcuOTk1NiAxMC44NjI5QzQ3Ljc2MDkgMTAuNDUyMyA0Ny40MjA2IDEwLjExMjEgNDcuMDEwMyA5Ljg3NzYyQzQ2LjQwMDEgOS41MjkzIDQ1LjU4MzQgOS41MjkzIDQzLjk0OTggOS41MjkzSDQwLjQwNjIiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTQ3LjAyMDggMzkuOTU2MUM1MS40MDQ1IDM5Ljk1NjEgNTQuOTU4MyAzNi40MDIzIDU0Ljk1ODMgMzIuMDE4NkM1NC45NTgzIDI3LjYzNDggNTEuNDA0NSAyNC4wODExIDQ3LjAyMDggMjQuMDgxMUM0Mi42MzcgMjQuMDgxMSAzOS4wODMzIDI3LjYzNDggMzkuMDgzMyAzMi4wMTg2QzM5LjA4MzMgMzYuNDAyMyA0Mi42MzcgMzkuOTU2MSA0Ny4wMjA4IDM5Ljk1NjFaIiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIvPgo8L3N2Zz4K', 4)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (25, 1, N'Motorfiets', 0, 0, 0, 2023, 1, N'km', 0.401, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer met de motor', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTciIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA1NyA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQ3LjIwNzEgMzMuOTkwOEw0My45Mjg1IDE5LjU4ODVNMzIuNzQyOCAzLjEzMzY0QzQxLjIyODUgMS45NzY1OSA0MS4wMzU3IDcuMzc2NTkgNDEuODA3MSAxMC4yNjk0TDQyLjM3NzggMTIuNzc2Nk00Mi4zNzc4IDEyLjc3NjZMNDcuMjA3MSAxMi41ODM3TTQyLjM3NzggMTIuNzc2Nkw0My45Mjg1IDE5LjU4ODVNNDIuMzc3OCAxMi43NzY2QzQyLjM3NzggMTIuNzc2NiAyNC44MzU2IDE0Ljg5OCAyMi4xMzU3IDE0Ljg5OEMxOS40MzU3IDE0Ljg5OCA3LjQ3ODUzIDExLjA0MDkgNy40Nzg1MyAxMS4wNDA5QzIuNjU3MDUgOS44ODM3MiAwLjE1MDAzMyAxOC4xNzY2IDUuNTQ5OTUgMTkuMzMzN0wxNS45NjQyIDIxLjI2MjNDMTcuMzc4NSAyMS44NDA5IDE5LjA0OTkgMjEuODQwOSAyMC41OTI4IDI1LjExOTRNNDIuMzc3OCAxMi43NzY2QzM5LjIzMDQgMTkuNzE5NCAzMy4xMjg1IDMzLjc5OCAyOC40OTk5IDMzLjc5OEMyMy44NzEzIDMzLjc5OCAyMi4xMzU3IDI4LjM5OCAyMC41OTI4IDI1LjExOTRNNDMuOTI4NSAxOS41ODg1QzQ0LjA4MjggMTkuNjkzMyA0Ny4yMDcxIDE5LjI2NDcgNDkuMzI4NSAxOS41ODg1QzUxLjQ0OTkgMTkuOTEyMyA1NC43Mjg1IDIyLjIyNjYgNTQuNzI4NSAyMi4yMjY2TTIwLjU5MjggMjUuMTE5NEw5LjU5OTkxIDMzLjc5OCIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI5LjYiIGN5PSIzMy43OTgyIiByPSI2LjEiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0Ii8+CjxjaXJjbGUgY3g9IjQ3LjQiIGN5PSIzMy43OTgyIiByPSI2LjEiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0Ii8+Cjwvc3ZnPgo=', 35)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (26, 1, N'Lopen', 0, 0, 0, 2023, 1, N'km', 0.036, N'https://1drv.ms/b/s!AuZMIvHp_a7jiwY3BPsHqrBL19h1?e=IfsfSP', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer door te lopen, extra energie en emissies t.o.v. rust', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDMiIGhlaWdodD0iNTMiIHZpZXdCb3g9IjAgMCA0MyA1MyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuNTk5MTIgMjYuNzUzMUM2LjU2MTEgMjIuNTE1MiAxNi4xNDc2IDE1LjI5ODYgMjIuMzQ2MyAxOS45OTI4TTIyLjM0NjMgMTkuOTkyOEMzMC4wOTQ3IDI1Ljg2MDUgMzAuMTMyMyAyOS4xOTggNDAuNDAwOSAzMC41NTIxTTIyLjM0NjMgMTkuOTkyOEwxNy43MjU5IDMwLjU1MjFNOS4zMzE5NyA1MC4zNzQ1TDE3LjcyNTkgMzAuNTUyMU0xNy43MjU5IDMwLjU1MjFMMjguMTAxMiAzNi44NzEyVjUwLjM3NDUiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPGNpcmNsZSBjeD0iMjguMzU2NyIgY3k9IjguODUyODEiIHI9IjYuMzU2NzEiIHN0cm9rZT0iIzUyQjc4OCIgc3Ryb2tlLXdpZHRoPSI0Ii8+Cjwvc3ZnPgo=', 2)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (27, 1, N'Bus (diesel)', 0, 0, 0, 2023, 1, N'km', 0.352, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/', CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), CAST(N'2023-11-28T09:11:17.6030000+00:00' AS DateTimeOffset), 0, 1, N'Personenvervoer met een dieselbus (gemiddelde bezetting)', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDMiIGhlaWdodD0iNTMiIHZpZXdCb3g9IjAgMCA0MyA1MyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuOTc5MjUgMTAuNTYwNVYzNi40ODk3QzIuOTc5MjUgMzkuNDUzMyAyLjk3OTI1IDQwLjkzNTIgMy41NTYwMSA0Mi4wNjcxQzQuMDYzMzMgNDMuMDYyOCA0Ljg3Mjg0IDQzLjg3MjQgNS44Njg1NSA0NC4zNzk2QzcuMDAwNDkgNDQuOTU2NCA4LjQ4MjI5IDQ0Ljk1NjQgMTEuNDQ1OSA0NC45NTY0SDMxLjU1NDJDMzQuNTE3OCA0NC45NTY0IDM1Ljk5OTggNDQuOTU2NCAzNy4xMzE3IDQ0LjM3OTZDMzguMTI3MyA0My44NzI0IDM4LjkzNjkgNDMuMDYyOCAzOS40NDQxIDQyLjA2NzFDNDAuMDIwOSA0MC45MzUyIDQwLjAyMDkgMzkuNDUzMyA0MC4wMjA5IDM2LjQ4OTdWMTAuNTYwNU0yLjk3OTI1IDEwLjU2MDVDMi45NzkyNSAxMC41NjA1IDIuOTc5MjUgMi42MjMwNSAyMS41MDAxIDIuNjIzMDVDNDAuMDIwOSAyLjYyMzA1IDQwLjAyMDkgMTAuNTYwNSA0MC4wMjA5IDEwLjU2MDVNMi45NzkyNSAxMC41NjA1SDQwLjAyMDlNMi45NzkyNSAyOS4wODE0SDQwLjAyMDlNMzQuNzI5MiA1MC4yNDhWNDQuOTU2NE04LjI3MDkxIDUwLjI0OFY0NC45NTY0TTEwLjkxNjcgMzcuMDE4OUgxMC45NDMyTTMyLjA4MzQgMzcuMDE4OUgzMi4xMDk5IiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=', 6)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (28, 1, N'Trein (diesel)', 0, 0, 0, 2024, 1, N'km', 0.271, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/#datawrapper', CAST(N'2024-02-07T22:20:16.3344214+00:00' AS DateTimeOffset), CAST(N'2024-02-07T22:20:16.3344228+00:00' AS DateTimeOffset), 0, 0, N'Personenvervoer met dieseltrein, gemiddelde bezetting', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDMiIGhlaWdodD0iNTMiIHZpZXdCb3g9IjAgMCA0MyA1MyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjkxNjcgMzEuNzI3MlYzNC4zNzNNMzIuMDgzNCAzMS43MjcyVjM0LjM3M00yLjk3OTI1IDIzLjc4OTdIMjEuNTAwMU0yMS41MDAxIDIzLjc4OTdINDAuMDIwOU0yMS41MDAxIDIzLjc4OTdWMTAuNTYwNU01LjYyNTA4IDUwLjI0OEwxMC45MTY3IDQyLjMxMDVNMzIuMDgzNCA0Mi4zMTA1TDM3LjM3NTEgNTAuMjQ4TTIxLjUwMDEgMTAuNTYwNUgyLjk3OTI1TTIxLjUwMDEgMTAuNTYwNUg0MC4wMjA5TTIuOTc5MjUgMTAuNTYwNVYzNy4wMTg5QzIuOTc5MjUgMzkuOTQxNSA1LjM0ODQxIDQyLjMxMDUgOC4yNzA5MSA0Mi4zMTA1SDM0LjcyOTJDMzcuNjUxOCA0Mi4zMTA1IDQwLjAyMDkgMzkuOTQxNSA0MC4wMjA5IDM3LjAxODlWMTAuNTYwNU0yLjk3OTI1IDEwLjU2MDVDMi45NzkyNSA2LjE3NjggNi41MzMgMi42MjMwNSAxMC45MTY3IDIuNjIzMDVIMzIuMDgzNEMzNi40NjczIDIuNjIzMDUgNDAuMDIwOSA2LjE3NjggNDAuMDIwOSAxMC41NjA1IiBzdHJva2U9IiM1MkI3ODgiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=', 55)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (29, 1, N'Auto (elektrisch)', 0, 0, 0, 2024, 1, N'km', 0.165, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/#datawrapper', CAST(N'2024-02-07T22:25:23.1272433+00:00' AS DateTimeOffset), CAST(N'2024-02-07T22:25:23.1272446+00:00' AS DateTimeOffset), 0, 0, N'Personenvervoer met een elektrische auto (gemiddelde bezetting)', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTciIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA1NyA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjkxNjcgMzQuNjY1SDM5LjA4MzRNMTcuOTE2NyAzNC42NjVDMTcuOTE2NyAzNy41ODc2IDE1LjU0NzYgMzkuOTU2NyAxMi42MjUxIDM5Ljk1NjdDOS43MDI1NyAzOS45NTY3IDcuMzMzNDEgMzcuNTg3NiA3LjMzMzQxIDM0LjY2NU0xNy45MTY3IDM0LjY2NUMxNy45MTY3IDMxLjc0MjQgMTUuNTQ3NiAyOS4zNzM0IDEyLjYyNTEgMjkuMzczNEM5LjcwMjU3IDI5LjM3MzQgNy4zMzM0MSAzMS43NDI0IDcuMzMzNDEgMzQuNjY1TTM5LjA4MzQgMzQuNjY1QzM5LjA4MzQgMzcuNTg3NiA0MS40NTI1IDM5Ljk1NjcgNDQuMzc1MSAzOS45NTY3QzQ3LjI5NzcgMzkuOTU2NyA0OS42NjY3IDM3LjU4NzYgNDkuNjY2NyAzNC42NjVNMzkuMDgzNCAzNC42NjVDMzkuMDgzNCAzMS43NDI0IDQxLjQ1MjUgMjkuMzczNCA0NC4zNzUxIDI5LjM3MzRDNDcuMjk3NyAyOS4zNzM0IDQ5LjY2NjcgMzEuNzQyNCA0OS42NjY3IDM0LjY2NU03LjMzMzQxIDM0LjY2NUg2LjI3NTA4QzQuNzkzMjggMzQuNjY1IDQuMDUyMzcgMzQuNjY1IDMuNDg2NCAzNC4zNzY2QzIuOTg4NTYgMzQuMTIyOSAyLjU4MzggMzMuNzE4NCAyLjMzMDEyIDMzLjIyMDRDMi4wNDE3NSAzMi42NTQ1IDIuMDQxNzUgMzEuOTEzNiAyLjA0MTc1IDMwLjQzMTdWMjcuMjU2N0MyLjA0MTc1IDI0LjI5MzEgMi4wNDE3NSAyMi44MTEyIDIuNjE4NTEgMjEuNjc5M0MzLjEyNTgzIDIwLjY4MzcgMy45MzUzNCAxOS44NzQgNC45MzEwNSAxOS4zNjY4QzYuMDYyOTkgMTguNzkgNy41NDQ4MiAxOC43OSAxMC41MDg0IDE4Ljc5SDQyLjI1ODRDNDQuMjI0OCAxOC43OSA0NS4yMDggMTguNzkgNDYuMDMwNiAxOC45MjAyQzUwLjU1OTIgMTkuNjM3NSA1NC4xMTA5IDIzLjE4OTMgNTQuODI4MiAyNy43MTc5QzU0Ljk1ODQgMjguNTQwNSA1NC45NTg0IDI5LjUyMzcgNTQuOTU4NCAzMS40OUM1NC45NTg0IDMxLjk4MTYgNTQuOTU4NCAzMi4yMjc0IDU0LjkyNTkgMzIuNDMzQzU0Ljc0NjUgMzMuNTY1MiA1My44NTg1IDM0LjQ1MzEgNTIuNzI2NCAzNC42MzI1QzUyLjUyMDggMzQuNjY1IDUyLjI3NSAzNC42NjUgNTEuNzgzNCAzNC42NjVINDkuNjY2N00yMy4yMDg0IDIuOTE1MDRWMTguNzlNNy4zMzM0MSAxOC43OUw4LjIxMDU2IDEzLjUyNzJDOC44Mzg5MiA5Ljc1Njk4IDkuMTUzMTEgNy44NzE4OCAxMC4wOTM4IDYuNDU3MjhDMTAuOTIzIDUuMjEwMyAxMi4wODgxIDQuMjIzMzIgMTMuNDU0NCAzLjYxMDM5QzE1LjAwNDUgMi45MTUwNCAxNi45MTU2IDIuOTE1MDQgMjAuNzM3OCAyLjkxNTA0SDI5LjY0MDdDMzIuMTI1NyAyLjkxNTA0IDMzLjM2ODEgMi45MTUwNCAzNC40OTYxIDMuMjU3NTRDMzUuNDk0NiAzLjU2MDc4IDM2LjQyMzMgNC4wNTc4OCAzNy4yMjk1IDQuNzIwNDVDMzguMTQwMiA1LjQ2ODg4IDM4LjgyOTQgNi41MDI3MSA0MC4yMDc5IDguNTcwMzVMNDcuMDIwOSAxOC43OSIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K', 40)
INSERT [dbo].[CarbonCaseItems] ([Id], [Status], [Name], [DurationType], [Scope], [EmissionType], [UsageYear], [CategoryId], [UsageUnit], [AverageFinalEnergyIntensityInkWhPerUsageUnit], [Source], [CreatedAt], [UpdatedAt], [Type], [LanguageCode], [Description], [ImageUrl], [EstimatedUsage]) VALUES (30, 1, N'Auto (diesel)', 0, 0, 0, 2024, 1, N'km', 40, N'https://www.milieucentraal.nl/duurzaam-vervoer/co2-uitstoot-fiets-ov-en-auto/#datawrapper', CAST(N'2024-02-07T22:31:21.5282999+00:00' AS DateTimeOffset), CAST(N'2024-02-07T22:31:21.5283009+00:00' AS DateTimeOffset), 0, 0, N'Personenvervoer met dieselauto (gemiddelde bezetting)', N'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTciIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA1NyA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjkxNjcgMzQuNjY1SDM5LjA4MzRNMTcuOTE2NyAzNC42NjVDMTcuOTE2NyAzNy41ODc2IDE1LjU0NzYgMzkuOTU2NyAxMi42MjUxIDM5Ljk1NjdDOS43MDI1NyAzOS45NTY3IDcuMzMzNDEgMzcuNTg3NiA3LjMzMzQxIDM0LjY2NU0xNy45MTY3IDM0LjY2NUMxNy45MTY3IDMxLjc0MjQgMTUuNTQ3NiAyOS4zNzM0IDEyLjYyNTEgMjkuMzczNEM5LjcwMjU3IDI5LjM3MzQgNy4zMzM0MSAzMS43NDI0IDcuMzMzNDEgMzQuNjY1TTM5LjA4MzQgMzQuNjY1QzM5LjA4MzQgMzcuNTg3NiA0MS40NTI1IDM5Ljk1NjcgNDQuMzc1MSAzOS45NTY3QzQ3LjI5NzcgMzkuOTU2NyA0OS42NjY3IDM3LjU4NzYgNDkuNjY2NyAzNC42NjVNMzkuMDgzNCAzNC42NjVDMzkuMDgzNCAzMS43NDI0IDQxLjQ1MjUgMjkuMzczNCA0NC4zNzUxIDI5LjM3MzRDNDcuMjk3NyAyOS4zNzM0IDQ5LjY2NjcgMzEuNzQyNCA0OS42NjY3IDM0LjY2NU03LjMzMzQxIDM0LjY2NUg2LjI3NTA4QzQuNzkzMjggMzQuNjY1IDQuMDUyMzcgMzQuNjY1IDMuNDg2NCAzNC4zNzY2QzIuOTg4NTYgMzQuMTIyOSAyLjU4MzggMzMuNzE4NCAyLjMzMDEyIDMzLjIyMDRDMi4wNDE3NSAzMi42NTQ1IDIuMDQxNzUgMzEuOTEzNiAyLjA0MTc1IDMwLjQzMTdWMjcuMjU2N0MyLjA0MTc1IDI0LjI5MzEgMi4wNDE3NSAyMi44MTEyIDIuNjE4NTEgMjEuNjc5M0MzLjEyNTgzIDIwLjY4MzcgMy45MzUzNCAxOS44NzQgNC45MzEwNSAxOS4zNjY4QzYuMDYyOTkgMTguNzkgNy41NDQ4MiAxOC43OSAxMC41MDg0IDE4Ljc5SDQyLjI1ODRDNDQuMjI0OCAxOC43OSA0NS4yMDggMTguNzkgNDYuMDMwNiAxOC45MjAyQzUwLjU1OTIgMTkuNjM3NSA1NC4xMTA5IDIzLjE4OTMgNTQuODI4MiAyNy43MTc5QzU0Ljk1ODQgMjguNTQwNSA1NC45NTg0IDI5LjUyMzcgNTQuOTU4NCAzMS40OUM1NC45NTg0IDMxLjk4MTYgNTQuOTU4NCAzMi4yMjc0IDU0LjkyNTkgMzIuNDMzQzU0Ljc0NjUgMzMuNTY1MiA1My44NTg1IDM0LjQ1MzEgNTIuNzI2NCAzNC42MzI1QzUyLjUyMDggMzQuNjY1IDUyLjI3NSAzNC42NjUgNTEuNzgzNCAzNC42NjVINDkuNjY2N00yMy4yMDg0IDIuOTE1MDRWMTguNzlNNy4zMzM0MSAxOC43OUw4LjIxMDU2IDEzLjUyNzJDOC44Mzg5MiA5Ljc1Njk4IDkuMTUzMTEgNy44NzE4OCAxMC4wOTM4IDYuNDU3MjhDMTAuOTIzIDUuMjEwMyAxMi4wODgxIDQuMjIzMzIgMTMuNDU0NCAzLjYxMDM5QzE1LjAwNDUgMi45MTUwNCAxNi45MTU2IDIuOTE1MDQgMjAuNzM3OCAyLjkxNTA0SDI5LjY0MDdDMzIuMTI1NyAyLjkxNTA0IDMzLjM2ODEgMi45MTUwNCAzNC40OTYxIDMuMjU3NTRDMzUuNDk0NiAzLjU2MDc4IDM2LjQyMzMgNC4wNTc4OCAzNy4yMjk1IDQuNzIwNDVDMzguMTQwMiA1LjQ2ODg4IDM4LjgyOTQgNi41MDI3MSA0MC4yMDc5IDguNTcwMzVMNDcuMDIwOSAxOC43OSIgc3Ryb2tlPSIjNTJCNzg4IiBzdHJva2Utd2lkdGg9IjQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K', 0.394)
SET IDENTITY_INSERT [dbo].[CarbonCaseItems] OFF
GO
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'f1832160-bc35-40ef-4af5-08dc0b909f7b', 2, N'GitHub', N'commits', 0, N'Online platform for software development and version control.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'7478ddea-0c1e-4272-4af6-08dc0b909f7b', 3, N'Train', N'km', 0, N'Dutch Railways')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'908247cb-fcff-461b-4af7-08dc0b909f7b', 4, N'Jira', N'hours', 0, N'Problem tracking product developed by Atlassian.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'657a755c-5523-47f1-4af8-08dc0b909f7b', 5, N'Microsoft Outlook', N'e-mails', 0, N'E-mail client created by Microsoft.Part of the Microsoft Office package.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'21cb7773-6f51-449d-4af9-08dc0b909f7b', 6, N'Linear', N'hours', 0, N'Streamline issues, sprints and product roadmaps.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'ea6de9b1-2973-46ee-4afa-08dc0b909f7b', 7, N'Discord', N'hours', 0, N'Online communication platform for chats, voice and video calls.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'5ca2fe64-5646-4329-4afb-08dc0b909f7b', 8, N'Microsoft Teams', N'hours', 0, N'Communication and collaboration platform from Microsoft.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'70084b69-407a-4235-4afc-08dc0b909f7b', 9, N'OneDrive', N'GB', 0, N'File storage and management created by Microsoft.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'9ccbc036-1614-4f21-4afd-08dc0b909f7b', 10, N'GitLab', N'commits', 0, N'Online platform for software development and version control.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'89a727b1-5e4a-42f4-4afe-08dc0b909f7b', 11, N'Slack', N'hours', 0, N'Cloud-based groupware deployed as a communication tool.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'2e3de755-44be-4e01-4aff-08dc0b909f7b', 12, N'Gmail', N'e-mails', 0, N'Email service from Google.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'3a5d8276-f8ab-4eae-4b00-08dc0b909f7b', 13, N'Cypress Cloud', N'runs', 0, N'Front-end testing tool for web applications.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'cb6eda79-836e-474f-4b01-08dc0b909f7b', 14, N'NPM', N'packages', 0, N'Package manager for the JavaScript programming language.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'b31aa71b-911c-4e10-4b02-08dc0b909f7b', 15, N'StackOverflow', N'hours', 0, N'Web site with questions and answers on a wide range of programming topics.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'a84d2b29-1786-4ff9-4b03-08dc0b909f7b', 16, N'GitHub Copilot', N'hours', 0, N'Cloud-based artificial intelligence tool developed by GitHub and OpenAI.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'5253ad7d-c4aa-465d-4b04-08dc0b909f7b', 17, N'ChatGPT', N'prompts', 0, N'Prototype of a chatbot with artificial intelligence developed by OpenAI')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'4d96867d-2c87-4c4e-4b05-08dc0b909f7b', 18, N'Bitbucket', N'commits', 0, N'Git-based source code epository hosting service owned by Atlassian.')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'f8a1d4bb-7428-4664-4b06-08dc0b909f7b', 19, N'Draw.io', N'hours', 0, N'Platform-independent software for drawing graphs')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'8d9b9bf1-c551-4b2d-4b07-08dc0b909f7b', 20, N'Computer', N'hours', 0, N'Desktop PC')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'ede082a1-f51c-48fa-4b08-08dc0b909f7b', 21, N'Laptop', N'hours', 0, N'Portable device')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'5bb777ba-fb1f-4679-4b0a-08dc0b909f7b', 22, N'Car', N'km', 0, N'Transport on wheels')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'754e420d-d356-4df7-4b0b-08dc0b909f7b', 23, N'Bicycle', N'km', 0, N'Healthy transportation, usually with two wheels')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'8fca9461-d197-464d-4b0c-08dc0b909f7b', 24, N'Scooter/moped', N'km', 0, N'Motorised vehicle on two wheels')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'f623e19d-1c95-4ee5-4b0d-08dc0b909f7b', 25, N'Motorbike', N'km', 0, N'Fast two-wheeled motorized vehicle')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'09a4f65e-d117-41f3-4b0e-08dc0b909f7b', 26, N'Walking', N'km', 0, N'Only using your legs')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'e09cd9e3-9965-464f-4b0f-08dc0b909f7b', 27, N'Bus', N'km', 0, N'Public transport')
INSERT [dbo].[CarbonCaseItemTranslations] ([Id], [CarbonCaseItemId], [Name], [UsageUnit], [LanguageCode], [Description]) VALUES (N'dfee8fb4-5794-4899-8697-faf3cbd0eb64', 1, N'Figma', N'persons', 0, N'Collaborative web application for interface design.')
GO
INSERT [dbo].[ComparisonItems] ([Id], [Description], [Unit], [Emission], [ImageUrl], [LanguageCode]) VALUES (N'c577ab4f-ead9-447e-8410-05a5d80f85cb', N'Smartphonegebruik', N'jaar', 69, N'https://i.ibb.co/YBkh3gZ/phone-only-dynamic-color-2.png', 1)
INSERT [dbo].[ComparisonItems] ([Id], [Description], [Unit], [Emission], [ImageUrl], [LanguageCode]) VALUES (N'cccd74ff-9b3b-45eb-d424-08dc013bd71f', N'Eating them all', N'burgers', 3.235, N'https://i.ibb.co/nLY714R/DALL-E-2023-12-20-10-15-15-A-3-D-icon-of-a-hamburger-with-a-detailed-realistic-appearance-featuring.png', 0)
INSERT [dbo].[ComparisonItems] ([Id], [Description], [Unit], [Emission], [ImageUrl], [LanguageCode]) VALUES (N'fe630c1a-b7c6-44ab-d425-08dc013bd71f', N'Of driving a gasoline car', N'km', 0.149, N'https://i.ibb.co/8b8y0mz/image-removebg-preview-23-1.png', 0)
INSERT [dbo].[ComparisonItems] ([Id], [Description], [Unit], [Emission], [ImageUrl], [LanguageCode]) VALUES (N'ac2de5f1-ec2a-471b-d427-08dc013bd71f', N'Watching Netflix on a 55"LED TV', N'hours', 0.206, N'https://i.ibb.co/mBWMyMW/play-dynamic-color-1.png', 0)
GO
INSERT [dbo].[ComparisonItemTranslations] ([Id], [ComparisonItemId], [Description], [Unit], [LanguageCode]) VALUES (N'69d097d7-a70e-4bd9-6623-08dc013c8d30', N'cccd74ff-9b3b-45eb-d424-08dc013bd71f', N'Helemaal opeten...', N'burgers', 1)
INSERT [dbo].[ComparisonItemTranslations] ([Id], [ComparisonItemId], [Description], [Unit], [LanguageCode]) VALUES (N'87a300eb-39b3-40e7-6624-08dc013c8d30', N'fe630c1a-b7c6-44ab-d425-08dc013bd71f', N'Rijden in een benzineauto', N'km', 1)
INSERT [dbo].[ComparisonItemTranslations] ([Id], [ComparisonItemId], [Description], [Unit], [LanguageCode]) VALUES (N'879c1dcf-e42a-40f1-6626-08dc013c8d30', N'ac2de5f1-ec2a-471b-d427-08dc013bd71f', N'Netflix kijken op een 55" LED TV', N'uur', 1)
INSERT [dbo].[ComparisonItemTranslations] ([Id], [ComparisonItemId], [Description], [Unit], [LanguageCode]) VALUES (N'99323634-76bf-438e-0ace-08dc282e165a', N'c577ab4f-ead9-447e-8410-05a5d80f85cb', N'Smartphone usage', N'years', 0)
GO
INSERT [dbo].[EmissionIntensities] ([Id], [Year], [WTTEmissionIntensity], [WTTSource], [TTWEmissionIntensity], [TTWSource], [CreatedAt], [IsAutoGenerated], [UpdatedAt]) VALUES (N'b1ee873a-f3b2-4771-abae-08dc00a20318', 2023, 0.058, NULL, 0.316, NULL, CAST(N'2023-12-19T15:53:17.0876440+01:00' AS DateTimeOffset), 1, CAST(N'2023-12-19T15:53:17.0876445+01:00' AS DateTimeOffset))
INSERT [dbo].[EmissionIntensities] ([Id], [Year], [WTTEmissionIntensity], [WTTSource], [TTWEmissionIntensity], [TTWSource], [CreatedAt], [IsAutoGenerated], [UpdatedAt]) VALUES (N'93d2feb4-b5f8-4834-abaf-08dc00a20318', 2024, 0.058, NULL, 0.263, NULL, CAST(N'2023-12-19T15:53:30.1759891+01:00' AS DateTimeOffset), 1, CAST(N'2023-12-19T15:53:30.1759895+01:00' AS DateTimeOffset))
INSERT [dbo].[EmissionIntensities] ([Id], [Year], [WTTEmissionIntensity], [WTTSource], [TTWEmissionIntensity], [TTWSource], [CreatedAt], [IsAutoGenerated], [UpdatedAt]) VALUES (N'ee1c5a21-3de5-49d8-abb0-08dc00a20318', 2025, 0.058, N'https://www.co2emissiefactoren.nl/lijst-emissiefactoren/', 0.21, N'https://www.pbl.nl/sites/default/files/downloads/pbl-2021-klimaat-en-energieverkenning-tabellenbijlage-v3-mei2022-4746.ods', CAST(N'2023-12-19T15:53:42.6082330+01:00' AS DateTimeOffset), 0, CAST(N'2023-12-19T15:53:42.6082334+01:00' AS DateTimeOffset))
GO
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded', 81, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-14', 18, CAST(N'2024-06-14T12:26:06.110' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-15', 14, CAST(N'2024-06-15T11:23:14.657' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-16', 12, CAST(N'2024-06-16T10:56:12.733' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-21', 1, CAST(N'2024-06-21T11:17:28.287' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-22', 5, CAST(N'2024-06-22T12:05:11.560' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-22-12', 1, CAST(N'2024-05-23T12:05:11.560' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-23', 1, CAST(N'2024-06-23T09:04:50.237' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-05-23-09', 1, CAST(N'2024-05-24T09:04:50.243' AS DateTime))
GO
SET IDENTITY_INSERT [HangFire].[Job] ON 

INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (20067, 20277, N'Succeeded', N'{"Type":"CO2.ManagementApi.Jobs.DatabaseJobs, CO2.ManagementApi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"Seed","ParameterTypes":"[\"System.Threading.CancellationToken, System.Private.CoreLib, Version=8.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"]"}', N'[null]', CAST(N'2024-05-22T12:04:59.280' AS DateTime), CAST(N'2024-05-23T12:05:11.563' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (20068, 20280, N'Succeeded', N'{"Type":"CO2.ManagementApi.Jobs.DatabaseJobs, CO2.ManagementApi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"Seed","ParameterTypes":"[\"System.Threading.CancellationToken, System.Private.CoreLib, Version=8.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"]"}', N'[null]', CAST(N'2024-05-23T09:04:44.257' AS DateTime), CAST(N'2024-05-24T09:04:50.250' AS DateTime))
SET IDENTITY_INSERT [HangFire].[Job] OFF
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (20067, N'CurrentCulture', N'""')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (20067, N'CurrentUICulture', N'""')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (20068, N'CurrentCulture', N'"nl-NL"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (20068, N'CurrentUICulture', N'"nl-NL"')
GO
INSERT [HangFire].[Schema] ([Version]) VALUES (7)
GO
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'laptop-vhscputr:2608:c315bf78-05d6-4726-be5d-ad43c17f9018', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2024-05-23T09:04:48.1280586Z"}', CAST(N'2024-05-23T11:35:54.613' AS DateTime))
GO
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (20275, 20067, N'Enqueued', NULL, CAST(N'2024-05-22T12:04:59.500' AS DateTime), N'{"EnqueuedAt":"2024-05-22T12:04:59.2388127Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (20276, 20067, N'Processing', NULL, CAST(N'2024-05-22T12:05:11.407' AS DateTime), N'{"StartedAt":"2024-05-22T12:05:11.3814604Z","ServerId":"laptop-vhscputr:9960:6a520ec2-a063-40f5-8f69-4e17279d5e3f","WorkerId":"b436c5a0-188e-4018-a286-dcd96b8c46c2"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (20277, 20067, N'Succeeded', NULL, CAST(N'2024-05-22T12:05:11.563' AS DateTime), N'{"SucceededAt":"2024-05-22T12:05:11.5547632Z","PerformanceDuration":"132","Latency":"12142"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (20278, 20068, N'Enqueued', NULL, CAST(N'2024-05-23T09:04:44.433' AS DateTime), N'{"EnqueuedAt":"2024-05-23T09:04:44.1814205Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (20279, 20068, N'Processing', NULL, CAST(N'2024-05-23T09:04:48.837' AS DateTime), N'{"StartedAt":"2024-05-23T09:04:48.5460719Z","ServerId":"laptop-vhscputr:2608:c315bf78-05d6-4726-be5d-ad43c17f9018","WorkerId":"ad7631b1-87cd-4d7b-8f4c-1dd2e62e5b0b"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (20280, 20068, N'Succeeded', NULL, CAST(N'2024-05-23T09:04:50.250' AS DateTime), N'{"SucceededAt":"2024-05-23T09:04:50.2283780Z","PerformanceDuration":"1360","Latency":"4610"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 23-5-2024 13:35:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 23-5-2024 13:35:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseItemCategoryTranslations_CarbonCaseItemCategoryId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_CarbonCaseItemCategoryTranslations_CarbonCaseItemCategoryId] ON [dbo].[CarbonCaseItemCategoryTranslations]
(
	[CarbonCaseItemCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseItems_CategoryId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_CarbonCaseItems_CategoryId] ON [dbo].[CarbonCaseItems]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseItemTranslations_CarbonCaseItemId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_CarbonCaseItemTranslations_CarbonCaseItemId] ON [dbo].[CarbonCaseItemTranslations]
(
	[CarbonCaseItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseUserInputs_CarbonCaseItemId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_CarbonCaseUserInputs_CarbonCaseItemId] ON [dbo].[CarbonCaseUserInputs]
(
	[CarbonCaseItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseUserInputs_CharacteristicId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_CarbonCaseUserInputs_CharacteristicId] ON [dbo].[CarbonCaseUserInputs]
(
	[CharacteristicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseUserInputs_FormFieldId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CarbonCaseUserInputs_FormFieldId] ON [dbo].[CarbonCaseUserInputs]
(
	[FormFieldId] ASC
)
WHERE ([FormFieldId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarbonCaseUserInputTranslations_CarbonCaseUserInputId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_CarbonCaseUserInputTranslations_CarbonCaseUserInputId] ON [dbo].[CarbonCaseUserInputTranslations]
(
	[CarbonCaseUserInputId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ComparisonItemTranslations_ComparisonItemId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_ComparisonItemTranslations_ComparisonItemId] ON [dbo].[ComparisonItemTranslations]
(
	[ComparisonItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DropdownFormFieldOptions_DropdownFormFieldId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_DropdownFormFieldOptions_DropdownFormFieldId] ON [dbo].[DropdownFormFieldOptions]
(
	[DropdownFormFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectCharacteristics_FormFieldId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProjectCharacteristics_FormFieldId] ON [dbo].[ProjectCharacteristics]
(
	[FormFieldId] ASC
)
WHERE ([FormFieldId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectCharacteristicTranslations_ProjectCharacteristicId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_ProjectCharacteristicTranslations_ProjectCharacteristicId] ON [dbo].[ProjectCharacteristicTranslations]
(
	[ProjectCharacteristicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SdgTranslations_SdgId]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_SdgTranslations_SdgId] ON [dbo].[SdgTranslations]
(
	[SdgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_AggregatedCounter_ExpireAt]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_AggregatedCounter_ExpireAt] ON [HangFire].[AggregatedCounter]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE([StateName]) 
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)
WHERE ([StateName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Server_LastHeartbeat]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Server_LastHeartbeat] ON [HangFire].[Server]
(
	[LastHeartbeat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Set_Score]    Script Date: 23-5-2024 13:35:58 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Score] ON [HangFire].[Set]
(
	[Key] ASC,
	[Score] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [AuthProvider]
GO
ALTER TABLE [dbo].[CarbonCaseItemCategories] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[CarbonCaseItemCategories] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Required]
GO
ALTER TABLE [dbo].[CarbonCaseItemCategoryTranslations] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[CarbonCaseItems] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[CarbonCaseItems] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[CarbonCaseItems] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[CarbonCaseItems] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[CarbonCaseItems] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [EstimatedUsage]
GO
ALTER TABLE [dbo].[CarbonCaseItemTranslations] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[CarbonCaseItemTranslations] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs] ADD  DEFAULT ((0)) FOR [CarbonCaseItemId]
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[EmissionIntensities] ADD  DEFAULT ('0001-01-01T00:00:00.0000000+00:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[EmissionIntensities] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAutoGenerated]
GO
ALTER TABLE [dbo].[EmissionIntensities] ADD  DEFAULT ('0001-01-01T00:00:00.0000000+00:00') FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[ProjectCharacteristics] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[ProjectCharacteristics] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[Sdg] ADD  DEFAULT ((0)) FOR [LanguageCode]
GO
ALTER TABLE [dbo].[SdgTranslations] ADD  DEFAULT ((0)) FOR [LanguageCode]
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
ALTER TABLE [dbo].[CarbonCaseItemCategoryTranslations]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseItemCategoryTranslations_CarbonCaseItemCategories_CarbonCaseItemCategoryId] FOREIGN KEY([CarbonCaseItemCategoryId])
REFERENCES [dbo].[CarbonCaseItemCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarbonCaseItemCategoryTranslations] CHECK CONSTRAINT [FK_CarbonCaseItemCategoryTranslations_CarbonCaseItemCategories_CarbonCaseItemCategoryId]
GO
ALTER TABLE [dbo].[CarbonCaseItems]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseItems_CarbonCaseItemCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CarbonCaseItemCategories] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CarbonCaseItems] CHECK CONSTRAINT [FK_CarbonCaseItems_CarbonCaseItemCategories_CategoryId]
GO
ALTER TABLE [dbo].[CarbonCaseItemTranslations]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseItemTranslations_CarbonCaseItems_CarbonCaseItemId] FOREIGN KEY([CarbonCaseItemId])
REFERENCES [dbo].[CarbonCaseItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarbonCaseItemTranslations] CHECK CONSTRAINT [FK_CarbonCaseItemTranslations_CarbonCaseItems_CarbonCaseItemId]
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseUserInputs_CarbonCaseItems_CarbonCaseItemId] FOREIGN KEY([CarbonCaseItemId])
REFERENCES [dbo].[CarbonCaseItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs] CHECK CONSTRAINT [FK_CarbonCaseUserInputs_CarbonCaseItems_CarbonCaseItemId]
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseUserInputs_FormField_FormFieldId] FOREIGN KEY([FormFieldId])
REFERENCES [dbo].[FormField] ([Id])
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs] CHECK CONSTRAINT [FK_CarbonCaseUserInputs_FormField_FormFieldId]
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseUserInputs_ProjectCharacteristics_CharacteristicId] FOREIGN KEY([CharacteristicId])
REFERENCES [dbo].[ProjectCharacteristics] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CarbonCaseUserInputs] CHECK CONSTRAINT [FK_CarbonCaseUserInputs_ProjectCharacteristics_CharacteristicId]
GO
ALTER TABLE [dbo].[CarbonCaseUserInputTranslations]  WITH CHECK ADD  CONSTRAINT [FK_CarbonCaseUserInputTranslations_CarbonCaseUserInputs_CarbonCaseUserInputId] FOREIGN KEY([CarbonCaseUserInputId])
REFERENCES [dbo].[CarbonCaseUserInputs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarbonCaseUserInputTranslations] CHECK CONSTRAINT [FK_CarbonCaseUserInputTranslations_CarbonCaseUserInputs_CarbonCaseUserInputId]
GO
ALTER TABLE [dbo].[ComparisonItemTranslations]  WITH CHECK ADD  CONSTRAINT [FK_ComparisonItemTranslations_ComparisonItems_ComparisonItemId] FOREIGN KEY([ComparisonItemId])
REFERENCES [dbo].[ComparisonItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComparisonItemTranslations] CHECK CONSTRAINT [FK_ComparisonItemTranslations_ComparisonItems_ComparisonItemId]
GO
ALTER TABLE [dbo].[DropdownFormFieldOptions]  WITH CHECK ADD  CONSTRAINT [FK_DropdownFormFieldOptions_FormField_DropdownFormFieldId] FOREIGN KEY([DropdownFormFieldId])
REFERENCES [dbo].[FormField] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DropdownFormFieldOptions] CHECK CONSTRAINT [FK_DropdownFormFieldOptions_FormField_DropdownFormFieldId]
GO
ALTER TABLE [dbo].[ProjectCharacteristics]  WITH CHECK ADD  CONSTRAINT [FK_ProjectCharacteristics_FormField_FormFieldId] FOREIGN KEY([FormFieldId])
REFERENCES [dbo].[FormField] ([Id])
GO
ALTER TABLE [dbo].[ProjectCharacteristics] CHECK CONSTRAINT [FK_ProjectCharacteristics_FormField_FormFieldId]
GO
ALTER TABLE [dbo].[ProjectCharacteristicTranslations]  WITH CHECK ADD  CONSTRAINT [FK_ProjectCharacteristicTranslations_ProjectCharacteristics_ProjectCharacteristicId] FOREIGN KEY([ProjectCharacteristicId])
REFERENCES [dbo].[ProjectCharacteristics] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectCharacteristicTranslations] CHECK CONSTRAINT [FK_ProjectCharacteristicTranslations_ProjectCharacteristics_ProjectCharacteristicId]
GO
ALTER TABLE [dbo].[SdgTranslations]  WITH CHECK ADD  CONSTRAINT [FK_SdgTranslations_Sdg_SdgId] FOREIGN KEY([SdgId])
REFERENCES [dbo].[Sdg] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SdgTranslations] CHECK CONSTRAINT [FK_SdgTranslations_Sdg_SdgId]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
USE [master]
GO
ALTER DATABASE [co2] SET  READ_WRITE 
GO
PRINT N'Done seeding the database!'
GO
