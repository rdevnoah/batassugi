-- 멤버 상태 테이블 생성
CREATE TABLE member_state
(
    state_number    NUMBER           NOT NULL, 
    state_set       VARCHAR2(50)     NOT NULL, 
    stopdate        VARCHAR2(100)    NULL, 
    CONSTRAINT MEMBER_STATE_PK PRIMARY KEY (state_number)
);

-- 멤버 상태 시퀀스 생성
CREATE SEQUENCE member_state_SEQ nocache;

-- 멤버 상태 정보 추가 : 탈퇴 로그인 안되게
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);

-- 멤버 상태 테이블 확인
select * from member_state;


-- 멤버 테이블 생성
CREATE TABLE spider_member
(
    id              VARCHAR2(50)    NOT NULL, 
    name            VARCHAR2(30)    NOT NULL, 
    password        VARCHAR2(30)    NOT NULL, 
    nickname        VARCHAR2(30)    NOT NULL, 
    member_level    VARCHAR2(20)    DEFAULT '초급' NOT NULL, 
    state_number    NUMBER          not null , 
    CONSTRAINT SPIDER_MEMBER_PK PRIMARY KEY (id),
    CONSTRAINT FK_spider_member_state_number_ FOREIGN KEY (state_number) REFERENCES member_state (state_number)
);

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
    image		varchar2(100)    not null,
    CONSTRAINT MEMBER_INFO_PK PRIMARY KEY (id),
    CONSTRAINT FK_member_info_id_spidermember FOREIGN KEY (id) REFERENCES spider_member (id)
);

-- 멤버 회원 추가
insert into spider_member values('admin','관리자','1234','관리자','관리자',1);
insert into MEMBER_INFO values('admin','admin@kosta','경기도 판교',sysdate,'01012345678','여성',sysdate,'default.png')

-- 회원 확인
select * from SPIDER_MEMBER;
select * from MEMBER_INFO;

-- 작물 테이블 생성
CREATE TABLE crops
(
    crops_no       NUMBER          NOT NULL, 
    crops_name     VARCHAR2(50)    NOT NULL, 
    crops_level    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT CROPS_PK PRIMARY KEY (crops_no)
);

-- 작물 시퀀스 생성
CREATE SEQUENCE crops_SEQ nocache;

-- 작물사전 테스트용 DB
insert into crops values(crops_SEQ.nextval, '브로콜리', '하');
insert into crops values(crops_SEQ.nextval, '땅콩', '하');
insert into crops values(crops_SEQ.nextval, '옥수수', '중');
insert into crops values(crops_SEQ.nextval, '부추', '하');
insert into crops values(crops_SEQ.nextval, '깻잎', '중');
insert into crops values(crops_SEQ.nextval, '케일', '중');
insert into crops values(crops_SEQ.nextval, '호박', '상');
insert into crops values(crops_SEQ.nextval, '대파', '상');
insert into crops values(crops_SEQ.nextval, '쪽파', '하');
insert into crops values(crops_SEQ.nextval, '마늘', '중');


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


