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
       
 drop table reply_notice;
create table  reply_notice(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(30) not null,
   content  varchar2(600) not null,
   num  number not null
);
       

-- 공지사항 
drop sequence reply_notice_seq;
create sequence reply_notice_seq
       start with 1
       increment by 1
       nocycle
       nocache;
       
       select r.no, r.name, r.content, m.nickname
       from  reply_freedom r, member m
       where m.member_id = r.name
       order by no;







