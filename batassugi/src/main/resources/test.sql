-- 멤버 상태 테이블 생성
CREATE TABLE member_state
(
    state_number    NUMBER           NOT NULL, 
    state_set       VARCHAR2(50)     NOT NULL, 
    stopdate        VARCHAR2(100)    NULL, 
    CONSTRAINT MEMBER_STATE_PK PRIMARY KEY (state_number)
);select * from farm
-- 멤버 상태 정보 추가 : 탈퇴 로그인 안되게
insert into member_state(state_number,state_set) values(1,'활동');
insert into member_state(state_number,state_set) values(2,'중단');
insert into member_state(state_number,state_set) values(3,'탈퇴'); 

select mi.id, m.nickname
	from MEMBER_INFO mi, SPIDER_MEMBER m
	where m.id=mi.id and m.id!='admin' and m.id!='test1'
select * from crops

-- 멤버 상태 시퀀스 생성
CREATE SEQUENCE member_state_SEQ nocache;

-- 멤버 테이블 생성
select * from SPIDER_MEMBER
CREATE TABLE spider_member
(
    id              VARCHAR2(50)    NOT NULL, 
    name            VARCHAR2(30)    NOT NULL, 
    password        VARCHAR2(30)    NOT NULL, 
    nickname        VARCHAR2(30)    NOT NULL, 
    member_level    VARCHAR2(20)    DEFAULT '초급' NOT NULL, 
    state_number    NUMBER          DEFAULT 1 NOT NULL, 
    CONSTRAINT SPIDER_MEMBER_PK PRIMARY KEY (id),
    CONSTRAINT FK_spider_member_state_number_ FOREIGN KEY (state_number) REFERENCES member_state (state_number)
);

-- 멤버 회원 추가
insert into spider_member values('admin','관리자','1234','관리자','관리자',1);

-- 회원 확인
select id, name, nickname, member_level as memberLevel, state_number as state from spider_member where id='admin' and password ='1234'

-- 멤버 부가정보 테이블 생성
CREATE TABLE member_info 
(
    id          VARCHAR2(50)     NOT NULL, 
    email       VARCHAR2(100)    NOT NULL, 
    address     VARCHAR2(100)    NOT NULL, 
    birthday    DATE             NOT NULL, 
    tel         VARCHAR2(50)     NOT NULL, 
    gender      VARCHAR2(10)     NOT NULL, 
    regdate     DATE             DEFAULT sysdate NOT NULL, 
    CONSTRAINT MEMBER_INFO_PK PRIMARY KEY (id),
    CONSTRAINT FK_member_info_id_spidermember FOREIGN KEY (id) REFERENCES spider_member (id)
);
select * from farm
select * from crops
-- 작물 테이블 생성
CREATE TABLE crops
(
    crops_no       NUMBER          NOT NULL, 
    crops_name     VARCHAR2(50)    NOT NULL, 
    crops_level    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT CROPS_PK PRIMARY KEY (crops_no)
);
select * from crops
-- 작물 시퀀스 생성
CREATE SEQUENCE crops_SEQ nocache;

