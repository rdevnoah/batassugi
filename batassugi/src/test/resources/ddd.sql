select id, password from spider_member where id='admin'

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