SELECT			'SmartSheet_#02_DataCleanClient'				AS	'SmartSheet_#02_DataCleanClient',
				HBM_CLIENT.CLIENT_UNO							AS	ClientUno, 
				HBM_CLIENT.CLIENT_CODE							AS	ClientCode, 
				HBM_CLIENT.CLIENT_NAME							AS	ClientName, 
				HBM_CLIENT.OPEN_DATE							AS	OpenOn,
				HBM_CLIENT.CLOSE_DATE							AS	CloseOn,
				HBM_CLIENT.STATUS_CODE							AS	StatusCode
	FROM		[dbo].[HBM_CLIENT]
	WHERE		LEN(HBM_CLIENT.CLIENT_CODE)						=	1			OR
				LEN(HBM_CLIENT.CLIENT_CODE)						=	3			OR
				LEN(HBM_CLIENT.CLIENT_CODE)						=	4			OR
				LEN(HBM_CLIENT.CLIENT_CODE)						=	6			OR
				LEN(HBM_CLIENT.CLIENT_CODE)						=	7 
	ORDER BY
				LEN(CLIENT_CODE)
