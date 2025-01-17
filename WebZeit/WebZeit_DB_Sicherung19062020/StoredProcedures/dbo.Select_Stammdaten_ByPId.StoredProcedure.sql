/****** Object:  StoredProcedure [dbo].[Select_Stammdaten_ByPId]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Stammdaten_ByPId]
@PId int as set nocount on;
BEGIN
	SELECT idPersonal, Kurzzeichen, Vorname,Nachname, abteilung.Abteilungsname,Telefonnummer,AnwesendStatus
    FROM personal,abteilung 
    WHERE personal.idPersonal = @PId and abteilung.idAbteilung = personal.idAbteilung;
END 
GO
