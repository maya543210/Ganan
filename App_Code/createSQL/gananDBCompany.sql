

select * from Company

CREATE TABLE [Company] (
	[companyId] int IDENTITY NOT NULL , --���� �� �� �����
    [companyCode] int , --�.�. �� �����
    [companyName] varchar (40)  NOT NULL, --�� �����
	[companyPhoneAreaCode1] int NOT NULL,
	[companyPhoneNumber1] int NOT null,
	[companyPhoneAreaCode2] int NULL,
	[companyPhoneNumber2] int NULL,
	[companyCity] varchar (20) NOT NULL, --��� �� �����
	[companyAddress] varchar (30) NOT NULL, --�����: ����, ���� ���
	[companyGanan] bit default (0), --�����?
	[companyArch] bit default (0) , --��������?
	[companyDescs] varchar (150) NOT NULL , --����� ��� �� �����
	[companyEmail] varchar (30) NOT NULL, --����
	Primary key (companyId)
)
           
INSERT INTO [dbo].[Company]
           ([companyCode]
           ,[companyName]
           ,[companyPhoneAreaCode1]
           ,[companyPhoneNumber1]
           ,[companyPhoneAreaCode2]
           ,[companyPhoneNumber2]
           ,[companyCity]
           ,[companyAddress]
           ,[companyGanan]
           ,[companyArch]
           ,[companyDescs]
           ,[companyEmail]
           )
     VALUES
           ('thina'
           ,21
           ,'images/Product/thina.jpg'
           ,10
           ,0
           )



