create table crowdfund(cfind int primary key,name varchar(20),address varchar(20),gstno int); 

insert into crowdfund values(1,"abjfunding","madurai",1234567890); 

insert into crowdfund values(2,"terracafunding","chennai",1534567890); 

insert into crowdfund values(4,"funding","covai",1234569490); 

insert into crowdfund values(5,"greatfunding","salem",1254569490); 

select *from crowdfund; 

create table users(userid int primary key,cfind int,foreign key(cfind) references crowdfund(cfind),username varchar(20),useraddress varchar(20),userdob date); 

desc users; 

insert into users values(101,1,"mukesh","madurai","2025-05-03"); 

insert into users values(102,1,"maddy","chennai","2025-05-04"); 

insert into users values(103,2,"ranjith","dindugal","2025-05-07"); 

insert into users values(104,2,"arulnavven","ramnad","2025-05-17"); 

select *from users; 

create table supplier(supplierid int primary key,suppliername varchar(20),supplieraddress varchar(20),supplieramount decimal); 

insert into supplier values(001,"Ram","chennai",5000.00); 

insert into supplier values(002,"Raj","chennai",6000.00); 

insert into supplier values(003,"Ravi","chennai",7000.00); 

insert into supplier values(004,"muki","chennai",10000.00); 

select *from supplier; 

create table details(supplierid int,userid int,primary key(supplierid,userid),foreign key(supplierid) references supplier(supplierid),foreign key(userid)  references users(userid)); 

desc details; 

insert into details values(1,101); 

insert into details values(1,102); 

insert into details values(2,102); 

insert into details values(3,103); 

select *from details; 

select count(cfind) as "Total crowd fund" from crowdfund; 

select length(suppliername) from supplier; 

select users.username,crowdfund.name from users join crowdfund where crowdfund.cfind=users.cfind; 

update  crowdfund set name="thaifunding" where cfind=4; 

update supplier set supplieraddress="Madurai" where supplierid=4; 

delete from crowdfund where cfind=5; 

truncate supplier; 

drop table crowdfund; 