

select * from gananDBCompanyServiceAreaCompany

CREATE TABLE [gananDBCompanyServiceAreaCompany] (
	[companyServiceAreaId] int NOT NULL , -- מספר איזורים בארץ מטבלת האיזורים
    [companySourceServiceAreaName] int NOT NULL,  --מספר של הגנן 
    FOREIGN KEY (companyServiceAreaId) REFERENCES companyServiceArea(companyServiceAreaId),
    FOREIGN KEY (companySourceServiceAreaName) REFERENCES company(companyId),
    Primary key (companyServiceAreaId)
)

