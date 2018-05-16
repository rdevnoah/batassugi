select id, password from spider_member where id='admin'

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'ukyi', 20000, '판교', to_date('18.05.16','yy.mm.dd'), to_date('18.06.16','yy.mm.dd'))

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'ukyi', 50000, '평택', to_date('18.04.16','yy.mm.dd'), to_date('18.05.16','yy.mm.dd'))

INSERT INTO farm(farm_no, id, farm_size, farm_address, farm_startdate, farm_enddate)
VALUES(farm_seq.nextval, 'ukyi', 10000, '수원', to_date('18.02.16','yy.mm.dd'), to_date('18.03.16','yy.mm.dd'))

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(1, '파프리카', '1')

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(2, '당근', '1')

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(3, '파프리카', '1')

INSERT INTO crops(crops_no, crops_name, crops_level) 
VALUES(4, '토마토', '1')

INSERT INTO available_crops(crops_no, farm_no)
VALUES(1,1)

INSERT INTO available_crops(crops_no, farm_no)
VALUES(1,2)

INSERT INTO available_crops(crops_no, farm_no)
VALUES(1,3)

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 1, '대여', to_date('18.05.10','yy.mm.dd'), to_date('18.05.30','yy.mm.dd'), 50000, '농지대여 싸게해드림!','모집중',10000)

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 2, '대여', to_date('18.04.10','yy.mm.dd'), to_date('18.04.30','yy.mm.dd'), 30000, '농지대여 @!','모집중',30000)

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 3, '대여', to_date('18.02.5','yy.mm.dd'), to_date('18.02.20','yy.mm.dd'), 10000, '농지대여 @!','모집중',10000)

select r.recruit_no, r.farm_no, r.recruit_kind, r.recruit_startdate, 
r.recruit_enddate, r.price, r.recruit_content, r.recruit_status, r.recruit_size,
f.farm_address, info.tel


data - data as 최대대여기간
