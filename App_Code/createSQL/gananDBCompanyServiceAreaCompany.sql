

select * from GananCompanyServiceArea  --טבלת גנן ואיזורים

CREATE TABLE [GananCompanyServiceArea] (
	[companyServiceAreaId] int NOT NULL , -- מספר איזורים בארץ מטבלת האיזורים
    [companyId] int NOT NULL,  --מספר של הגנן 
    FOREIGN KEY (companyServiceAreaId) REFERENCES companyServiceArea(companyServiceAreaId),
    FOREIGN KEY (companyId) REFERENCES company(companyId),
    CONSTRAINT pk_GananCompanyServiceArea PRIMARY KEY (companyServiceAreaId,companyId)
);

DROP TABLE GananCompanyServiceArea;

--    Primary key (companyServiceAreaId,companyId)

          
INSERT INTO [dbo].[GananCompanyServiceArea]
           ([companyServiceAreaId]
           ,[companyId]
           )
     VALUES
           (2
           ,3
           )     