

select * from Company

CREATE TABLE [Company] (
	[companyId] int IDENTITY NOT NULL , --מספר רץ של החברה
    [companyCode] int , --ח.פ. של החברה
    [companyName] varchar (40)  NOT NULL, --שם החברה
	[companyPhoneAreaCode1] int NOT NULL,
	[companyPhoneNumber1] int NOT null,
	[companyPhoneAreaCode2] int NULL,
	[companyPhoneNumber2] int NULL,
	[companyCity] varchar (20) NOT NULL, --עיר של החברה
	[companyAddress] varchar (30) NOT NULL, --כתובת: רחוב, מספר בית
	[companyGanan] bit default (0), --גננים?
	[companyArch] bit default (0) , --אדריכלים?
	[companyDescs] varchar (150) NOT NULL , --תיאור קצר של החברה
	[companyEmail] varchar (30) NOT NULL, --מייל
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



