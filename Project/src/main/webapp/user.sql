create table userT(
user_num number,
email varchar(50),
username varchar(20),
address varchar(100),
birth date,
address_detail varchar(100),
zipcode number,
grade varchar(20),
pw varchar(50),
user_regdate date,
user_id varchar(20),

primary key (user_num)

);

create sequence user_num_seq
select * from T_USER;
select * from T_login;

select * from userT where user_id='pipi1055' and pw='pipipipi';



insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '배수진', 'pipi', 'pipi1055'); 
insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '최정윤', 'pipipipi', 'pipi1044'); 
insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '배배배', 'pipipipi', 'pipi1033'); 

update userT set pw='pipipipi' where username='배수진';
select count(*) from userT where user_id='pipi1055' and pw='pipipipi';

create table kakao_table (
	k_number number,
    k_name varchar(20) not null,
    k_email varchar(50) not null,
    primary key(k_number)
);

select * from kakao_table where k_name='배수진' and k_email='sjpae1216@gmail.com';

select * from kakao_table
select * from t_outer_login
select * from t_login
select * from t_user
delete kakao_table where k_number=21;
update t_login set u_grade='지구지킴단', u_nick='2396196278' where login_id='sjpae1216@gmail.com'

select * from t_login where login_id=(select login_id from t_outer_login where login_id='sjpae1216@gmail.com')

select * from t_login where login_id=(select login_id from t_user where login_id='login_id 01' and u_pw='login_id 01')

insert into t_user(login_id,u_pw) values ('login_id 01', 'login_id 01');


insert into t_outer_login(login_id,login_from) values('pipi','k');
insert into t_login(login_id,user_name,login_type,joindate) values('pipi','pipi','k',sysdate);


select * from t_vegan_board
select * from t_zero_waste_comment
select * from t_zw_board where login_id='login_id 01'



select * from t_zero_waste_comment

select * from t_together_board, t_zw_board, t_img_board, t_vegan_board where login_id='login_id 01' 

select * from t_zw_board where login_id='login_id 01' order by zw_date DESC

select * from t_login where login_id=(select login_id from t_user where login_id='login_id 01' and u_pw='login_id 01')
INSERT INTO t_together_board (tb_title, tb_headline, tb_content, tb_file, tb_regdate, login_id, tb_cnt, tb_likes) VALUES ('tb_title 1', 'tb_headline 1', 'tb_content 1', 'tb_file 1', sysdate, 'login_id 01', 1, 1);
INSERT INTO t_together_board (tb_title, tb_headline, tb_content, tb_file, tb_regdate, login_id, tb_cnt, tb_likes) VALUES ('tb_title 2', 'tb_headline 2', 'tb_content 2', 'tb_file 2', sysdate, 'login_id 02', 2, 2);
INSERT INTO t_together_board (tb_title, tb_headline, tb_content, tb_file, tb_regdate, login_id, tb_cnt, tb_likes) VALUES ('tb_title 3', 'tb_headline 3', 'tb_content 3', 'tb_file 3', sysdate, 'login_id 03', 3, 3);
INSERT INTO t_together_board (tb_title, tb_headline, tb_content, tb_file, tb_regdate, login_id, tb_cnt, tb_likes) VALUES ('tb_title 4', 'tb_headline 4', 'tb_content 4', 'tb_file 4', sysdate, 'login_id 04', 4, 4);
INSERT INTO t_together_board (tb_title, tb_headline, tb_content, tb_file, tb_regdate, login_id, tb_cnt, tb_likes) VALUES ('tb_title 5', 'tb_headline 5', 'tb_content 5', 'tb_file 5', sysdate, 'login_id 05', 5, 5);

INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 1', 'zw_content 1', 'zw_file 1', sysdate, 'login_id 01', 1, 1);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 2', 'zw_content 2', 'zw_file 2', sysdate, 'login_id 02', 2, 2);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 3', 'zw_content 3', 'zw_file 3', sysdate, 'login_id 03', 3, 3);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 4', 'zw_content 4', 'zw_file 4', sysdate, 'login_id 04', 4, 4);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 5', 'zw_content 5', 'zw_file 5', sysdate, 'login_id 05', 5, 5);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 6', 'zw_content 6', 'zw_file 6', sysdate, 'login_id 06', 6, 6);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 7', 'zw_content 7', 'zw_file 7', sysdate, 'login_id 07', 7, 7);

