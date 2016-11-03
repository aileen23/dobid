--member ��� ���̺�
drop table member;
create table member(

member_id      			varchar2(30)    primary key,
name        			varchar2(15)    not null,
pass         			varchar2(30)    not null,
phone        			varchar2(15)    not null,
email        			varchar2(40)	not null,
address      			varchar2(300)	not null,
nickname     			varchar2(30)	not null,
introduction 			varchar2(1000)  not null,
birthday     			date			not null,
charging_amount 		number		    not null

);

--message ������ ���̺�
drop table message;
create table message(

member_id 				varchar2(30)	foreign key,
send_id 				varchar2(30)	not null,
title					varchar2(100)	not null,
contents				varchar2(600)	not null,
reception_check 		char			not null

);

--charge �������̺�
drop table charge;
create table charge(

member_id 				varchar2(30) 	foreign key,
charge_will_amount		number			not null,
charge_date				date			not null,
charge_type				varchar2(30)	not null,
charge_check			char			not null,
charge_before_amount	number			not null	

);

--auction ��� ���̺�
drop table auction;
create table auction(

auction_board_num		number			primary key,
seller_id 				varchar2(30)	not null,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,
main_image_path			varchar2(100)	not null,
explain_image_path		varchar2(500)	not null,
start_amount			number			not null,
categori				varchar2(30)	not null,
amount					number			not null,
end_date				date			not null,
regist_date				date			not null,
highest_price			number			not null,
highest_price_id 		varchar2(30)	not null,
hot_check				char			not null,
used_check				char			not null

);

--auction_seq (��� ���̺� �Խñ� ��ȣ) ������
drop sequence auction_seq;
create sequence auction_seq   start with 1   increment by 1   nocycle   nocache;

--auction_review ��� ���� ���̺�
drop table auction_review;
create table auction_review(

review_num 				number			primary key,
auction_board_num		number			foreign key,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,

);

--auction_review_seq (��Ÿ��� ���̺� �Խñ� ��ȣ) ������
drop sequence auction_review_seq;
create sequence auction_review_seq   start with 1   increment by 1   nocycle   nocache;

--auction_participant ��� ������ ���̺�
drop table auction_participant;
create table auction_participant(

auction_board_num		number			foreign key,
bid_price_amount		number			not null,
buyer_id 				varchar2(30)	not null,
bid_date				date			not null,
bid_check				char			not null

);

--groupbuy �������� ���̺�
drop table groupbuy;
create table groupbuy(

groupbuy_board_num		number			primary key,
title					varchar2(30)	not null,
contents				varchar2(3000)	not null,
main_image_path			varchar2(100)	not null,
explain_image_path		varchar2(500)	not null,
participant_num			number			not null,
categori				varchar2(30)	not null,
amount					number			not null,
end_date				date			not null,
regist_date				date			not null,
step_participant		number			not null,
step_discount			number			not null,
first_price				number			not null,
discount_price			number			not null,
now_step				number			not null

);

--groupbuy_seq  (���� ���� ���̺� �Խñ� ��ȣ) ������
drop sequence groupbuy_seq;
create sequence groupbuy_seq   start with 1   increment by 1   nocycle   nocache;

--groupbuy_review ���� ���� ���̺�
drop table groupbuy_review_seq;
create table groupbuy_review_seq(

review_num 				number			primary key,
group_board_num			number			foreign key,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,

);

--groupbuy_review_seq (�������� ���̺� �Խñ� ��ȣ) ������
drop sequence groupbuy_review_seq;
create sequence groupbuy_review_seq   start with 1   increment by 1   nocycle   nocache;

--groupbuy_participant �������� ������ ���̺�
drop table groupbuy_participant;
create table groupbuy_participant(

groupbuy_board_num		number			foreign key,
buy_price_amount		number			not null,
buyer_id 				varchar2(30)	not null,
buy_date				date			not null,
buy_check				char			not null

);



--freeboard �Խñ�(�⺻) ���̺� / ����, ����, ����
drop table freeboard;
create table freeboard(

basic_board_num			number			primary key,
member_id 				varchar2(30)	not null,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,
image_path				varchar2(500)	not null,
cilck_count				number			not null,
upload_date				date			not null

);

--freeboard_seq  (�Ϲ� �Խ��� ��ȣ) ������
drop sequence freeboard_seq
create sequence freeboard_seq   start with 1   increment by 1   nocycle   nocache;

--noticeboard �Խñ�(�⺻) ���̺� / ����, ����, ����
drop table noticeboard;
create table noticeboard(

basic_board_num			number			primary key,
member_id 				varchar2(30)	not null,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,
image_path				varchar2(500)	not null,
cilck_count				number			not null,
upload_date				date			not null

);

--noticeboard_seq  (�Ϲ� �Խ��� ��ȣ) ������
drop sequence noticeboard_seq
create sequence noticeboard_seq   start with 1   increment by 1   nocycle   nocache;

--comment ��� ���̺�
drop table comment;
create table comment(

comment_num				number			primary key,
member_id				varchar2(30)	not null,
contents				varchar2(100)	not null,
upload_date				date			not null

);

--comment_seq  (��� ��ȣ) ������
drop sequence comment_seq
create sequence comment_seq   start with 1   increment by 1   nocycle   nocache;

--service_ono ������ 1��1 ���� ���̺�
drop table service_ono;
create table service_ono(

member_id 				varchar2(30)	foreign key,
title					varchar2(100)	not null,
categori				varchar2(30)	not null,
contents				varchar2(3000)  not null,
image_path				varchar2(500)	not null,
upload_date				date			not null

);

--service_report ������ 1��1 ���� ���̺�
drop table service_report;

create table service_report(
member_id 				varchar2(30)	foreign key,
title					varchar2(100)	not null,
contents				varchar2(3000)  not null,
image_path				varchar2(500)	null,
upload_date				date			not null
);

--service_answer ������ 1��1 ���� �亯 ���̺�
drop table service_answer;
create table service_answer(

member_id 				varchar2(30)	foreign key,
title					varchar2(100)	not null,
categori				varchar2(30)	not null,
contents				varchar2(3000)	not null,
image_path				varchar2(500)	null,
upload_date				date			not null,
answer_contents			varchar2(3000)	null,
answer_date				date			null

);

--basket ��ٱ��� ���̺�
drop table basket;
create table basket(

kind_check 				char			not null,
board_num				number			foreign key
);


