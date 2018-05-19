select id, password from spider_member where id='admin'

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

trade_no            NUMBER          NOT NULL, 
    trade_hits          NUMBER          DEFAULT 0 NOT NULL, 
    trade_kind          VARCHAR2(50)    NOT NULL, 
    trade_title         VARCHAR2(50)    NOT NULL, 
    trade_content       CLOB            NOT NULL, 
    trade_photo         VARCHAR2(50)    NULL, 
    id                  VARCHAR2(50)    NOT NULL, 
    trade_replycount

    
    select 