INSERT INTO t_img_board (img_title, img_headline, img_content, img_regdate, login_id, img_cnt, img_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('img_title 1', 'img_headline 1', 'img_content 1', sysdate, 'login_id 01', 1, 1, 'img_file1 1', 'img_file2 1', 'img_file3 1', 'img_file4 1', 'img_file5 1');
INSERT INTO t_img_board (img_title, img_headline, img_content, img_regdate, login_id, img_cnt, img_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('img_title 2', 'img_headline 2', 'img_content 2', sysdate, 'login_id 02', 2, 2, 'img_file1 2', 'img_file2 2', 'img_file3 2', 'img_file4 2', 'img_file5 2');
INSERT INTO t_img_board (img_title, img_headline, img_content, img_regdate, login_id, img_cnt, img_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('img_title 3', 'img_headline 3', 'img_content 3', sysdate, 'login_id 03', 3, 3, 'img_file1 3', 'img_file2 3', 'img_file3 3', 'img_file4 3', 'img_file5 3');

INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 01', 'vb_content 01', 'vb_file 01', sysdate, 'login_id 01', 01, 01);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 02', 'vb_content 02', 'vb_file 02', sysdate, 'login_id 02', 02, 02);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 03', 'vb_content 03', 'vb_file 03', sysdate, 'login_id 03', 03, 03);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 04', 'vb_content 04', 'vb_file 04', sysdate, 'login_id 04', 04, 04);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 05', 'vb_content 05', 'vb_file 05', sysdate, 'login_id 05', 05, 05);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 06', 'vb_content 06', 'vb_file 06', sysdate, 'login_id 06', 06, 06);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 07', 'vb_content 07', 'vb_file 07', sysdate, 'login_id 07', 07, 07);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 08', 'vb_content 08', 'vb_file 08', sysdate, 'login_id 08', 08, 08);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 09', 'vb_content 09', 'vb_file 09', sysdate, 'login_id 09', 09, 09);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 10', 'vb_content 10', 'vb_file 10', sysdate, 'login_id 10', 10, 10);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 11', 'vb_content 11', 'vb_file 11', sysdate, 'login_id 11', 11, 11);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 12', 'vb_content 12', 'vb_file 12', sysdate, 'login_id 12', 12, 12);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 13', 'vb_content 13', 'vb_file 13', sysdate, 'login_id 13', 13, 13);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 14', 'vb_content 14', 'vb_file 14', sysdate, 'login_id 14', 14, 14);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 15', 'vb_content 15', 'vb_file 15', sysdate, 'login_id 15', 15, 15);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 16', 'vb_content 16', 'vb_file 16', sysdate, 'login_id 16', 16, 16);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 17', 'vb_content 17', 'vb_file 17', sysdate, 'login_id 17', 17, 17);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 18', 'vb_content 18', 'vb_file 18', sysdate, 'login_id 18', 18, 18);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 19', 'vb_content 19', 'vb_file 19', sysdate, 'login_id 19', 19, 19);
INSERT INTO t_vegan_board (vb_title, vb_content, vb_file, vb_date, login_id, vb_cnt, vb_likes) VALUES ('vb_title 20', 'vb_content 20', 'vb_file 20', sysdate, 'login_id 20', 20, 20);
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (1, 'zw_cmt_content 1', sysdate, 'login_id 01');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (1, 'zw_cmt_content 2', sysdate, 'login_id 02');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (1, 'zw_cmt_content 3', sysdate, 'login_id 03');


select b.zw_title, b.zw_content, b.zw_file, b.zw_date, b.login_id, b.zw_cnt, b.zw_likes, c.count(zw_cmt_content) as comment from t_zw_board b, t_zero_waste_comment c where login_id='login_id 01' order by zw_date DESC

select zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes, (select count(*) from t_zero_waste_comment c where c.zw_seq=b.zw_seq) as comment_cnt from t_zw_board b where login_id='login_id 01' order by zw_date DESC

select * from cal_T

delete 

select * from t_login l, t_user u where l.login_id = u.login_id and l.login_id ='login_id 07'

select * from t_login

drop table cal_T
CREATE TABLE cal_T
(
    title       VARCHAR2(100)    NOT NULL, 
    name        VARCHAR2(100)     NOT NULL, 
    day         VARCHAR2(50)     NOT NULL, 
    article     VARCHAR2(1000)    NOT NULL, 
    news_url    VARCHAR2(100)    NOT NULL, 
    img         VARCHAR2(100)    NULL   
)
/

