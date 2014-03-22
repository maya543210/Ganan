

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
	[companyLogoUrl] varchar (80),
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
           ,[companyLogoUrl]
           )
     VALUES
           (2468
           ,'����� ���'
           ,09
           ,8975632
           ,04
           ,7958428
           ,'����'
           ,'����� 6'
           ,1
           ,0
           ,'���� ����� ���� ������ �� ����� ��� ������ �������. ������� ����� �� ������� ������� ��� ����'
           ,'gananmessi@gmail.co.il'
           ,'images/images 3/image logo/messi.jpg'
           )


select companyLogoUrl from Company where companyId=3 

UPDATE Company
SET companyLogoUrl='images/images 3/image logo/messi.jpg'
WHERE companyLogoUrl='images/images 2/image logo/messi.jpg';




ALTER TABLE Company
ADD companyLogoUrl varchar (80)

ALTER TABLE Company
DROP COLUMN companyImgUrl 




