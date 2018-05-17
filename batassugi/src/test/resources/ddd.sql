select id, password from spider_member where id='admin'


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
    
