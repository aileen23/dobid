-- reply/reply.sql

drop table reply_freedom;
create table  reply_freedom(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(30) not null,
   content  varchar2(600) not null,
   num  number not null
);
       

-- 공지사항 
drop sequence reply_freedom_seq;
create sequence reply_freedom_seq
       start with 1
       increment by 1
       nocycle
       nocache;
       
-- 공지사항 
 drop table reply_notice;
create table  reply_notice(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(30) not null,
   content  varchar2(600) not null,
   num  number not null
);
       

drop sequence reply_notice_seq;
create sequence reply_notice_seq
       start with 1
       increment by 1
       nocycle
       nocache;
       
       
       
       
       
       select r.no, r.name, r.content, r.num, m.nickname
       from  reply_freedom r, member m
       where m.member_id = r.name
       order by no;

       select r.no, r.name, r.content, r.num, m.nickname
       from  reply_freedom r, member m
       order by no;
       
       select r.no, r.name, r.content, r.num, m.nickname,f
       from  reply_freedom r, member m, freeboard f
       where m.member_id = r.name and r.num = f.basic_board_num
       order by no;
       
	select * from REPLY_FREEDOM;


-- 테스트
select r.no, r.name, r.content, r.num, m.nickname
       from  reply_freedom r, member m
       where m.member_id = r.name and num = 40
       order by no;

       select * from REPLY_FREEDOM;
       
              delete  reply_freedom
       where no=5 and name=123456;

