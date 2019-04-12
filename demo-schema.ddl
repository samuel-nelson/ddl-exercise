drop table if exists bill;
drop table if exists customer;

create table customer (
	customerId binary(16) not null,
	customerFullName varchar(128),
	index(customerFullname),
	primary key (customerId)
);

create table bill (
   billId binary(16) not null,
	billCustomerId binary(16) not null,
	billStatus varchar (64),
	primary key(billId),
	foreign key(billCustomerId) references customer(customerId)
);