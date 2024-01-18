drop database if exists QuanLiBanHang;
create database if not exists QuanLiBanHang;

use QuanLiBanHang;

create table Customer(
cID int auto_increment primary key,
cName varchar(100) not null,
cAge int not null
);

create table Orderr(
oID int auto_increment primary key,
oDate datetime not null,
oTotalPrice double not null,
cID int,
foreign key (cID) references Customer(cID)
);

create table Product(
pID int auto_increment primary key,
pName varchar(50) not null,
pPrice double not null
);

create table OrderDetail(
oID int,
pID int,
odQTY varchar(100),
unique (oID, pID),
foreign key (oID) references Orderr(oID),
foreign key (pID) references Product(pID)
);