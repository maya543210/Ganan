
select * from PhoneAreaCode

DROP TABLE PhoneAreaCode;

CREATE TABLE [PhoneAreaCode] (
	[ratingId] int IDENTITY NOT NULL Primary key , --מספר רץ של הדירוג
	[companyId] int NOT NULL , --מספר של החברה
    [ratingCustomerFirstName] varchar (20) not null , --שם פרטי של המדרג
    [ratingCustomerLastName] varchar (20) not null , --שם משפחה של המדרג
    [ratingPhoneAreaCode] int ,--טלפון- קידומת
	[ratingPhoneNumber] int ,--טלפון- מספר
	[ratingEmail] varchar (40) not null , --מייל
    [ratingOpinion] varchar (150) not null , --חוות דעת
	[ratingPrice] int not null,-- מחיר- כספית
	[ratingProfessional] int not null, -- מקצועיות
	[ratingCreativity] int not null, -- יצירתיות
	[ratingService] int not null , -- אדיבות- שירותיות
	[ratingRead] bit  , -- מוצג או לא
	[ratingActive] bit, --נקרא או לא נקרא ע"י האדמין
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
           ,'מעין'
           ,'פצפוני'
           ,03
           ,6754396
           ,'mayan@walla.com'
           ,'מחיר טוב אבל לא משקיע'
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




