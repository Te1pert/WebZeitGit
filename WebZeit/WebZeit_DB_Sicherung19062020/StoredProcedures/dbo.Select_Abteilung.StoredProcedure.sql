/****** Object:  StoredProcedure [dbo].[Select_Abteilung]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Select_Abteilung] as SET NOCOUNT ON;
BEGIN
	select idAbteilung,Abteilungsname from dbo.abteilung;
END
GO
