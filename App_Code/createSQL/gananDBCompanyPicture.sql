

select * from CompanyPicture

CREATE TABLE [CompanyPicture] (
	[imageId] int IDENTITY NOT NULL , --���� �� �� �������
    [imageCompanyId] int not null , --���� ����� �� �����
    [imageUrl] varchar (50) NOT NULL, --URL
	[imageDescription] varchar (150) null , --�����
	FOREIGN KEY (imageCompanyId) REFERENCES Company(companyId),
	Primary key (imageId)
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



