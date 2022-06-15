select *from MEMBER

select * from DETECTION_BOARD


 CREATE TABLE USERS_NBR (
	MBR_SHOP VARCHAR(20) NOT NULL,
	CCTV_NBR NUMBER NOT NULL,
	KIND NUMBER NOT NULL,
	USERS_NBR NUMBER NOT NULL,
	INDATE DATE DEFAULT SYSDATE
 )
 
select * from USERS_NBR





drop table USERS_NBR
insert into DETECTION_BOARD(num,photo,content,cctv,situation)
values(4,'test','test',4,4);

insert into USERS_NBR(MBR_SHOP,CCTV_NBR,USERS_NBR)
values('test',1,15);

