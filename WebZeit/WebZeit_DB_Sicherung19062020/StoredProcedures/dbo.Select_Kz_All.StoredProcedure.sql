/****** Object:  StoredProcedure [dbo].[Select_Kz_All]    Script Date: 19.06.2020 12:16:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Kz_All]
AS SET NOCOUNT ON;
BEGIN
	Select Kurzzeichen from personal;
END 
GO
