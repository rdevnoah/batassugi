select id, password from spider_member where id='admin'

<<<<<<< HEAD
select * from member_info
select * from MEMBER_STATE

select *from SPIDER_MEMBER
select crops_info
    crops_no            NUMBER           NOT NULL, 
    crops_profileImg    VARCHAR2(300)    NOT NULL, 
    crops_img1          VARCHAR2(300)    NOT NULL, 
    crops_img2          VARCHAR2(300)    NOT NULL, 
    crops_img3          VARCHAR2(300)    NOT NULL, 
    seed_season         VARCHAR2(50)     NOT NULL, 
    crops_season        VARCHAR2(50)     NOT NULL, 
    crops_method        CLOB             NOT NULL, 
    crops_icon          VARCHAR2(300)    NOT NULL, 
    crops_food          VARCHAR2(300)    NOT NULL, 
    CONSTRAINT CROPS_INFO_PK PRIMARY KEY (crops_no),
    CONSTRAINT FK_crops_info_crops_no_crops_c FOREIGN KEY (crops_no) REFERENCES crops (crops_no)
);


CREATE TABLE crops
(
    crops_no       NUMBER          NOT NULL, 
    crops_name     VARCHAR2(50)    NOT NULL, 
    crops_level    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT CROPS_PK PRIMARY KEY (crops_no)
);

select c.crops_name, c.crops_level, ci.crops_profileImg, ci.crops_img1, ci.crops_img2, ci.crops_img3, ci.seed_season, ci.crops_season, ci.crops_method, ci.crops_food
from CROPS_INFO ci, CROPS c where c.crops_no='1' and c.crops_no=ci.crops_no;

select crops_profileImg, crops_img1, crops_img2,
crops_img3, seed_season, crops_season, crops_method, crops_food
from CROPS_INFO where crops_no='1';

select crops_profileImg, crops_img1, crops_img2,
    crops_img3, seed_season, crops_season, crops_method, crops_food
    from CROPS_INFO where crops_no=1
    
select ci.crops_no, c.crops_name from CROPS_INFO ci, CROPS c
where c.crops_no=ci.crops_no

update SPIDER_MEMBER set id='ii' where id='spring';

select mi.id, m.nickname
from MEMBER_INFO mi, SPIDER_MEMBER m
where m.id=mi.id

CREATE TABLE accuse
(
    accuse_no , accuse_category ,accuse_id,reported_id,accuse_date ,accuse_reason,accuse_proof, accuse_resultday, result_reason         VARCHAR2(500) ,
    CONSTRAINT ACCUSE_PK PRIMARY KEY (accuse_no),
    CONSTRAINT FK_accuse_accuse_id_spider_mem FOREIGN KEY (accuse_id) REFERENCES spider_member (id),
    CONSTRAINT FK_accuse_reported_id_spider_m FOREIGN KEY (reported_id) REFERENCES spider_member (id)   
);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);

insert into accuse(accuse_no, accuse_category, accuse_id, reported_id, accuse_reason, accuse_proof)
values(accuse_seq.nextval, '노쇼', 'qing52', 'admin', '노쇼했어요','첨부파일')

select * from ACCUSE
select accuse_no , accuse_category ,accuse_id,reported_id,accuse_date ,accuse_reason,accuse_proof, accuse_resultday, result_reason
from accuse

select accuse_no, accuse_category ,accuse_id,reported_id,accuse_date ,accuse_reason,accuse_proof, accuse_resultday, result_reason from accuse

select accuse_no, accuse_category ,accuse_id, reported_id, accuse_date ,accuse_reason,accuse_proof, accuse_resultday, result_reason from accuse
=======
INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'ukyi', 20000, '판교', to_date('18.05.16','yy.mm.dd'), to_date('18.12.16','yy.mm.dd'));

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'test1', 50000, '평택', to_date('18.04.16','yy.mm.dd'), to_date('18.08.16','yy.mm.dd'));

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'test2', 10000, '수원', to_date('18.02.16','yy.mm.dd'), to_date('18.11.16','yy.mm.dd'));

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'ukyi', 10000, '서울', to_date('18.02.16','yy.mm.dd'), to_date('18.10.16','yy.mm.dd'));

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'test1', 10000, '서울', to_date('18.02.16','yy.mm.dd'), to_date('18.10.16','yy.mm.dd'));

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'test2', 10000, '서울', to_date('18.02.16','yy.mm.dd'), to_date('18.10.16','yy.mm.dd'));


INSERT INTO farm SELECT farm_seq.nextval, id, farm_size, farm_address, farm_startdate, farm_enddate
FROM farm


