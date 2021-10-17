CREATE TABLE [dbo].[Records1]
(
[SL] INT IDENTITY(1,1) PRIMARY KEY,
[D_ID] INT not null ,
[N_id] INT not null ,
[AppealId] INT not null ,
[Productname] NVARCHAR(40) not null ,
[Quantity] DECIMAL(18,2) NOT NULL ,
[Unit] nvarchar(40) NOT NULL ,

)
