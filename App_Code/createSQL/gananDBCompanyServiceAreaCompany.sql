

select * from gananDBCompanyServiceAreaCompany

CREATE TABLE [gananDBCompanyServiceAreaCompany] (
	[companyServiceAreaId] int NOT NULL , -- ���� ������� ���� ����� ��������
    [companySourceServiceAreaName] int NOT NULL,  --���� �� ���� 
    FOREIGN KEY (companyServiceAreaId) REFERENCES companyServiceArea(companyServiceAreaId),
    FOREIGN KEY (companySourceServiceAreaName) REFERENCES company(companyId),
    Primary key (companyServiceAreaId)
)

