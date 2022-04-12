Create database Work
use Work
Create table Worker(
	Id int identity not null unique,
	[Name] nvarchar(20),
	Surname nvarchar(30),
	Fathername nvarchar(20),
	Position nvarchar(30),
	Salary float

)


insert into Worker
values('Qezenfer','Haqverdiyev','Ferid'),
('Ferrux','Meherremov','Bayram'),
('Ahmet','Abdullazade','Ahmet')

Create table Position(
	[Name] nvarchar(20),
)
insert into Position
values('Little Admin'),
('Midle Admin'),
('Midle Admin')

Create table Branch(
	[Name] nvarchar(20),
)
insert into Branch
values('Genclik')


Create table Praduct(
	Id int identity not null unique,
	[Name] nvarchar(20),
	BuyPrice float,
	SellPrice float
)

insert into Praduct
values('Bred',0.35,0.65),
('Cola',0.7,1.12),
('RED Bull',1.4,1.9)

Create table Selling(
	Id int identity not null unique,
	PruductId int constraint PId_PruductId foreign key references Praduct(Id),
	WorkerId int constraint WId_WorkerId foreign key references Worker(Id),
	SellingData nvarchar(20)
)
--drop table Selling
insert into Selling(SellingData)
values('10-12-2020'),
('11-01-2021'),
('25-03-2021')

select Worker.Name as Names,Branch.Name as Branch from Selling
inner join  Worker
on Selling.Id=Worker.Id 

select * from Selling
full join  Praduct
on Selling.Id= Praduct.Id




