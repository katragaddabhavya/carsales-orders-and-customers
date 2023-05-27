create table customer(
customerid int,
firstname varchar(20),
lastname varchar(20),
city varchar(20),
rating int,
salesid int,
primary key(customerid),
  foreign key(salesid) References customer(customerid)
);
desc customer;
drop table customer;
insert into customer values(2001,"hoffman","anny","london",100,1001);
insert into customer values(2002,"giovanni","jenny","rome",200,1003);
insert into customer values(2003,"liu","william","san jose",100,1002);
insert into customer values(2004,"harry","grass","berlin",300,1002);
insert into customer values(2005,"clemans","john","london",200,1001);
insert into customer values(2006,"fanny","john","san jose",200,1005);
insert into customer values(2007,"jonathan","bob","rome",300,1004);
select * from customer;
create table orders(
orderid int,
amount int,
orderdate varchar(10),
customerid int,
primary key(orderid),
foreign key(customerid)references orders(orderid)
);
desc orders;
drop table orders;
insert into orders values(3001,123,"01-02-2020",2001);
insert into orders values(3003,187,"02-10-2020",2007);
insert into orders values(3002,100,"30-07-2020",2003);
insert into orders values(3005,201,"9-10-2011",2007);
insert into orders values(3009,145,"10-10-2012",2002);
insert into orders values(3007,167,"2-04-2021",2002);
insert into orders values(3008,189,"2-03-1999",2006);
insert into orders values(3010,100,"18-09-2000",2004);
select * from orders;