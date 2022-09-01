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
