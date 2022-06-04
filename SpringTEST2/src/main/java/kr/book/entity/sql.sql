create table members(
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

create sequence mem_seq
