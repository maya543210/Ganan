

select * from CompanyPicture

CREATE TABLE [CompanyPicture] (
	[imageId] int IDENTITY NOT NULL , --מספר רץ של התמונות
    [companyId] int not null , --מספר זיהוי של החברה
    [imageUrl] varchar (50) NOT NULL, --URL
	[imageDescription] varchar (200) null , --תיאור
	FOREIGN KEY (companyId) REFERENCES Company(companyId),
	Primary key (imageId)
)

drop table CompanyPicture;


INSERT INTO [dbo].[CompanyPicture]
           ([companyId]
           ,[imageUrl]
           ,[imageDescription]
           )
     VALUES
           (
           3
           ,'images/images 3/5.jpg'
           ,'גינה שעיצבנו ללקוח'
           )

select * from CompanyPicture

UPDATE CompanyPicture
SET imageUrl='images/images 2/1.jpg'
WHERE imageUrl='images/images 1/7.jpg';
 
UPDATE CompanyPicture
SET companyId=2
WHERE companyId=1 and imageid=7;
 
 select * from CompanyPicture
          
INSERT INTO [dbo].[CompanyPicture]
           ([companyId]
           ,[imageUrl]
           ,[imageDescription]
           )
     VALUES
           (2
           ,'images/images 2/8.jpg'
           ,'תמונה ממחישה'
           )
           
 select * from CompanyPicture

select companyLogoUrl from Company

select CompanyPicture.imageId, CompanyPicture.imageUrl
from CompanyPicture, Company
where CompanyPicture.companyId=Company.companyId and Company.companyId=1;


select companyServiceArea.companyServiceAreaName
from GananCompanyServiceArea, companyServiceArea
where companyServiceArea.companyServiceAreaId= GananCompanyServiceArea.companyServiceAreaId 
and GananCompanyServiceArea.companyId=2