-- 작물사전 상세보기 테스트용 DB
insert into crops_info values(1, 'broccoli1.jpg','broccoli2.jpg','broccoli3.jpg','broccoli4.jpg','1월~3월','4월~6월',
'칼로 아랫잎을 4~5장 붙여서 높이 15cm 정도로 맞추어 수확한다. 적기가 지나면 꽃이 피어 버리므로 특히 수확기의 기온이 높은 봄 파종재배에서는 주의하여야 한다.',
'iconbroccoli.jpg','브로콜리볶음,브로콜리무침');
insert into crops_info values(2, 'peanut1.jpg','peanut2.jpg','peanut3.jpg','peanut4.jpg','4월~5월','9월~10월',
'꼬투리에 60~80%의 그물무늬가 뚜렷해졌을 때가 수확 적기이며
수확 후 줄기에 꼬투리가 달린 채로 7일 정도 말린 후 꼬투리를
털어서 다시 말려 수분 10%이하가 되게 하여 수확한다. 
씨앗용은 피콩으로 저장하여 가급적 파종기에 임박하여 탈각을 
하는 게 발아율 향상에 좋다.',
'iconpeanut.jpg','땅콩조림');
insert into crops_info values(3, 'corn1.jpg','corn2.jpg','corn3.jpg','corn4.jpg','4월','7월~8월',
'옥수수는 주로 풋옥수수를 수확하여 쪄먹기 위해 텃밭이나 주말농장에서 재배를 한다. 요새 식구도 얼마 안 되는 가정에서 한꺼번에 많은 옥수수를 수확하면 한 번에 다 먹지 못한다.
 수확시기를 조금 조절하려면 10일 간격으로 파종시기를 달리한다.', 'iconcorn.jpg','옥수수전,콘샐러드');
 insert into crops_info values(4, 'chives1.jpg','chives2.jpg','chives3.jpg','chives4.jpg','4월~5월','9월~11월',
'부추는 자라는 대로 수확이 가능하다. 키가 20㎝ 이상이 되면 
필요한 만큼 베어 이용한다. 수확이 늦어지면 부추가 억세지는 수가 있다. 
이때는 다시 베어주면 보드라운 부추가 자라게 된다. 
부추를 수확하는 방법에 따라 다음 번의 수확량이 달라진다는 자료가 있다.
부추 줄기를 바짝 잘라낼수록 다음 번의 수확량이 줄어들기
때문에 1㎝ 정도 줄기를 남겨 두고 그 위를 잘라내는 것이 좋다고 한다.',
'iconchives.jpg','부추전 , 부추무침 ,부추겉절이');
 insert into crops_info values(5, 'perilla1.jpg','perilla2.jpg','perilla3.jpg','perilla4.jpg','2월~4월','8월~9월',
'칼로 아랫잎을 4~5장 붙여서 높이 15cm 정도로 맞추어 수확한다. 적기가 지나면 꽃이 피어 버리므로 특히 수확기의 기온이 높은 봄 파종재배에서는 주의하여야 한다.',
'iconperilla.jpg','깻잎짱아치,깻잎무침');
 insert into crops_info values(6, '케일1.jpg','케일2.jpg','케일3.jpg','케일4.jpg','3월중 ~ 4월초, 6월중 ~ 7월중','6월중 ~ 7월중, 9월초 ~ 11월중',
'잎이 손바닥 크지 정도 일 때 수시로 잎을 때어내 수확한다. 수개월동안 수확하게 되므로 밑거름은 충분히 넣는다. 수확 후에는 수시로 웃거름을 주는 것이 수확량을 많게 한다.',
'icon케일.jpg','샐러드, 무침, 된장국');
 insert into crops_info values(7, '호박1.jpg','호박2.jpg','호박3.jpg','호박4.jpg','4월말','7월중 ~ 10월중',
'쥬키니, 애호박, 풋호박 등 청과용은 꽃이 핀 후 7~10일이면 수확할 수 있다.',
'icon호박.jpg','전, 볶음, 샐러드, 무침, 된장국');
 insert into crops_info values(8, '대파1.jpg','대파2.jpg','대파3.jpg','대파4.jpg','3월말, 8월중~9월초','4월중~6월말, 8월중~11월말',
'중간 중간 대파가 자라면 수확한다. 11월경 서리 내리고 춥기 전에 모두 뽑아 갈무리 한다.',
'icon대파.jpg','장아찌, 김치, 무침');
 insert into crops_info values(9, '쪽파1.jpg','쪽파2.jpg','쪽파3.jpg','쪽파4.jpg','8월중~9월초','3월말~4월말, 9월중~10월중',
'쪽파는 종구를 심고 45 ~ 50일 정도 키우는게 가장 맛이 좋은 쪽파가 된다. 쪽파는 심어 놓고 보름정도만 키워도 파전을 만들어 먹기에 알맞은 크기로 자란다. 김장배추를 심은지 10 ~ 15일후에 쪽파를 심으면 김장배추와 수확시기를 맞추게 된다.',
'icon쪽파.jpg','쪽파강회, 쪽파숙회, 파전, 김치');
 insert into crops_info values(10, '마늘1.jpg','마늘2.jpg','마늘3.jpg','마늘4.jpg','9월중 ~ 10월중','3월중 ~ 4월말, 6월중 ~ 6월말',
'난지형 마늘은 5월 중, 하순경, 한지형 마늘은 6월 중순경, 마늘잎이 3분의 2이상, 또는 50 ~ 75% 정도 누렇게 변하면 수확합니다. 마늘수확시기가 빠르면 구의 비대가 불충실해지고 수분함량이 많아져 저장중에 부패가 많아집니다.',
'icon마늘.jpg','구이, 볶음, 조림');

-- 회원 기호 작물 테이블
CREATE TABLE member_like_crops
(
    id         VARCHAR2(50)      NOT NULL, 
    crops_no    NUMBER    NOT NULL, 
    CONSTRAINT MEMBER_LIKE_CROPS_PK PRIMARY KEY (id, crops_no),
    CONSTRAINT FK_member_like_crops_id_member FOREIGN KEY (id) REFERENCES member_info (id),
    CONSTRAINT FK_member_like_crops_crops_no_ FOREIGN KEY (crops_no) REFERENCES crops (crops_no)
);

-- 회원 기호 작물 입력
insert into member_like_crops values('admin',1);
insert into member_like_crops values('admin',2);
insert into member_like_crops values('admin',3);

-- 회원 기호 작물 확인
select * from member_like_crops;

select crops_no from  member_like_crops where id='admin' 

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
    apply_date			date			NOT NULL,
    apply_state         VARCHAR2(20)    DEFAULT '미처리' NOT NULL, 
    apply_resultdate    date            NULL, 
    apply_reason        VARCHAR2(50)    NULL, 
    CONSTRAINT APPLY_FAMMER_PK PRIMARY KEY (apply_no),
    CONSTRAINT FK_apply_fammer_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id)
);


