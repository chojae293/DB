-- DB 생성
CREATE DATABASE db_member;

show databases;

use db_member;

-- TABLE 생성ETX 
CREATE TABLE tbl_member(
	memNo		int				primary key		auto_increment,
	memId 		varchar(20)		not null		unique,
    memPw 		varchar(20)		not null,
    memMail 	varchar(50)		not null,
    memPhone 	varchar(50),
    memRegDate 	TIMESTAMP	default		current_timestamp,
    memModDate 	TIMESTAMP   default		current_timestamp   on update	current_timestamp
);

show tables;

desc tbl_member;

-- CURD
-- DATA CREATE
insert into tbl_member(memId, memPw, memMail, memPhone) 
values('gildong', '1234', 'gildong@naver.com', '010-1234-1234');

insert into tbl_member(memId, memPw, memMail, memPhone) 
values('chanho', '0000', 'chanho@naver.com', '010-1111-1111');

insert into tbl_member(memId, memPw, memMail, memPhone) 
values('seari', '1111', 'seari@naver.com', '010-0000-0000');

-- alter table
-- 컬럼 추가
alter table tbl_member add column membirth varchar(30);

-- 컴럼 순서 변경 
alter table tbl_member modify column memBirth varchar(30) after memPhone;

-- 컴럼 삭제
alter table tbl_member drop column memBirth;

-- data read
select * from tbl_member;
select memId, memPw from tbl_member;

-- data update
update tbl_member set memPhone = '010-0000-1111' where memNo = 'seari'; 

-- data delete
delete from tbl_member where memId = 'gildong';

-- data table
drop table tbl_member;

-- delete database
drop database db_member;