COMMENT ON TABLE cal_T IS '칼럼 게시판'
/

COMMENT ON COLUMN cal_T.title IS '제목'
/

COMMENT ON COLUMN cal_T.name IS '기자'
/

COMMENT ON COLUMN cal_T.day IS '날짜'
/

COMMENT ON COLUMN cal_T.article IS '내용'
/

COMMENT ON COLUMN cal_T.news_url IS '기사링크'
/

COMMENT ON COLUMN cal_T.img IS '이미지링크'
/
delete cal_T
select * from(
select tb_cmt_seq as cmt_seq, tb_seq as seq, tb_cmt_content as content, tb_cmt_date as day, login_id from t_together_comment c dual d where login_id='login_id 01'
union all
select img_cmt_seq as cmt_seq, img_seq as seq,img_cmt_content as content, img_cmt_date as day, login_id from t_img_comment where login_id='login_id 01'
union all
select zw_cmt_seq as cmt_seq, zw_seq as seq, zw_cmt_content as content, zw_cmt_date as day, login_id from t_zero_waste_comment where login_id='login_id 01'
union all
select buy_cmt_seq as cmt_seq, buy_seq as seq, buy_cmt_content as content, buy_cmt_date as day, login_id from t_buy_comment where login_id='login_id 01'
union all
select vb_cmt_seq as cmt_seq, vb_seq as seq, vb_cmt_content as content, vb_cmt_date as day, login_id from t_vegan_board_comment where login_id='login_id 01')
order by day desc

where

INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 01', 'zw_content 01', 'zw_file 01', sysdate, 'login_id 01', 01, 01);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 02', 'zw_content 02', 'zw_file 02', sysdate, 'login_id 01', 02, 02);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 03', 'zw_content 03', 'zw_file 03', sysdate, 'login_id 01', 03, 03);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 04', 'zw_content 04', 'zw_file 04', sysdate, 'login_id 01', 04, 04);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 05', 'zw_content 05', 'zw_file 05', sysdate, 'login_id 01', 05, 05);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 06', 'zw_content 06', 'zw_file 06', sysdate, 'login_id 01', 06, 06);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 07', 'zw_content 07', 'zw_file 07', sysdate, 'login_id 01', 07, 07);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 08', 'zw_content 08', 'zw_file 08', sysdate, 'login_id 01', 08, 08);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 09', 'zw_content 09', 'zw_file 09', sysdate, 'login_id 01', 09, 09);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 10', 'zw_content 10', 'zw_file 10', sysdate, 'login_id 01', 10, 10);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 11', 'zw_content 11', 'zw_file 11', sysdate, 'login_id 01', 11, 11);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 12', 'zw_content 12', 'zw_file 12', sysdate, 'login_id 01', 12, 12);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 13', 'zw_content 13', 'zw_file 13', sysdate, 'login_id 01', 13, 13);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 14', 'zw_content 14', 'zw_file 14', sysdate, 'login_id 01', 14, 14);
INSERT INTO t_zw_board (zw_title, zw_content, zw_file, zw_date, login_id, zw_cnt, zw_likes) VALUES ('zw_title 15', 'zw_content 15', 'zw_file 15', sysdate, 'login_id 01', 15, 15);

select * from t_zero_waste_comment where login_id='login_id 01' order by zw_cmt_date DESC

select * from t_vegan_board_comment where login_id='login_id 01' order by vb_cmt_date DESC

select  as cmt_seq,  as seq, as container, as date, login_id from   where login_id='login_id 01'

INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (01, 'img_cmt_content 01', sysdate, 'login_id 01');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (02, 'img_cmt_content 02', sysdate, 'login_id 02');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (03, 'img_cmt_content 03', sysdate, 'login_id 03');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (04, 'img_cmt_content 04', sysdate, 'login_id 04');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (05, 'img_cmt_content 05', sysdate, 'login_id 05');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (06, 'img_cmt_content 06', sysdate, 'login_id 06');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (07, 'img_cmt_content 07', sysdate, 'login_id 07');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (08, 'img_cmt_content 08', sysdate, 'login_id 08');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (09, 'img_cmt_content 09', sysdate, 'login_id 09');
INSERT INTO t_img_comment (img_seq, img_cmt_content, img_cmt_date, login_id) VALUES (10, 'img_cmt_content 10', sysdate, 'login_id 10');

INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (01, 'tb_cmt_content 01', sysdate, 'login_id 01');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (02, 'tb_cmt_content 02', sysdate, 'login_id 02');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (03, 'tb_cmt_content 03', sysdate, 'login_id 03');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (04, 'tb_cmt_content 04', sysdate, 'login_id 04');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (05, 'tb_cmt_content 05', sysdate, 'login_id 05');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (06, 'tb_cmt_content 06', sysdate, 'login_id 06');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (07, 'tb_cmt_content 07', sysdate, 'login_id 07');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (08, 'tb_cmt_content 08', sysdate, 'login_id 08');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (09, 'tb_cmt_content 09', sysdate, 'login_id 09');
INSERT INTO t_together_comment (tb_seq, tb_cmt_content, tb_cmt_date, login_id) VALUES (10, 'tb_cmt_content 10', sysdate, 'login_id 10');

INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (01, 'zw_cmt_content 01', sysdate, 'login_id 01');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (02, 'zw_cmt_content 02', sysdate, 'login_id 02');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (03, 'zw_cmt_content 03', sysdate, 'login_id 03');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (04, 'zw_cmt_content 04', sysdate, 'login_id 04');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (05, 'zw_cmt_content 05', sysdate, 'login_id 05');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (06, 'zw_cmt_content 06', sysdate, 'login_id 06');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (07, 'zw_cmt_content 07', sysdate, 'login_id 07');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (08, 'zw_cmt_content 08', sysdate, 'login_id 08');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (09, 'zw_cmt_content 09', sysdate, 'login_id 09');
INSERT INTO t_zero_waste_comment (zw_seq, zw_cmt_content, zw_cmt_date, login_id) VALUES (10, 'zw_cmt_content 10', sysdate, 'login_id 10');

INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (01, 'vb_cmt_content 01', sysdate, 'login_id 01');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (02, 'vb_cmt_content 02', sysdate, 'login_id 02');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (03, 'vb_cmt_content 03', sysdate, 'login_id 03');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (04, 'vb_cmt_content 04', sysdate, 'login_id 04');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (05, 'vb_cmt_content 05', sysdate, 'login_id 05');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (06, 'vb_cmt_content 06', sysdate, 'login_id 06');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (07, 'vb_cmt_content 07', sysdate, 'login_id 07');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (08, 'vb_cmt_content 08', sysdate, 'login_id 08');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (09, 'vb_cmt_content 09', sysdate, 'login_id 09');
INSERT INTO t_vegan_board_comment (vb_seq, vb_cmt_content, vb_cmt_date, login_id) VALUES (10, 'vb_cmt_content 10', sysdate, 'login_id 10');


select vb_cmt_seq as zw_cmt_seq, vb_cmt_seq as zw_seq, vb_cmt_content as zw_cmt_content, vb_cmt_date as zw_cmt_date, login_id from t_zero_waste_comment where login_id=#{login_id} order by zw_cmt_date DESC
select as zw_cmt_seq,  as zw_seq,  as zw_cmt_content,  as zw_cmt_date, login_id from t_vegan_board_comment where login_id=#{login_id} order by vb_cmt_date DESC
 	
select tb_cmt_seq as zw_cmt_seq, tb_seq as zw_seq, tb_cmt_content as zw_cmt_content, tb_cmt_date as zw_cmt_date, login_id from t_together_comment where login_id=#{login_id} order by tb_cmt_date DESC

select img_cmt_seq as zw_cmt_seq, img_seq as zw_seq, img_cmt_content as zw_cmt_content, img_cmt_date as zw_cmt_date, login_id from t_img_comment where login_id=#{login_id} order by img_cmt_date DESC

as zw_cmt_seq,  as zw_seq,  as zw_cmt_content,  as zw_cmt_date, login_id


select count(notice) from t_zw_board where notice is not null


select count(login_id) from (select * from (select * from(select * from t_login A join t_user B on A.login_id = B.login_id) order by joindate desc))


select * from (select a.*, ROWNUM as rn from (select * from t_zw_board where notice is not null order by notice desc) a where ROWNUM <= 10 ) where rn >= 1

select count(notice) from t_zw_board where notice is not null


select * from (select a.*, ROWNUM as rn from (select zw_seq as seq, zw_title as title, zw_content as content, zw_file as files, zw_date as day, login_id, zw_cnt as cnt, zw_likes as likes, notice from t_zw_board where notice is not null order by notice desc) a where ROWNUM <= 10) where rn >= 0

