USE master ;
IF EXISTS(select * from sys.databases where name='jspdb')
BEGIN
   ALTER DATABASE jspdb 
   SET RESTRICTED_USER 
   WITH ROLLBACK IMMEDIATE ;
   DROP DATABASE jspdb ;
END
CREATE DATABASE jspdb ;

USE jspdb;

if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'member42')
    drop table member42;
    
CREATE TABLE  Member42 (
  memberId   	  varchar(32) Primary Key ,
  password   	  varchar(32),
  name            varchar(32),
  address         varchar(64),
  phone           varchar(15),
  birthday        datetime,
  registerdate 	  datetime,
  picture         image,
  weight          float   
);      

INSERT INTO Member42 (memberId, password, name, address, phone, birthday,  registerdate, weight)
values ('micky', '123', '米小薯', '台中市文心南路三段５８巷２２０號', '04-67891234', '1975-02-17', CURRENT_TIMESTAMP, 60);

-- select * from Member42;
