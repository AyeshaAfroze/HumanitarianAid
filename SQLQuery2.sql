

create table AdminDetails(
A_id int primary key identity(1,1),
A_name Nvarchar(50) not null,
A_mail Nvarchar(50) null,
A_pass Nvarchar(50) not null,
A_gender Nvarchar(50) not null,
A_DOB date null,
A_address Nvarchar(100) not null,
A_phoneNo int  null

)

create table NeedyDetails(
N_id int primary key identity(1,1),
N_name Nvarchar(50) not null,
N_mail Nvarchar(50) null,
N_Password Nvarchar(70) not null,
N_ConfirmPassword varchar(70) not null,
N_dob varchar(70),
N_age int not null,
N_annualincome int null,
N_gender varchar(50) not null,
N_address varchar(50) not null,
N_phoneNo int not null,
N_nationality varchar(70) not null,
N_occupation varchar(70) not null,




)


create table DonorDetails(
D_id int primary key identity(1,1),
D_name Nvarchar(50) not null,
D_mail Nvarchar(50) not null,
D_Password Nvarchar(70) not null,
D_ConfirmPassword Nvarchar(70) not null,
D_dob Nvarchar(70) not null,
D_age int not null,
D_annualincome int not null,
D_gender Nvarchar(50) not null,
D_address Nvarchar(50) not null,
D_phoneNo int not null,
D_nationality Nvarchar(70) not null,
D_occupation Nvarchar(70) not null



)

CREATE TABLE [dbo].[Donationtable]
(
[Productid] INT IDENTITY(1,1) PRIMARY KEY,
[Producttype] NVARCHAR(40) NOT NULL,
[Productname] NVARCHAR(40) NOT NULL,
[Quantity] DECIMAL(18,2) NOT NULL,
[Unit] nvarchar(40) NOT NULL,
[DateOfDonation] Date NOT NULL,
[D_ID] INT not null FOREIGN KEY REFERENCES donordetails(D_ID),

)

CREATE TABLE [dbo].[Donationdetails]
(
[Donationid] INT IDENTITY(1,1) PRIMARY KEY,
[D_ID] INT not null FOREIGN KEY REFERENCES donordetails(D_ID),
[ProcductID] INT not null FOREIGN KEY REFERENCES Donationtable(ProductiD),
)


CREATE TABLE [dbo].[Request]
(
[SL] INT IDENTITY(1,1) PRIMARY KEY,

[N_ID] INT not null FOREIGN KEY REFERENCES needydetails(N_ID),

[ProductName] NVARCHAR(40) NOT NULL,
[Quantity] DECIMAL(18,2) NOT NULL,
[unit] nvarchar(40) NOT NULL,

)
CREATE TABLE [dbo].[Donorratings]
(

[D_ID] INT not null FOREIGN KEY REFERENCES donordetails(D_ID),
[DonorRatings] INT not null
)

CREATE TABLE [dbo].[Ratings]
(
[LowestSale] INT not null,
[HeighestSale] INT not null,
ratings nvarchar(40)


)
CREATE TABLE [dbo].[DonationCount]
(

[D_ID] INT not null FOREIGN KEY REFERENCES donordetails(D_ID),
[NoOfDonatedProducts] INT not null
)

CREATE TABLE [dbo].[Records]
(
[SL] INT IDENTITY(1,1) PRIMARY KEY,
[D_ID] INT not null FOREIGN KEY REFERENCES donordetails(D_ID),
[N_ID] INT not null FOREIGN KEY REFERENCES needydetails(N_ID),
[P_ID] INT not null FOREIGN KEY REFERENCES Donationtable(productID),
[R_ProductName] NVARCHAR(40) NOT NULL,
[Quantity] DECIMAL(18,2) NOT NULL,
[unit] nvarchar(40) NOT NULL,

)
CREATE TABLE [dbo].[LogInAdmin]
(
[A_pass] INT IDENTITY(1,1) PRIMARY KEY,
[A_Mail] NVARCHAR(40) NOT NULL,


)