-- 판매자 지원 신청번호 시퀀스
CREATE SEQUENCE apply_fammer_SEQ nocache;


-- 판매자 신청 테이블 확인
select apply_no,id, farmer_document, apply_date, apply_state from apply_seller;


-- 판매자 신청 회원 데이터 등록
-- 거절
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'admin','농지.png',sysdate); 
-- 승인
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham1','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham2','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham3','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham4','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham5','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham6','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham7','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham8','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham9','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham10','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham11','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham12','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham13','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham14','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham15','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham16','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham17','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham18','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham19','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham20','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham21','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham22','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham23','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham24','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham25','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham26','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham27','농지.png',sysdate);
insert into APPLY_SELLER(apply_no,id,farmer_document,apply_date)values (apply_fammer_SEQ.nextval,'Tottenham28','농지.png',sysdate);




-- 판매자 지원 신청을 위한 데이터 등록
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
insert into member_state(state_number,state_set,stopdate) values(member_state_SEQ.nextval,'활동',sysdate);
select * from member_state order by state_number desc;

insert into spider_member values('Tottenham1','Bamidele Alli','1234','토튼햄1','초급',2);
insert into spider_member values('Tottenham2','Eric Dier','1234','토튼햄2','초급',3);
insert into spider_member values('Tottenham3','Juan Foyth','1234','토튼햄3','초급',4);
insert into spider_member values('Tottenham4','Anthony Georgiou','1234','토튼햄4','초급',5);
insert into spider_member values('Tottenham5','Tashan Oakley-Boothe','1234','토튼햄5','초급',6);
insert into spider_member values('Tottenham6','Davinson Sánchez Mina','1234','토튼햄6','초급',7);
insert into spider_member values('Tottenham7','Kazaiah Sterling','1234','토튼햄7','초급',8);
insert into spider_member values('Tottenham8','Kyle Walker-Peters','1234','토튼햄8','초급',9);
insert into spider_member values('Tottenham9','Alfie Whiteman','1234','토튼햄9','초급',10);
insert into spider_member values('Tottenham10','Harry Winks','1234','토튼햄10','초급',11);
insert into spider_member values('Tottenham11','파울로 가자니가','1234','토튼햄11','초급',12);
insert into spider_member values('Tottenham12','벤 데이비스','1234','토튼햄12','초급',13);
insert into spider_member values('Tottenham13','뮤싸 뎀벨레','1234','토튼햄13','초급',14);
insert into spider_member values('Tottenham14','애릭 라멜라','1234','토튼햄14','초급',15);
insert into spider_member values('Tottenham15','위고 로리스','1234','토튼햄15','초급',16);
insert into spider_member values('Tottenham16','데니 로우스','1234','토튼햄16','초급',17);
insert into spider_member values('Tottenham17','얀 베르통헨','1234','토튼햄17','초급',18);
insert into spider_member values('Tottenham18','미셸 보름','1234','토튼햄18','초급',19);
insert into spider_member values('Tottenham19','손 흥민','1234','토튼햄19','초급',20);
insert into spider_member values('Tottenham20','모우사 시소코','1234','토튼햄20','초급',21);
insert into spider_member values('Tottenham21','토비 알데르베이럴트','1234','토튼햄21','초급',22);
insert into spider_member values('Tottenham22','크리스챤 에릭슨','1234','토튼햄22','초급',23);
insert into spider_member values('Tottenham23','세르주 오리어','1234','토튼햄23','초급',24);
insert into spider_member values('Tottenham24','빅토르 완야마','1234','토튼햄24','초급',25);
insert into spider_member values('Tottenham25','페르난도 요렌테 토레스','1234','토튼햄25','초급',26);
insert into spider_member values('Tottenham26','헤리 케인','1234','토튼햄26','초급',27);
insert into spider_member values('Tottenham27','키어란 트리피어','1234','토튼햄27','초급',28);
insert into spider_member values('Tottenham28','루카스 호드리게스','1234','토튼햄28','초급',29);
select id from SPIDER_MEMBER where id='Tottenham27'


