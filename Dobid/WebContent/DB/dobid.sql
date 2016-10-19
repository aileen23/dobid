--member 멤버 테이블
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

--message 쪽지함 테이블
drop table message;
create table message(

member_id 				varchar2(30)	foreign key,
send_id 				varchar2(30)	not null,
title					varchar2(100)	not null,
contents				varchar2(600)	not null,
reception_check 		char			not null

);

--charge 충전테이블
drop table charge;
create table charge(

member_id 				varchar2(30) 	foreign key,
charge_will_amount		number			not null,
charge_date				date			not null,
charge_type				varchar2(30)	not null,
charge_check			char			not null,
charge_before_amount	number			not null	

);

--auction 경매 테이블
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

--auction_seq (경매 테이블 게시글 번호) 시퀀스
drop sequence auction_seq;
create sequence auction_seq   start with 1   increment by 1   nocycle   nocache;

--auction_review 경매 리뷰 테이블
drop table auction_review;
create table auction_review(

review_num 				number			primary key,
auction_board_num		number			foreign key,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,

);

--auction_review_seq (경매리뷰 테이블 게시글 번호) 시퀀스
drop sequence auction_review_seq;
create sequence auction_review_seq   start with 1   increment by 1   nocycle   nocache;

--auction_participant 경매 참가자 테이블
drop table auction_participant;
create table auction_participant(

auction_board_num		number			foreign key,
bid_price_amount		number			not null,
buyer_id 				varchar2(30)	not null,
bid_date				date			not null,
bid_check				char			not null

);

--groupbuy 공동구매 테이블
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

--groupbuy_seq  (공동 구매 테이블 게시글 번호) 시퀀스
drop sequence groupbuy_seq;
create sequence groupbuy_seq   start with 1   increment by 1   nocycle   nocache;

--groupbuy_review 공구 리뷰 테이블
drop table groupbuy_review_seq;
create table groupbuy_review_seq(

review_num 				number			primary key,
group_board_num			number			foreign key,
title					varchar2(100)	not null,
contents				varchar2(3000)	not null,

);

--groupbuy_review_seq (공구리뷰 테이블 게시글 번호) 시퀀스
drop sequence groupbuy_review_seq;
create sequence groupbuy_review_seq   start with 1   increment by 1   nocycle   nocache;

--groupbuy_participant 공동구매 참가자 테이블
drop table groupbuy_participant;
create table groupbuy_participant(

groupbuy_board_num		number			foreign key,
buy_price_amount		number			not null,
buyer_id 				varchar2(30)	not null,
buy_date				date			not null,
buy_check				char			not null

);



--freeboard 게시글(기본) 테이블 / 자유, 질답, 공지
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

--freeboard_seq  (일반 게시판 번호) 시퀀스
drop sequence freeboard_seq
create sequence freeboard_seq   start with 1   increment by 1   nocycle   nocache;

--noticeboard 게시글(기본) 테이블 / 자유, 질답, 공지
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

--noticeboard_seq  (일반 게시판 번호) 시퀀스
drop sequence noticeboard_seq
create sequence noticeboard_seq   start with 1   increment by 1   nocycle   nocache;

--comment 댓글 테이블
drop table comment;
create table comment(

comment_num				number			primary key,
member_id				varchar2(30)	not null,
contents				varchar2(100)	not null,
upload_date				date			not null

);

--comment_seq  (댓글 번호) 시퀀스
drop sequence comment_seq
create sequence comment_seq   start with 1   increment by 1   nocycle   nocache;

--service 고객센터 1대1 문의 테이블
drop table service;
create table service(

member_id 				varchar2(30)	foreign key,
title					varchar2(100)	not null,
categori				varchar2(30)	not null,
contents				varchar2(3000)	not null,
image_path				varchar2(500)	not null,
upload_date				date			not null

);

--service_answer 고객센터 1대1 문의 답변 테이블
drop table service_answer;
create table service_answer(

member_id 				varchar2(30)	foreign key,
title					varchar2(100)	not null,
categori				varchar2(30)	not null,
contents				varchar2(3000)	not null,
image_path				varchar2(500)	not null,
upload_date				date			not null,
answer_contents			varchar2(3000)	not null,
answer_date				date			not null

);

--basket 장바구니 테이블
drop table basket;
create table basket(

kind_check 				char			not null,
board_num				number			foreign key
);

