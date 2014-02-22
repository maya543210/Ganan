

select * from companyServiceArea

CREATE TABLE [companyServiceArea] (
	[companyServiceAreaId] int IDENTITY NOT NULL , --מספר רץ של איזורים בארץ
    [companyServiceAreaName] varchar(15) NOT NULL,  --מספר רץ כמו של הגנן או הלקוח
    Primary key (companyServiceAreaId)
)

drop table companyServiceArea
           
INSERT INTO [dbo].[companyServiceArea]
           ([companyServiceAreaName]
           )
     VALUES
           ('צפון'
           )
INSERT INTO [dbo].[companyServiceArea]
           ([companyServiceAreaName]
           )
     VALUES
           ('שרון'
           )
INSERT INTO [dbo].[companyServiceArea]
           ([companyServiceAreaName]
           )
     VALUES
           ('מרכז'
           )
           
INSERT INTO [dbo].[companyServiceArea]
           ([companyServiceAreaName]
           )
     VALUES
           ('שפלה'
           )
           
INSERT INTO [dbo].[companyServiceArea]
           ([companyServiceAreaName]
           )
     VALUES
           ('ירושלים'
           )
          
INSERT INTO [dbo].[companyServiceArea]
           ([companyServiceAreaName]
           )
     VALUES
           ('הדרום'
           )
