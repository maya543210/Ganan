

select * from GananCompanyServiceArea  --���� ��� ��������

CREATE TABLE [GananCompanyServiceArea] (
	[companyServiceAreaId] int NOT NULL , -- ���� ������� ���� ����� ��������
    [companyId] int NOT NULL,  --���� �� ���� 
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