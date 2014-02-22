
CREATE TABLE [Products] (
	[id] int IDENTITY NOT NULL ,
    [name] varchar (20) NOT NULL,
    [price] decimal NOT NULL,
	[imageUrl] varchar (100) NULL,
	[amount] int not null,
	[discount] bit default (0),
	Primary key (id)
)
GO

alter table Products 
add constraint ck_discount check (discount =0 or discount =1);

select * from Products

delete from Products where id=6;
    
           
INSERT INTO [dbo].[Products]
           ([name]
           ,[price]
           ,[imageUrl]
           ,[amount]
		   ,[discount]
           )
     VALUES
           ('bamba'
           ,13
           ,'images/Product/bamba.jpg'
           ,3
           ,0
           )     
           
INSERT INTO [dbo].[Products]
           ([name]
           ,[price]
           ,[imageUrl]
           ,[amount]
		   ,[discount]
           )
     VALUES
           ('halva'
           ,10
           ,'images/Product/halva.jpg'
           ,15
           ,0
           )
           
INSERT INTO [dbo].[Products]
           ([name]
           ,[price]
           ,[imageUrl]
           ,[amount]
		   ,[discount]
           )
     VALUES
           ('thina'
           ,21
           ,'images/Product/thina.jpg'
           ,10
           ,0
           )
         
INSERT INTO [dbo].[Products]
           ([name]
           ,[price]
           ,[imageUrl]
           ,[amount]
		   ,[discount]
           )
     VALUES
           ('orez'
           ,6
           ,'images/Product/orez.jpg'
           ,54
           ,0
           )
           
INSERT INTO [dbo].[Products]
           ([name]
           ,[price]
           ,[imageUrl]
           ,[amount]
		   ,[discount]
           )
     VALUES
           ('sokolad_hashar'
           ,8
           ,'images/Product/sokolad_hashar.jpg'
           ,31
           ,0
           )