select zw_seq as seq, zw_title as title, zw_content as content, zw_file as files from t_zw_board

insert into youtube(name,content,video,logo) values('SKbroadband 중부방송','[카운트다운] 제로웨이스트 지구를 살리는 삶의 작은 변화-1부', 'https://www.youtube.com/embed/3hJ_p3xnpbw','https://yt3.ggpht.com/ytc/AMLnZu-nF9VlWYaH0iEbmOVit4lmJrHYdj4tz5IDzbdpVA=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('tvN','제로웨이스트zero waste 이렇게만 도전하면 나도 할 수 있다 쓰레기줄이기!', 'https://www.youtube.com/embed/rsd5seVp-9I','https://yt3.ggpht.com/tKtfZSpmxJ69Feq07qhRsY8-_LV6fQXtSoeLlxnCbNIGtICFXUhceHQqqu2PS3xpnPF8tIVbzg=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('14F 일사에프','제로 웨이스트 가능한 일인가? / 14F','https://www.youtube.com/embed/0JiF52gYbrw','https://yt3.ggpht.com/x8wFp1vdQm6eYdsw6_mA85YQrkVmn7IGARKAv3loTSye_ZouDlsY9GJb81fig7BRnJqD7P64xg=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('디에디트라이프 THE EDIT','일회용품 쓰기 싫어요ㅠㅠ...초보를 위한 제로 웨이스트 아이템 하울!','https://www.youtube.com/embed/AC_yAQ7R6VM','https://yt3.ggpht.com/ytc/AMLnZu8hYZYnC3Lev0Fyx-M3Fk0aZ74IGOwlfIiNSF3DZg=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('소소교실','[제로웨이스트] 제로웨이스트란 무엇일까요', 'https://www.youtube.com/embed/WV-9UMPND3U','https://yt3.ggpht.com/ytc/AMLnZu-UZnkBHTd7NBVRfhWwvrFsif-ELfmxHb-82t0P=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('김알밥은 파이어족','제로 웨이스트 돈 쓰지마세요. 지금 바로 시작할 수 있는 습관 5가지', 'https://www.youtube.com/embed/BScP44Gb2No','https://yt3.ggpht.com/iDYUgqaUfukwxZ6HwMlI4hAMdvtVZX2s3vT9t444Ly7hAqeXgb6fiErH5CSMBMTxFdJzjcQ17g=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('히조heejo','ENG/내가 사지 않는 10가지. 제로웨이스트. 10 things I dont buy anymore', 'https://www.youtube.com/embed/kABUVWBnuPQ','https://yt3.ggpht.com/ytc/AMLnZu_bhpbYv8UBnbkyDpBgIdgSSoC3SDbCvuLPmeCj=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('긍정수키의 지구생활','제로웨이스트의 하루', 'https://www.youtube.com/embed/AwbqtgupTfg','https://yt3.ggpht.com/ytc/AMLnZu8wul_9uFGISVV5IsGpCvRaCqNHP2C9CfQHXiI=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('하미마미 Hamimommy','일회용품 대신 사용하는 일상속 13가지 물건들ㅣ제로웨이스트 루틴ㅣ', 'https://youtube.com/embed/nBUBwvOwCKY','https://yt3.ggpht.com/JPReclXNoE3QpVozSG9ypDGtU_SJmWmvMENAII7VgsCuI71rQf5zjj5OBwRrDmFomOijxJPs=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('꿀주부 Honeyjubu','일회용품 줄일수있는 현명한 방법 친환경 살림템 추천, 제로웨이스트 루틴', 'https://youtube.com/embed/ABKDu00_4ds','https://yt3.ggpht.com/9j25ekQSuW4LRUv9aeWUQjD9IcsGIXYWYe6d7dxRvXMLIab_jniPTsA96ssmZYkD2IY4G0bJ=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('쓰레기왕국 Trash Kingdom','플라스틱 없는 욕실 만들기🛁 욕실용품 추천템✨', 'https://youtube.com/embed/cTCiFn0Ib4E','https://yt3.ggpht.com/XeS7ZPtR5hOV6XxUlukeuPpPbm5zgvey11_P16B3DHWGubX8eq8P_LPmkm9Hhp2XzVlBskGn=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('오늘무해 프라우허','내가 더 이상 사지않는 물건 6가지/제로웨이스트/살림/살림팁/살림브이로그', 'https://youtube.com/embed/jd5272eihso','https://yt3.ggpht.com/ytc/AMLnZu-_1cfWi2YF5lpSRE9T1Ra34hLarPHQOOJc2cJEZA=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('YTN 사이언스','쓰레기 배출을 최소화하는 제로웨이스트샵 / YTN 사이언스', 'https://youtube.com/embed/t1hMh4Q3-xU','https://yt3.ggpht.com/ytc/AMLnZu-VQfohOVIKVgExhHxczGG8HTkPQDKjG8bhVGXSQQ=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('tvN','제로웨이스트 5단계를 실천하자 놀랍게 줄어든 쓰레기의 양!', 'https://youtube.com/embed/MraUxOIu7Tc','https://yt3.ggpht.com/tKtfZSpmxJ69Feq07qhRsY8-_LV6fQXtSoeLlxnCbNIGtICFXUhceHQqqu2PS3xpnPF8tIVbzg=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('볼수록 공감','제로 웨이스트 이렇게하면 나도 할 수 있다!│빠르게공감', 'https://youtube.com/embed/DXJGR7iJXqk','https://yt3.ggpht.com/xNStrJtLA44S2XE89X9dJHWLT38QyNfyzR1Qla2nAq2sBn4To35Hhj2xdTH6IztI8TifGw1zJw=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('오늘무해 프라우허','일회용품을 대체하는 무해한 살림템 6가지', 'https://youtube.com/embed/t2enhIXQm7Y','https://yt3.ggpht.com/ytc/AMLnZu-_1cfWi2YF5lpSRE9T1Ra34hLarPHQOOJc2cJEZA=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('EBS STORY','[다큐시선] 플라스틱 없이 살아보기 part 2', 'https://youtube.com/embed/LM6HORFapSU','https://yt3.ggpht.com/xayXQX2MMPkrwHRB_E82H2GFbwuhJGGPDxt9wAkrIiZnAXgef5uQA2nzPdpyYMLXGsdZ1BUP=s48-c-k-c0x00ffffff-no-rj');
insert into youtube(name,content,video,logo) values('티아 Tia','따라하면 무조건 인생이 바뀔 수 밖에 없는 작은 습관 5가지', 'https://youtube.com/embed/CE1oCNKLhIU','https://yt3.ggpht.com/ytc/AMLnZu93I-osfB0g97uqPgxJZKWRvxgtVrUuw6ybuTg08A=s48-c-k-c0x00ffffff-no-rj');

select * from youtube


select * from t_login;

INSERT INTO t_login (login_id, login_type, user_name, joindate, u_birthdate, post, u_addr, u_grade, u_point, u_type, u_nick) VALUES ('1212', 'N', 'user_name 1', sysdate, sysdate, 'post 1', 'u_addr 1', 'u_grade 1', 1, 'u_type 1', 'u_nick 1');
INSERT INTO t_user
    (login_id, 
    u_pw)
VALUES
    ('1212', 
    '1212');

INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 01', 'buy_content 01', sysdate, 'login_id 01', 01, 01, 'img_file1 01', 'img_file2 01', 'img_file3 01', 'img_file4 01', 'img_file5 01');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 02', 'buy_content 02', sysdate, 'login_id 02', 02, 02, 'img_file1 02', 'img_file2 02', 'img_file3 02', 'img_file4 02', 'img_file5 02');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 03', 'buy_content 03', sysdate, 'login_id 03', 03, 03, 'img_file1 03', 'img_file2 03', 'img_file3 03', 'img_file4 03', 'img_file5 03');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 04', 'buy_content 04', sysdate, 'login_id 04', 04, 04, 'img_file1 04', 'img_file2 04', 'img_file3 04', 'img_file4 04', 'img_file5 04');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 05', 'buy_content 05', sysdate, 'login_id 05', 05, 05, 'img_file1 05', 'img_file2 05', 'img_file3 05', 'img_file4 05', 'img_file5 05');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 06', 'buy_content 06', sysdate, 'login_id 06', 06, 06, 'img_file1 06', 'img_file2 06', 'img_file3 06', 'img_file4 06', 'img_file5 06');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 07', 'buy_content 07', sysdate, 'login_id 07', 07, 07, 'img_file1 07', 'img_file2 07', 'img_file3 07', 'img_file4 07', 'img_file5 07');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 08', 'buy_content 08', sysdate, 'login_id 08', 08, 08, 'img_file1 08', 'img_file2 08', 'img_file3 08', 'img_file4 08', 'img_file5 08');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 09', 'buy_content 09', sysdate, 'login_id 09', 09, 09, 'img_file1 09', 'img_file2 09', 'img_file3 09', 'img_file4 09', 'img_file5 09');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 10', 'buy_content 10', sysdate, 'login_id 10', 10, 10, 'img_file1 10', 'img_file2 10', 'img_file3 10', 'img_file4 10', 'img_file5 10');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 11', 'buy_content 11', sysdate, 'login_id 11', 11, 11, 'img_file1 11', 'img_file2 11', 'img_file3 11', 'img_file4 11', 'img_file5 11');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 12', 'buy_content 12', sysdate, 'login_id 12', 12, 12, 'img_file1 12', 'img_file2 12', 'img_file3 12', 'img_file4 12', 'img_file5 12');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 13', 'buy_content 13', sysdate, 'login_id 13', 13, 13, 'img_file1 13', 'img_file2 13', 'img_file3 13', 'img_file4 13', 'img_file5 13');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 14', 'buy_content 14', sysdate, 'login_id 14', 14, 14, 'img_file1 14', 'img_file2 14', 'img_file3 14', 'img_file4 14', 'img_file5 14');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 15', 'buy_content 15', sysdate, 'login_id 15', 15, 15, 'img_file1 15', 'img_file2 15', 'img_file3 15', 'img_file4 15', 'img_file5 15');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 16', 'buy_content 16', sysdate, 'login_id 16', 16, 16, 'img_file1 16', 'img_file2 16', 'img_file3 16', 'img_file4 16', 'img_file5 16');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 17', 'buy_content 17', sysdate, 'login_id 17', 17, 17, 'img_file1 17', 'img_file2 17', 'img_file3 17', 'img_file4 17', 'img_file5 17');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 18', 'buy_content 18', sysdate, 'login_id 18', 18, 18, 'img_file1 18', 'img_file2 18', 'img_file3 18', 'img_file4 18', 'img_file5 18');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 19', 'buy_content 19', sysdate, 'login_id 19', 19, 19, 'img_file1 19', 'img_file2 19', 'img_file3 19', 'img_file4 19', 'img_file5 19');
INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 20', 'buy_content 20', sysdate, 'login_id 20', 20, 20, 'img_file1 20', 'img_file2 20', 'img_file3 20', 'img_file4 20', 'img_file5 20');

