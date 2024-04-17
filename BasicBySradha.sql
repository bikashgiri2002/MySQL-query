CREATE DATABASE basic;
USE basic;
create table student(name varchar(20),address varchar(50),mobile varchar(10));
alter table student drop column address;
desc student;