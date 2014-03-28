
select * from PhoneAreaCode

DROP TABLE PhoneAreaCode;

CREATE TABLE [PhoneAreaCode] (
	[ratingId] int IDENTITY NOT NULL Primary key , --���� �� �� ������
	[companyId] int NOT NULL , --���� �� �����
    [ratingCustomerFirstName] varchar (20) not null , --�� ���� �� �����
    [ratingCustomerLastName] varchar (20) not null , --�� ����� �� �����
    [ratingPhoneAreaCode] int ,--�����- ������
	[ratingPhoneNumber] int ,--�����- ����
	[ratingEmail] varchar (40) not null , --����
    [ratingOpinion] varchar (150) not null , --���� ���
	[ratingPrice] int not null,-- ����- �����
	[ratingProfessional] int not null, -- ��������
	[ratingCreativity] int not null, -- ��������
	[ratingService] int not null , -- ������- ��������
	[ratingRead] bit  , -- ���� �� ��
	[ratingActive] bit, --���� �� �� ���� �"� ������
    FOREIGN KEY (companyId) REFERENCES company(companyId),
)

           
INSERT INTO [dbo].[rating]
           ([companyId]
           ,[ratingCustomerFirstName]
           ,[ratingCustomerLastName]
           ,[ratingPhoneAreaCode]
           ,[ratingPhoneNumber]
           ,[ratingEmail]
           ,[ratingOpinion]
           ,[ratingPrice]
           ,[ratingProfessional]
           ,[ratingCreativity]
           ,[ratingService]
           ,[ratingRead]
           ,[ratingActive]
           )
     VALUES
          (2
           ,'����'
           ,'������'
           ,03
           ,6754396
           ,'mayan@walla.com'
           ,'���� ��� ��� �� �����'
           ,5
           ,3
           ,2
           ,2
           ,1
           ,1
           )


select companyLogoUrl from Company where companyId=3 

UPDATE Company
SET companyLogoUrl='images/images 3/image logo/messi.jpg'
WHERE companyLogoUrl='images/images 2/image logo/messi.jpg';




ALTER TABLE Company
ADD companyLogoUrl varchar (80)

ALTER TABLE Company
DROP COLUMN companyImgUrl 




