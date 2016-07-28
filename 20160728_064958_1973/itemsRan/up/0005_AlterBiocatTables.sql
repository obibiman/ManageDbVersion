ALTER TABLE [dbo].[LiteratureAuthor]  WITH CHECK ADD  CONSTRAINT [FK_LiteratureAuthor_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
GO
ALTER TABLE [dbo].[LiteratureAuthor] CHECK CONSTRAINT [FK_LiteratureAuthor_AuthorId]
GO
ALTER TABLE [dbo].[LiteratureAuthor]  WITH CHECK ADD  CONSTRAINT [FK_LiteratureAuthor_LiteratureId] FOREIGN KEY([LiteratureId])
REFERENCES [dbo].[Literature] ([LiteratureId])
GO
ALTER TABLE [dbo].[LiteratureAuthor] CHECK CONSTRAINT [FK_LiteratureAuthor_LiteratureId]
GO
ALTER TABLE [dbo].[TaxonAuthor]  WITH CHECK ADD  CONSTRAINT [FK_TaxonAuthor_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
GO
ALTER TABLE [dbo].[TaxonAuthor] CHECK CONSTRAINT [FK_TaxonAuthor_AuthorId]
GO
ALTER TABLE [dbo].[TaxonAuthor]  WITH CHECK ADD  CONSTRAINT [FK_TaxonAuthor_TaxonId] FOREIGN KEY([TaxonId])
REFERENCES [dbo].[Taxon] ([TaxonId])
GO
ALTER TABLE [dbo].[TaxonAuthor] CHECK CONSTRAINT [FK_TaxonAuthor_TaxonId]
GO
ALTER TABLE [dbo].[TaxonLiterature]  WITH CHECK ADD  CONSTRAINT [FK_TaxonLiterature_LiteratureId] FOREIGN KEY([LiteratureId])
REFERENCES [dbo].[Literature] ([LiteratureId])
GO
ALTER TABLE [dbo].[TaxonLiterature] CHECK CONSTRAINT [FK_TaxonLiterature_LiteratureId]
GO
ALTER TABLE [dbo].[TaxonLiterature]  WITH CHECK ADD  CONSTRAINT [FK_TaxonLiterature_TaxonId] FOREIGN KEY([TaxonId])
REFERENCES [dbo].[Taxon] ([TaxonId])
GO
ALTER TABLE [dbo].[TaxonLiterature] CHECK CONSTRAINT [FK_TaxonLiterature_TaxonId]
GO
/****** Object:  StoredProcedure [dbo].[sp_BiologyCatalogSequence]    Script Date: 4/20/2016 8:30:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

