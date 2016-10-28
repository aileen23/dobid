-- reply/reply.sql

drop table reply;
create table reply(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(30) not null,
   content  varchar2(600) not null
);

drop sequence reply_seq;
create sequence reply_seq
       start with 1
       increment by 1
       nocycle
       nocache;

-- 공지사항 테이블
drop table board_content_view_reply;
create table board_content_view_reply(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(30) not null,
   content  varchar2(600) not null
);

drop sequence board_content_view_reply_seq;
create sequence board_content_view_reply_seq
       start with 1
       increment by 1
       nocycle
       nocache;

-- 자유게시판 테이블
drop table board_freedom_write_reply;
create table board_freedom_write_reply(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(30) not null,
   content  varchar2(600) not null
);

drop sequence board_freedom_write_reply_seq;
create sequence board_freedom_write_reply_seq
       start with 1
       increment by 1
       nocycle
       nocache;