select * from farm order by farm_no desc;


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 5, '대여', to_date('18.05.10','yy.mm.dd'), to_date('18.05.30','yy.mm.dd'), 50000, '농지대여 싸게해드림!','모집중',10000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 6, '대여', to_date('18.04.10','yy.mm.dd'), to_date('18.04.30','yy.mm.dd'), 30000, '농지대여 @!','모집중',30000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 7, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 8, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 9, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 10, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 11, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 12, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 13, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 14, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 15, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 16, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 17, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000);


    SELECT R.recruit_kind AS recruitKind, M.name AS name, 
    F.farm_address AS farmAddress, R.recruit_size AS recruitSize, 
    RT.rent_month, RT.crops_no AS cropsNo, RT.rent_status AS rentStatus, 
    RT.rent_startdate AS rentStartdate
    FROM rent RT, recruit R, spider_member M, member_info I, farm F
    WHERE RT.recruit_no = R.recruit_no
    AND R.farm_no = F.farm_no 
    AND F.id = i.id 
    AND RT.id = M.id
    AND RT.id = 'test1'
    ORDER BY RT.rent_startdate DESC


INSERT INTO recruit SELECT recruit_SEQ.nextval, farm_no, recruit_kind, recruit_startdate, 
recruit_enddate, price, recruit_content, recruit_status, recruit_size
FROM recruit



INSERT INTO available_crops(crops_no, farm_no)
VALUES(1,5);

INSERT INTO available_crops(crops_no, farm_no)
VALUES(2,5);

INSERT INTO available_crops(crops_no, farm_no)
VALUES(4,5);

INSERT INTO available_crops(crops_no, farm_no)
VALUES(2,6);

INSERT INTO available_crops(crops_no, farm_no)
VALUES(3,7);

INSERT INTO available_crops(crops_no, farm_no)
VALUES(4,8);


INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(1, '파프리카', '1');

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(2, '당근', '1');

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(3, '파프리카', '1');

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(4, '토마토', '1');



SELECT c.crops_name
FROM farm f, recruit r, AVAILABLE_CROPS a, crops c
WHERE r.farm_no = f.farm_no 
AND f.farm_no = a.farm_no 
AND a.crops_no = c.crops_no
AND f.farm_no = 5

SELECT farm_no, id, farm_size, farm


select * from recruit
select * from farm
select * from rent
select * from AVAILABLE_CROPS

insert into AVAILABLE_CROPS values(2,94)

delete recruit
delete farm
delete crops
delete AVAILABLE_CROPS
delete rent


INSERT INTO rent(rent_no, crops_no, id, recruit_no, rent_size, rent_month) 
VALUES(rent_SEQ.nextval, 1, 'abc1', 11, 10000, 5);

SELECT count(*)
FROM recruit R


SELECT c.crops_name
FROM farm f, recruit r, AVAILABLE_CROPS a, crops c
WHERE r.farm_no = f.farm_no 
AND f.farm_no = a.farm_no 
AND a.crops_no = c.crops_no
AND f.farm_no = 5


SELECT R.recruit_no AS recruitNo, R.recruit_kind AS recruitKind, 
to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo 
FROM recruit R


SELECT R.recruit_no AS recruitNo, R.recruit_kind AS recruitKind, 
to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo 
FROM (
SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, recruit_no, recruit_kind, 
recruit_enddate, recruit_status, recruit_size, farm_no 
FROM recruit)R
WHERE rnum BETWEEN 1 AND 4
ORDER BY rnum DESC

    SELECT 
    RT.crops_no AS cropsNo, 
    R.recruit_kind AS recruitKind, 
    R.recruit_size AS recruitSize, 
    F.farm_address AS farmAddress, 
    M.name AS name, 
    RT. rent_size AS rentSize, 
    RT.rent_month AS rentMonth, 
    RT.rent_status AS rentStatus, 
    to_char(RT.rent_startdate,'yy.mm.dd') AS rentStartdate
    FROM rent RT, recruit R, spider_member M, member_info I, farm F
    WHERE RT.recruit_no = R.recruit_no
    AND R.farm_no = F.farm_no 
    AND F.id = I.id 
    AND RT.id = M.id 
    AND RT.id = 'ukyi'
    ORDER BY RT.rent_startdate DESC

    
    SELECT crops_no, crops_name, crops_level
    FROM  crops
    WHERE crops_no = 1

	select farmer_document, apply_state, apply_reason, to_char(apply_date,'yy.mm.dd')  from apply_seller
	where id = 'test1'
	
	delete apply_seller

