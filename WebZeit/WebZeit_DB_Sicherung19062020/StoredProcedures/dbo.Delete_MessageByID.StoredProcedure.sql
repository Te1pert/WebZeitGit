/****** Object:  StoredProcedure [dbo].[Delete_MessageByID]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_MessageByID]
@id int as SET NOCOUNT ON;
BEGIN
	DELETE from nachrichten where idNachrichten = @id;
END
GO
