/****** Object:  StoredProcedure [dbo].[Select_Messages_Received]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Messages_Received] 
@PKz varchar(3) as SET NOCOUNT ON;
BEGIN
	Select AbsenderKz,Betreff,SendeDatum,NachrichtText,idNachrichten,EmpfaengerKz from nachrichten where EmpfaengerKz = @Pkz;
END
GO
