/****** Object:  StoredProcedure [dbo].[Select_Abteilung_ByPersonal]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Abteilung_ByPersonal]
@PKurzzeichen varchar(10) as SET NOCOUNT ON;
BEGIN
	select idAbteilung from Personal where Kurzzeichen = @PKurzzeichen;
END 
GO
