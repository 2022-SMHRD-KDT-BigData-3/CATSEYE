create table member(
	MBR_NBR number not null,      --회원번호
	MBR_ID varchar2(50) not null,  --아이디	id
	MBR_PW varchar2(30) not null,  --비번		password
	MBR_NAME varchar2(50) not null,   --이름	name
	MBR_CNT varchar2(30) not null,  --연락처	phone
	MBR_SHOP varchar2(50) not null,	-- 관리매장	shop
	MBR_POS	varchar2(50) not null, 	-- 직급	position
	MBR_MAIL varchar2(50) not null, -- 이메일 email1+email2
	CONSTRAINT MEMBERS_MBR_NBR_PK PRIMARY KEY(MBR_NBR)
)

select 
create sequence mem_seq
select * from member

insert into member values(mem_seq.nextval, 'id', 'password', 'name', 'phonem', 'shop', 'pos', 'email');




CREATE TABLE DETECTION_BOARD (
	NUM NUMBER NOT NULL,
	PHOTO VARCHAR2(100) NOT NULL,
	CONTENT VARCHAR2(500) NOT NULL,
	INDATE DATE DEFAULT SYSDATE NOT NULL,
	CCTV NUMBER NOT NULL,
	SITUATION NUMBER NOT NULL,
 CONSTRAINT DETECTION_NUM_PK PRIMARY KEY(NUM)
 )
 
 update DETECTION_BOARD 
 set INDATE=TO_DATE( '2009/06/01 11:00:00', 'YYYY/MM/DD HH:MI:SS') where num=1
 
 create sequence dect_seq
 
 drop table DETECTION_BOARD
 select * from DETECTION_BOARD
 
 insert into DETECTION_BOARD values(dect_seq.nextval, 'photo', 'content', sysdate, 2, 0)
 insert into DETECTION_BOARD values(dect_seq.nextval, 'photo2', 'content2', sysdate, 1, 1)
  insert into DETECTION_BOARD values(dect_seq.nextval, 'photo2', ' ', sysdate, 1, 1)
 
 