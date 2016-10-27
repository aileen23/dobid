-- reply/reply.sql


-- ������̺�
drop table reply;
create table reply(
   no       number primary key,   -- ��� ��ȣ
   name     varchar2(15) not null,
   content  varchar2(600) not null
);

drop sequence reply_seq;
create sequence reply_seq
       start with 1
       increment by 1
       nocycle
       nocache;