insert into MEMBER_INFO values('Tottenham1','Tottenham1@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham1.png');
insert into MEMBER_INFO values('Tottenham2','Tottenham2@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham2.png');
insert into MEMBER_INFO values('Tottenham3','Tottenham3@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham3.png');
insert into MEMBER_INFO values('Tottenham4','Tottenham4@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham4.png');
insert into MEMBER_INFO values('Tottenham5','Tottenham5@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham5.png');
insert into MEMBER_INFO values('Tottenham6','Tottenham6@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham6.png');
insert into MEMBER_INFO values('Tottenham7','Tottenham7@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham7.png');
insert into MEMBER_INFO values('Tottenham8','Tottenham8@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham8.png');
insert into MEMBER_INFO values('Tottenham9','Tottenham9@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham9.png');
insert into MEMBER_INFO values('Tottenham10','Tottenham10@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham10.png');
insert into MEMBER_INFO values('Tottenham11','Tottenham11@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham11.png');
insert into MEMBER_INFO values('Tottenham12','Tottenham12@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham12.png');
insert into MEMBER_INFO values('Tottenham13','Tottenham13@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham13.png');
insert into MEMBER_INFO values('Tottenham14','Tottenham14@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham14.png');
insert into MEMBER_INFO values('Tottenham15','Tottenham15@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham15.png');
insert into MEMBER_INFO values('Tottenham16','Tottenham16@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham16.png');
insert into MEMBER_INFO values('Tottenham17','Tottenham17@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham17.png');
insert into MEMBER_INFO values('Tottenham18','Tottenham18@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham18.png');
insert into MEMBER_INFO values('Tottenham19','Tottenham19@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham19.png');
insert into MEMBER_INFO values('Tottenham20','Tottenham20@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham20.png');
insert into MEMBER_INFO values('Tottenham21','Tottenham21@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham21.png');
insert into MEMBER_INFO values('Tottenham22','Tottenham22@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham22.png');
insert into MEMBER_INFO values('Tottenham23','Tottenham23@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham23.png');
insert into MEMBER_INFO values('Tottenham24','Tottenham24@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham24.png');
insert into MEMBER_INFO values('Tottenham25','Tottenham25@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham25.png');
insert into MEMBER_INFO values('Tottenham26','Tottenham26@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham26.png');
insert into MEMBER_INFO values('Tottenham27','Tottenham27@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham27.png');
insert into MEMBER_INFO values('Tottenham28','Tottenham28@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'Tottenham28.png');

-- 판매자 레벨 변경 테스트
update  SPIDER_MEMBER set member_level='판매자' where id='Tottenham26';



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
    CONSTRAINT FARM_PK PRIMARY KEY (farm_no),
    CONSTRAINT FK_farm_id_member_id FOREIGN KEY (id) REFERENCES spider_member (id)
);

-- 농지 테이블 시퀀스
CREATE SEQUENCE farm_SEQ nocache;


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