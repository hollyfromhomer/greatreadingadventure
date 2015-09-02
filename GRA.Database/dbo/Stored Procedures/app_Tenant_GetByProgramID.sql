﻿
CREATE PROCEDURE [dbo].[app_Tenant_GetByProgramID] @PID INT
AS
SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DECLARE @TenID INT

SELECT @TenID = - 1

IF EXISTS (
		SELECT *
		FROM Programs
		WHERE PID = @PID
		)
	SELECT @TenID = TenID
	FROM Programs
	WHERE PID = @PID

RETURN @TenID