INSERT INTO t_buy_board (buy_title, buy_content, buy_regdate, login_id, buy_cnt, buy_likes, img_file1, img_file2, img_file3, img_file4, img_file5) VALUES ('buy_title 1', 'buy_content 1', sysdate, 'asdf', 1, 1, 'img_file1 1', 'img_file2 1', 'img_file3 1', 'img_file4 1', 'img_file5 1');

select * from t_buy_board_form_goods
INSERT INTO t_buy_board_form
    (login_id, 
    user_name, 
    user_phone, 
    user_addr, 
    user_amount, 
    buy_seq)
VALUES
    ('asdf','수진','01011111111','서울',10000,21)
    
    
    
    where buy_seq=21
    
    insert into t_buy_board_form_goods
    select (select max(bf_seq) from t_buy_board_form)
    	(goods_name, 
    goods_cnt)
VALUES
    (#{goods_name},0)
    From t_buy_board_form
    
    select f.bf_seq,f.login_id, f.user_name, f.user_phone, 
    f.user_addr, 
    f.user_amount, 
    f.buy_seq,
    g.goods_name from t_buy_board_form_goods g,  t_buy_board_form f
    where login_id='asdf'
   
    
    insert into t_buy_board_form_goods(goods_name,goods_cnt,bf_seq)
    VALUES ('비누',3,(select max(bf_seq) from t_buy_board_form))
    
    
(select max(bf_seq) from t_buy_board_form)
    	(goods_name, 
    goods_cnt)
VALUES
    (#{goods_name},0)
    From t_buy_board_form
    
    
select * from t_buy_board_form_goods

select f.bf_seq,f.login_id, f.user_name, f.user_phone, 
    f.user_addr, 
    f.user_amount, 
    f.buy_seq,
    g.goods_name 
    from t_buy_board_form_goods g,  t_buy_board_form f
    where login_id='1212' and buy_seq=20 and g.bf_seq=f.bf_seq

>>>>>>> 0799c9b1c88cce4a776ba5b84dc6826fa3079fd6