SELECT R.recruit_no AS recruitNo, R.recruit_kind AS recruitKind, 
    to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
    R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo,
    F.farm_address AS farmAddress
    FROM (
      SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, recruit_no, recruit_kind, 
      recruit_enddate, recruit_status, recruit_size, farm_no 
      FROM recruit)R, farm F
    WHERE R.farm_no = F.farm_no
    AND rnum BETWEEN 1 AND 3
    ORDER BY rnum DESC

INSERT INTO TRADE_POST (trade_no, trade_hits, trade_kind, 
trade_title, trade_content, trade_photo, id, trade_replycount, regdate)
SELECT trade_post_SEQ.nextval, trade_hits, trade_kind, 
trade_title, trade_content, trade_photo, id, trade_replycount, regdate
from TRADE_POST;

select * from TRADE_POST

    
	insert into apply_seller(apply_no, id, farmer_document, apply_date, apply_reason)
	values (apply_fammer_SEQ.nextval, 'test1', 'fasdf', sysdate, '신청원함!')
	
	delete apply_seller
	
>>>>>>> refs/heads/develop_to_buyer

CREATE TABLE accuse
(
    accuse_no             NUMBER           NOT NULL, 
    accuse_category    VARCHAR2(50)     NOT NULL, 
    accuse_id             VARCHAR2(50)     NOT NULL, 
    reported_id           VARCHAR2(50)     NOT NULL, 
    accuse_date           DATE             DEFAULT sysdate NOT NULL, 
    accuse_reason         VARCHAR2(500)    NOT NULL, 
    accuse_proof          VARCHAR2(500)    NOT NULL, 
    accuse_state        VARCHAR2(50)       DEFAULT '미처리' NOT NULL,
    accuse_resultday      DATE             ,
    result_reason         VARCHAR2(500) ,
    CONSTRAINT ACCUSE_PK PRIMARY KEY (accuse_no),
    CONSTRAINT FK_accuse_accuse_id_spider_mem FOREIGN KEY (accuse_id) REFERENCES spider_member (id),
    CONSTRAINT FK_accuse_reported_id_spider_m FOREIGN KEY (reported_id) REFERENCES spider_member (id)   
);
drop table accuse



    SELECT R.recruit_no AS recruitNo, R.recruit_kind AS recruitKind, 
    to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
    R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo,
    F.farm_address AS farmAddress
    FROM (
      SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, recruit_no, recruit_kind, 
      recruit_enddate, recruit_status, recruit_size, farm_no 
      FROM recruit)R, farm F
    WHERE R.farm_no = F.farm_no
    AND rnum BETWEEN 5 AND 10
    ORDER BY rnum DESC
    
    select * from farm
    
    select * from available_crops order by crops_no desc;
    
    
    
    select * from rent where rent_no = 14
    
    select * from recruit where recruit_no = 14
    
    
    UPDATE recruit SET recruit_size = recruit_size-5000
    WHERE recruit_no = 14
    
    
     SELECT distinct(c.crops_no AS cropsNo), c.crops_name AS cropsName, c.crops_level AS cropsLevel
    FROM farm f, recruit r, AVAILABLE_CROPS a, crops c
    WHERE r.farm_no = f.farm_no 
    AND f.farm_no = a.farm_no 
    AND a.crops_no = c.crops_no
    AND f.farm_no = 35
    
    select * from rent
    
    SELECT C.crops_no AS cropsNo, C.crops_name AS cropsName, 
    C.crops_level AS cropsLevel, R.recruit_kind AS recruitKind, 
    R.recruit_size AS recruitSize, F.farm_address AS farmAddress, 
    M.name AS name, RT.rent_no AS rentNo, RT. rent_size AS rentSize, 
    RT.rent_month AS rentMonth, RT.rent_status AS rentStatus, 
    to_char(RT.rent_startdate,'yy.mm.dd') AS rentStartdate,
    round(((sysdate-RT.rent_startdate)/(30*RT.rent_month))*100) as harvestStatus 
    FROM rent RT, recruit R, spider_member M, member_info I, farm F, crops C
    WHERE RT.recruit_no = R.recruit_no
    AND C.crops_no = RT.crops_no
    AND R.farm_no = F.farm_no 
    AND F.id = I.id 
    AND RT.id = M.id 
    AND RT.id = 'test12'
    ORDER BY RT.rent_startdate DESC
    
    update rent set rent_startdate = to_date('2018-04-23','yyyy-mm-dd') where rent_status = '승인'
    
    SELECT R.recruit_no AS recruitNo, R.recruit_kind AS recruitKind, 
    to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
    R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo,
    F.farm_address AS farmAddress, F.image as image, M.nickname
    FROM (
      SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, recruit_no, recruit_kind, 
      recruit_enddate, recruit_status, recruit_size, farm_no 
      FROM recruit)R, farm F, spider_member M
    WHERE R.farm_no = F.farm_no
    AND F.id = M.id
    AND rnum BETWEEN 1 AND 5
    ORDER BY R.recruit_no DESC
    
    select * from apply_seller
    
    
    
   UPDATE rent
    SET rent_status = '대여만료'
    WHERE rent_no = 31
    
    
    select * from rent where id = 'test12'
    
    select * from spider_member where id = 'test12'
    
    select crops_name from crops
    
    UPDATE spider_member
    SET member_level = '초급'
    WHERE id = 'test12'

    
   SELECT DISTINCT(R.recruit_no) AS recruitNo, R.recruit_kind AS recruitKind, 
    to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
    R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo,
    F.farm_address AS farmAddress, F.image as image, M.nickname
    FROM (
      SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, R.recruit_no, R.recruit_kind, 
      R.recruit_enddate, R.recruit_status, R.recruit_size, R.farm_no
      FROM recruit R, farm F, available_crops A, crops C 
      WHERE R.farm_no = F.farm_no 
      AND F.farm_no = A.farm_no 
      AND A.crops_no = C.crops_no 
      AND F.farm_address = '서울')R, farm F, spider_member M, available_crops A, crops C
    WHERE R.farm_no = F.farm_no
    AND F.id = M.id
    AND F.farm_no = A.farm_no
    AND A.crops_no = C.crops_no
    AND rnum BETWEEN 1 AND 10
    
    
    SELECT count(*) 
    FROM recruit R, farm F
    WHERE F.farm_address = '서울'
    AND R.farm_no = F.farm_no

    
    SELECT count(*) 
    FROM recruit R, farm F, available_crops A, crops C
    WHERE C.crops_name = '양배추'
    AND R.farm_no = F.farm_no
    AND F.farm_no = A.farm_no
    AND A.crops_no = C.crops_no

    
    SELECT DISTINCT(R.recruit_no) AS recruitNo, R.recruit_kind AS recruitKind, 
    to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
    R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo,
    F.farm_address AS farmAddress, F.image as image, M.nickname
    FROM (
      SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, R.recruit_no, R.recruit_kind, 
      R.recruit_enddate, R.recruit_status, R.recruit_size, R.farm_no
      FROM recruit R, farm F
      WHERE R.farm_no = F.farm_no 
      AND F.farm_address LIKE '%' || '여기는' || '%' 
      )R, farm F, spider_member M, available_crops A, crops C
    WHERE R.farm_no = F.farm_no
    AND F.id = M.id
    AND F.farm_no = A.farm_no
    AND A.crops_no = C.crops_no
    AND rnum BETWEEN 1 AND 5
    ORDER BY R.recruit_no DESC
    
    
     SELECT DISTINCT(R.recruit_no) AS recruitNo, R.recruit_kind AS recruitKind, 
    to_char(R.recruit_enddate, 'yy.mm.dd') AS recruitEnddate, 
    R.recruit_status AS recruitStatus, R.recruit_size AS recruitSize, R.farm_no AS farmNo,
    F.farm_address AS farmAddress, F.image as image, M.nickname
    FROM (
      SELECT row_number() OVER(ORDER BY recruit_no DESC) AS rnum, R.recruit_no, R.recruit_kind, 
      R.recruit_enddate, R.recruit_status, R.recruit_size, R.farm_no
      FROM recruit R, farm F, available_crops A, crops C 
      WHERE R.farm_no = F.farm_no 
      AND F.farm_no = A.farm_no 
      AND A.crops_no = C.crops_no
      <choose>
        <when test="category.equals('crops')">
          AND C.crops_name = #{keyword}
        </when>
        <when test="category.equals('address')">
          AND REPLACE(F.farm_address, ' ', '') like '%' || #{keyword} || '%'
        </when>
      </choose>)R, farm F, spider_member M, available_crops A, crops C
    WHERE R.farm_no = F.farm_no
    AND F.id = M.id
    AND F.farm_no = A.farm_no
    AND A.crops_no = C.crops_no
    AND rnum BETWEEN #{pagingBean.startRowNumber} AND #{pagingBean.endRowNumber}
    ORDER BY R.recruit_no DESC