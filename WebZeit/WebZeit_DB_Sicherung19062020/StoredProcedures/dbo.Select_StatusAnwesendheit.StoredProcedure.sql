/****** Object:  StoredProcedure [dbo].[Select_StatusAnwesendheit]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_StatusAnwesendheit]
@Pid int AS SET NOCOUNT ON
BEGIN
	SELECT AnwesendStatus from dbo.personal where idPersonal = @Pid;
END
GO
