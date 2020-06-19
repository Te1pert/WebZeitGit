/****** Object:  StoredProcedure [dbo].[Insert_Person]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Person]
@PVorname varchar(45), @PNachname varchar(45), @PidAbteilung INT as SET NOCOUNT ON;
BEGIN
	Insert into dbo.personal
    (
    Vorname,
    Nachname,
    idAbteilung
    ) 
    values 
    (
    @PVorname,
    @PNachname,
    @PidAbteilung
    );

END 
GO
