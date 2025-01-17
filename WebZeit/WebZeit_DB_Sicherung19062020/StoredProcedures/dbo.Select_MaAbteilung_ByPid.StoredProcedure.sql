/****** Object:  StoredProcedure [dbo].[Select_MaAbteilung_ByPid]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_MaAbteilung_ByPid]
@Pid int as set nocount on;
BEGIN
	SELECT
		personal.Vorname,
		personal.Nachname,
		abteilung.Abteilungsname,
		personal.Telefonnummer,
		personal.idPersonal,
		personal.AnwesendStatus
			from abteilung,personal 
				where personal.idAbteilung = (Select personal.idAbteilung from personal where personal.idPersonal = @Pid)
					and personal.idAbteilung = abteilung.idAbteilung;
END
GO
