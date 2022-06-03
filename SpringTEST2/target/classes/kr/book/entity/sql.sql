create table book(
	num number not null,
	title varchar2(50) not null,
	author varchar2(30) not null,
	company varchar2(50) not null,
	isbn varchar2(30) not null,
	count number not null,
	primary key(num)
)

create sequence book_num

insert into book
values(book_num.nextval, '자바', '이서연', '스인개', '1111111', 20);
insert into book
values(book_num.nextval, '스프링', '박매일', '스인개', '2222222', 13);
insert into book
values(book_num.nextval, 'css', '임승환', '스인개', '3333333', 35);
insert into book
values(book_num.nextval, '머신러닝', '황승민', '스인개', '4444444', 56);
insert into book
values(book_num.nextval, 'js', '정은향', '스인개', '5555555', 44);


select * from book;