-- 작물 부가정보 테이블 생성
CREATE TABLE crops_info
(
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
select * 
-- 회원 기호 작물 테이블
CREATE TABLE member_like_crops
(
    id         VARCHAR2(50)      NOT NULL, 
    crops_no    NUMBER    NOT NULL, 
    CONSTRAINT MEMBER_LIKE_CROPS_PK PRIMARY KEY (id, crops_no),
    CONSTRAINT FK_member_like_crops_id_member FOREIGN KEY (id) REFERENCES member_info (id),
    CONSTRAINT FK_member_like_crops_crops_no_ FOREIGN KEY (crops_no) REFERENCES crops (crops_no)
)

-- 신고게시판
CREATE TABLE accuse
(
    accuse_no             NUMBER           NOT NULL, 
    accuse_category_no    VARCHAR2(50)     NOT NULL, 
    accuse_id             VARCHAR2(50)     NOT NULL, 
    reported_id           VARCHAR2(50)     NOT NULL, 
    accuse_date           DATE             DEFAULT sysdate NOT NULL, 
    accuse_reason         VARCHAR2(500)    NOT NULL, 
    accuse_proof          VARCHAR2(500)    NOT NULL, 
    accuse_resultday      DATE             ,
    result_reason         VARCHAR2(500) ,
    CONSTRAINT ACCUSE_PK PRIMARY KEY (accuse_no),
    CONSTRAINT FK_accuse_accuse_id_spider_mem FOREIGN KEY (accuse_id) REFERENCES spider_member (id),
    CONSTRAINT FK_accuse_reported_id_spider_m FOREIGN KEY (reported_id) REFERENCES spider_member (id)   
);


-- 크롭 시퀀스 생성
CREATE SEQUENCE  accuse_SEQ nocache;
-- 판메자 지원 게시판
CREATE TABLE apply_seller
(
    apply_no            NUMBER          NOT NULL, 
    id                  VARCHAR2(50)    NOT NULL, 
    farmer_document     VARCHAR2(50)    NOT NULL, 
    apply_state         VARCHAR2(20)    DEFAULT '미처리' NOT NULL, 
    apply_resultdate    date            NULL, 
    apply_reason        VARCHAR2(50)    NULL, 
    CONSTRAINT APPLY_FAMMER_PK PRIMARY KEY (apply_no),
    CONSTRAINT FK_apply_fammer_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id)
);

-- 판매자 지원 신청번호 시퀀스
CREATE SEQUENCE apply_fammer_SEQ nocache;


-- 교환 게시판 테이블
CREATE TABLE trade_post
(
    trade_no            NUMBER          NOT NULL, 
    trade_kind          VARCHAR2(50)    NOT NULL, 
    trade_hits          NUMBER          DEFAULT 0 NOT NULL, 
    trade_title         VARCHAR2(50)    NOT NULL, 
    trade_content       CLOB            NOT NULL, 
    trade_photo         VARCHAR2(50)    NULL, 
    id                  VARCHAR2(50)    NOT NULL, 
    trade_replycount    NUMBER          DEFAULT 0 NOT NULL, 
    CONSTRAINT TRADE_POST_PK PRIMARY KEY (trade_no),
    CONSTRAINT FK_trade_post_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id)
);
select * from spider_member

-- 교환게시판 시퀀스
CREATE SEQUENCE trade_post_SEQ nocache;

-- 교환 게시판 답변 테이블
CREATE TABLE trade_reply
(
    reply_no         NUMBER            NOT NULL, 
    parent_reply     NUMBER            NULL, 
    id               VARCHAR2(50)      NOT NULL, 
    reply_regdate    DATE              DEFAULT sysdate NOT NULL, 
    trade_no         NUMBER            NOT NULL, 
    reply_comment    VARCHAR2(1000)    NOT NULL, 
    CONSTRAINT TRADE_REPLY_PK PRIMARY KEY (reply_no),
    CONSTRAINT FK_trade_reply_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id),
    CONSTRAINT FK_trade_reply_trade_no_trade_ FOREIGN KEY (trade_no) REFERENCES trade_post (trade_no)
);
-- 교환게시판 답변 테이블 시퀀스
CREATE SEQUENCE trade_reply_SEQ nocache;



-- 농지 테이블
CREATE TABLE farm
(
    farm_no           NUMBER           NOT NULL, 
    id                VARCHAR2(50)     NOT NULL, 
    farm_size         NUMBER           NOT NULL, 
    farm_address      VARCHAR2(100)    NOT NULL, 
    farm_startdate    DATE             NOT NULL, 
    farm_enddate      DATE             NOT NULL, 
    image		varchar2(100)    not null,
    CONSTRAINT FARM_PK PRIMARY KEY (farm_no),
    CONSTRAINT FK_farm_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id)
);
-- 농지 테이블 시퀀스
CREATE SEQUENCE farm_SEQ nocache;
select * from farm
select * from spider_member
SELECT farm_SEQ.CURRVAL FROM farm
select * from available_crops
select * from crops
select to_char(SYSDATE, 'YYYY.MM.DD') from dual;
select * from spider_member
select * from rent
    select * from rent where recruit_no = '2'
select * from member_state
select * from spider_member
--주로사용하는 쿼리문
select * from rent
select * from recruit

