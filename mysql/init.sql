CREATE TABLE IF NOT EXISTS TestTable(Id int, Message varchar(150));
INSERT INTO TestTable(Id, Message) VALUES (1, 'Database connection is successful.');

create database organdonar;
use organdonar;

create table signup(name varchar(100), 
gender varchar(100), 
mobileno varchar(100), 
 emailid varchar(100),
pwd varchar(100));

create table uploadcases(name varchar(100), 
casedetails varchar(100), 
mobileno varchar(100), 
 photo varchar(100)
);

create table uploadreq(PatientName varchar(100),Gender varchar(100),
Requirement varchar(100), 
Hospitalname varchar(100), 
 Mobileno varchar(100),
ContactPerson varchar(100));


create table regh(name varchar(100), 
htype varchar(100), state varchar(100),city varchar(100),
mobileno varchar(100), 
 emailid varchar(100),
pwd varchar(100));

create table admin( u varchar(100), p varchar(100));
insert into admin values("sridharjoshi1603@gmail.com","a");

create table organdonar(fname varchar(100), 
mname varchar(100),lname varchar(100),addr varchar(100),dob varchar(100), gen varchar(100),age varchar(100),
state varchar(100), 
 city varchar(100),
pincode varchar(100),
bloodgroup varchar(100),orgando varchar(100),donarstatus varchar(100),photo varchar(100),adharno varchar(100),frnd1name varchar(100),frnd1mob varchar(100),frnd2name varchar(100),frnd2mob varchar(100),fam1name varchar(100),fam1mob varchar(100),
fam2name varchar(100),fam2mob varchar(100),llat varchar(100),llong varchar(100),donarid varchar(100));


create table cases(dname varchar(100), 
dmobile varchar(100), dphoto varchar(100),donated varchar(100),
rname varchar(100),  rmobile varchar(100),photo varchar(100));

create table feedback(Name varchar(100),Emailid varchar(100), Mobileno varchar(100),Feedback varchar(100));

