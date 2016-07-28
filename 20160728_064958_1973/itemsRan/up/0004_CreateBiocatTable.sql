/****** Object:  Table [dbo].[Author]    Script Date: 4/20/2016 8:30:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorId] [int] NOT NULL,
	[Abbreviation] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](30) NULL,
	[SurName] [nvarchar](30) NULL,
	[Comment] [nvarchar](125) NULL,
	[TimeStamp] [timestamp] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [PK_Author_AuthorId] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Literature]    Script Date: 4/20/2016 8:30:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Literature](
	[LiteratureId] [int] NOT NULL,
	[ReferenceYear] [nvarchar](20) NOT NULL,
	[ReferenceYearSub] [varchar](2) NULL,
	[ReferenceDate] [datetime] NULL,
	[TitleofArticleBooktitle] [nvarchar](max) NULL,
	[InReferenceNumber] [int] NULL,
	[Journal] [nvarchar](255) NULL,
	[Volume] [nvarchar](50) NULL,
	[Page] [varchar](100) NULL,
	[Plate] [nvarchar](50) NULL,
	[Publisher] [nvarchar](255) NULL,
	[City] [nvarchar](50) NULL,
	[Comment] [nvarchar](255) NULL,
	[PdfId] [int] NULL,
	[TimeStamp] [timestamp] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [PK_Literature_LiteratureId] PRIMARY KEY CLUSTERED 
(
	[LiteratureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LiteratureAuthor]    Script Date: 4/20/2016 8:30:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiteratureAuthor](
	[LiteratureAuthorId] [int] NOT NULL,
	[LiteratureId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Ordering] [smallint] NULL,
 CONSTRAINT [PK_LiteratureAuthor_LiteratureAuthorId] PRIMARY KEY CLUSTERED 
(
	[LiteratureAuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Taxon]    Script Date: 4/20/2016 8:30:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Taxon](
	[TaxonId] [int] NOT NULL,
	[TaxonName] [nvarchar](50) NOT NULL,
	[TaxonType] [nvarchar](1) NOT NULL,
	[Sex] [nvarchar](5) NULL,
	[Level] [smallint] NOT NULL,
	[Parent] [varchar](8000) NULL,
	[LevelUp] [bigint] NULL,
	[TypeSpecies] [nvarchar](1) NULL,
	[OrigGenus] [nvarchar](50) NULL,
	[OrigSpelling] [nvarchar](50) NULL,
	[StartAge] [smallint] NULL,
	[EndAge] [smallint] NULL,
	[GeologicAge] [nvarchar](1) NULL,
	[RecentGenera] [int] NULL,
	[FossilGenera] [int] NULL,
	[RecentSpecies] [int] NULL,
	[FossilSpecies] [int] NULL,
	[Page] [nvarchar](20) NULL,
	[Illustration] [nvarchar](50) NULL,
	[TaxonComment] [varchar](max) NULL,
	[Commonname] [nvarchar](50) NULL,
	[TypeForGroup] [int] NULL,
	[TaxonKey] [int] NULL,
	[PhylumKey] [int] NULL,
	[OldKey] [int] NULL,
	[OldId] [bigint] NULL,
	[LevelUpOld] [int] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [PK_Taxon_TaxonId] PRIMARY KEY CLUSTERED 
(
	[TaxonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaxonAuthor]    Script Date: 4/20/2016 8:30:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxonAuthor](
	[TaxonAuthorId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[TaxonId] [int] NOT NULL,
	[Ordering] [smallint] NULL,
 CONSTRAINT [PK_TaxonAuthor_TaxonAuthorId] PRIMARY KEY CLUSTERED 
(
	[TaxonAuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaxonLiterature]    Script Date: 4/20/2016 8:30:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxonLiterature](
	[TaxonLiteratureId] [int] NOT NULL,
	[TaxonId] [int] NOT NULL,
	[LiteratureId] [int] NOT NULL,
 CONSTRAINT [PK_TaxonLiterature_TaxonLiteratureId] PRIMARY KEY CLUSTERED 
(
	[TaxonLiteratureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO