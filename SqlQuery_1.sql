SELECT			'SmartSheet_#03_DataCleanClientName'		AS			'SmartSheet_#03_DataCleanClientName',
				hbm_name.[NAME]								AS			ClientName
	FROM		[dbo].[HBM_CLIENT]							AS			hbm_client
				INNER
				JOIN
				[dbo].[HBM_NAME]							AS			hbm_name
				ON
				hbm_client.[NAME_UNO]						=			hbm_name.[NAME_UNO]
	WHERE		hbm_name.[NAME]								like		'%No New Work%'