insert into crops values(crops_SEQ.nextval,'2','3')
insert into farm(farm_no,id,farm_size,farm_address,farm_startdate,farm_enddate) values(farm_SEQ.nextval,'admin',10,'용인',to_char(SYSDATE, 'YYYY.MM.DD') ,to_date('2018.05.17','yyyy.mm.dd'))
insert into available_crops values(1,5)
insert into spider_member() values('')
insert into rent values(rent_SEQ.nextval,1,'admin',2,70,5,'대기')
insert into recruit values(recruit_SEQ.nextval,7,'모집중',SYSDATE,SYSDATE,1500,'DDDD','모집중',70)

delete rent where rent_no='1'
delete spider_member where id='java'
delete crops where crops_no='8'
delete farm where id = 'java'
delete available_crops where farm_no=11
select * from SPIDER_MEMBER
-- 농지에서 재배가능한 작물
CREATE TABLE available_crops
(
    crops_no    NUMBER          NOT NULL, 
    farm_no     NUMBER          NOT NULL, 
    CONSTRAINT AVAILABLE_CROPS_PK PRIMARY KEY (crops_no, farm_no),
    CONSTRAINT FK_available_crops_crops_no_cr FOREIGN KEY (crops_no) REFERENCES crops (crops_no),
    CONSTRAINT FK_available_crops_farm_no_far FOREIGN KEY (farm_no) REFERENCES farm (farm_no)
);
CREATE TABLE recruit
(
    recruit_no           NUMBER          NOT NULL, 
    farm_no              NUMBER          NOT NULL, 
    recruit_kind         VARCHAR2(50)    NOT NULL, 
    recruit_startdate    DATE            NOT NULL, 
    recruit_enddate      DATE            NOT NULL, 
    price                NUMBER          NOT NULL, 
    recruit_content      CLOB            NOT NULL, 
    recruit_status       VARCHAR2(50)    NOT NULL, 
    recruit_size         NUMBER          NOT NULL, 
    CONSTRAINT RECRUIT_PK PRIMARY KEY (recruit_no),
    CONSTRAINT FK_recruit_farm_no_farm_farm_n FOREIGN KEY (farm_no) REFERENCES farm (farm_no)
);
CREATE SEQUENCE recruit_SEQ nocache;


CREATE TABLE rent
(
    rent_no        NUMBER          NOT NULL, 
    crops_no       NUMBER          NOT NULL, 
    id             VARCHAR2(50)    NOT NULL, 
    recruit_no     NUMBER          NOT NULL, 
    rent_size      NUMBER          NOT NULL, 
    rent_month     NUMBER          NOT NULL, 
    rent_status    VARCHAR2(50)    DEFAULT '미처리' NOT NULL, 
    CONSTRAINT RENT_PK PRIMARY KEY (rent_no),
    CONSTRAINT FK_rent_recruit_no_recruit_rec FOREIGN KEY (recruit_no) REFERENCES recruit (recruit_no),
    CONSTRAINT FK_rent_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id)
);

CREATE SEQUENCE rent_SEQ nocache;




-- 테이블 전체 삭제
drop table rent;
drop table recruit;
drop table available_crops;
drop table farm;
drop table trade_reply;
drop table trade_post;
drop table apply_seller;
drop table accuse;
drop table member_like_crops;
drop table crops_info;
drop table crops;
drop table member_info;
drop table spider_member;
drop table member_state;

select * from spider_member

select * from crops

다 있는데
저게 안불러와지네 사진이 그치
이부분에
각각맞는 농작물사진 출력해야하나요??
아니 사전에 들어가면 농작물이 다 안나와
crops 테이블에 농작물이 10개가있는데
사전가면 4개밖에없다 이런말인가요?

나는 들어가면 다 나오거든 이미지가


update spider_member set member_level='판매자' where id='aaaa'
select * from member_state

select * from membeR_info

select * from spider_member

select * from rent;

update rent set rent_status='대여중' where id='test2';


update spider_member set member_level='관리자' where id='admin'
-- 시퀀스 전체 삭제 쿼리문입니다.
drop sequence rent_SEQ;
drop sequence recruit_SEQ;
drop sequence farm_SEQ;
drop sequence trade_reply_SEQ;
drop sequence trade_post_SEQ;
drop sequence apply_fammer_SEQ;
drop sequence accuse_SEQ ;
drop sequence crops_SEQ;
drop sequence member_state_SEQ;