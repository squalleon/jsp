select version();

show databases;
use mysql;
show tables;
desc db;

create user 'multi'@'localhost' identified by 'media';
grant all privileges on *.* to 'multi'@'localhost';
desc user;
select * from user;
flush privileges ;

create database gboard;
use gboard;
create table guestboard(
name varchar(10),
email varchar(50),
inputdate varchar(40) primary key,
subject varchar(20),
content text);

create database fboard;
use fboard;
create table freeboard(
  id		int primary key,
  name		varchar(10) not null,
  password	varchar(10),
  email		varchar(50),
  subject		varchar(50) not null,
  content		text not null,
  inputdate	varchar(20) not null,
  masterid	int default 0,
  readcount	int default 0,
  replynum	int default 0,
  step		int default 0
);
select * from freeboard;

create database dboard;
use dboard;
create table databoard(
  id		int primary key,
  name		varchar(10) not null,
  password	varchar(10) not null,
  email		varchar(50),
  subject		varchar(50) not null,
  content		text not null,
  inputdate	varchar(20) not null,
  masterid	int default 0,
  readcount	int default 0,
  replynum	int default 0,
  step		int default 0,
  filename	varchar(50),
  filesize	int default 0
);

create database shop;
use shop;
create table product(
  id		int primary key,
  category	varchar(10) not null,
  wname		varchar(20) not null,
  pname		varchar(20) not null,
  sname		varchar(20) not null,
  price		int default 0,
  downprice	int default 0,
  inputdate	varchar(20),
  stock		int default 0,
  description	text,
  small		varchar(20),
  large		varchar(20)
);

create table saleorder(
  id		int primary key,
  name		varchar(20) not null,
  orderdate	varchar(20) not null,
  addr		varchar(50) not null,
  tel		varchar(20) not null,
  pay		varchar(10) not null,
  cardno	varchar(20) not null,
  prodcount	int default 0,
  total		int default 0
);

create table item(
 orderid	int not null,
 mynum		int not null,
 prodid		int not null,
 pname		varchar(40),
 quantity	int default 0,
 price		int default 0
);

create database member;
use member;
CREATE TABLE `zipcode` (
                           `SEQ` int(5) NOT NULL,
                           `ZIPCODE` varchar(7) DEFAULT NULL,
                           `SIDO` varchar(4) DEFAULT NULL,
                           `GUGUN` varchar(15) DEFAULT NULL,
                           `DONG` varchar(52) DEFAULT NULL,
                           `BUNJI` varchar(17) DEFAULT NULL,
                           PRIMARY KEY (`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
select * from zipcode;
