/****** Object:  StoredProcedure [dbo].[Insert_Message]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Message]
@PAbsenderKz varchar(3),@PEmpfaengerKz varchar(3),@PBetreff varchar(20),@PNachrichtText varchar(5000) as SET NOCOUNT ON;

BEGIN
     Insert into nachrichten(AbsenderKz,EmpfaengerKz,Betreff,NachrichtText) values(@PAbsenderKz,@PEmpfaengerKz,@PBetreff,@PNachrichtText);
END
GO
