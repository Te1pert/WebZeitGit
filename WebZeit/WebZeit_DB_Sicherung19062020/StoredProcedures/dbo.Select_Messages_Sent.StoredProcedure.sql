/****** Object:  StoredProcedure [dbo].[Select_Messages_Sent]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Messages_Sent]
@PKz varchar(3) as SET NOCOUNT ON;
BEGIN
	Select EmpfaengerKz,Betreff,SendeDatum,NachrichtText,idNachrichten,AbsenderKz from nachrichten where AbsenderKz = @PKz;
END ;;
GO
