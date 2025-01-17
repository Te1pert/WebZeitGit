/****** Object:  StoredProcedure [dbo].[Select_Mitarbeiter_BySearch]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Mitarbeiter_BySearch] 
@SearchString varchar(20) AS SET NOCOUNT OFF;
BEGIN
	SELECT distinct
		personal.Vorname,
		personal.Nachname,
		abteilung.Abteilungsname,
		personal.Telefonnummer,
		personal.idPersonal,
		personal.AnwesendStatus
			from personal JOIN abteilung ON
				(personal.idPersonal = abteilung.idAbteilung)
				

	WHERE 
		personal.Vorname like @SearchString+'%' or
		personal.Nachname like @SearchString+'%' or
		personal.Kurzzeichen like @SearchString+'%'
		
	

				
END
GO
