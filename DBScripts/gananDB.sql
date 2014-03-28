
--כל הטבלאות שלנו

select * from Products
select * from Company --טבלת חברות של גננים
select * from companyServiceArea --טבלת איזורים בארץ
select * from GananCompanyServiceArea --טבלת גנן ואיזורים
select * from CompanyPicture --טבלת תמונות
select * from Rating -- טבלת רייטינג
select * from PhoneAreaCode -- טבלת איזורי טלפון

DROP TABLE Company;
DROP TABLE CompanyPicture;
DROP TABLE GananCompanyServiceArea;
DROP TABLE companyServiceArea;
DROP TABLE Rating;
drop table PhoneAreaCode;


select * 
from Company , companyServiceArea ,GananCompanyServiceArea 
where GananCompanyServiceArea.companyId=  Company.companyId
 and GananCompanyServiceArea.companyServiceAreaId=  companyServiceArea.companyServiceAreaId
 and companyServiceArea.companyServiceAreaId=2;

select companyServiceArea.companyServiceAreaName
from GananCompanyServiceArea , companyServiceArea
where GananCompanyServiceArea.companyId= 1 and 
GananCompanyServiceArea.companyServiceAreaId= companyServiceArea.companyServiceAreaId

INSERT INTO [dbo].[Company] ([companyCode] ,[companyName] ,[companyPhoneAreaCode1] ,[companyPhoneNumber1] ,[companyPhoneAreaCode2] ,[companyPhoneNumber2],[companyCity],[companyAddress],[companyGanan] ,[companyArch] ,[companyDescs] ,[companyEmail],[companyLogoUrl])VALUES (5555, 'sdsd' ,4, 5464, 9, 3434, 'fdg', 'kflkgl', True, False, 'ddsd', 'asdasd@sadf.co.il', 'Images/images 4/1.jpg')

