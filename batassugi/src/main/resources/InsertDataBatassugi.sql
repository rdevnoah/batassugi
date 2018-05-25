----------------------------------------------------------------------------------------------------------------------
/*
 * 작물 사전 정보
 */

-- 작물 정보
INSERT INTO crops VALUES(crops_SEQ.nextval, '브로콜리', '하'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '땅콩', '하'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '옥수수', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '부추', '하'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '깻잎', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '케일', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '호박', '상'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '대파', '상'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '쪽파', '하'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '마늘', '중'); 

INSERT INTO crops VALUES(crops_SEQ.nextval, '가지', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '감자', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '검은콩', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '고구마', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '고추', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '당근', '중');
INSERT INTO crops VALUES(crops_SEQ.nextval, '딸기', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '메론', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '무', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '방울토마토', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '배추', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '수박', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '시금치', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '양배추', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '양파', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '오이', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '참외', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '토마토', '중'); 
INSERT INTO crops VALUES(crops_SEQ.nextval, '포도', '중'); 

-- 작물사전 상세보기 테스트용 DB
INSERT INTO crops_info VALUES(1, 'broccoli1.jpg','broccoli2.jpg','broccoli3.jpg','broccoli4.jpg','1월~3월','4월~6월',
'칼로아랫잎을4~5장붙여서높이15cm 정도로맞추어수확한다. 적기가지나면꽃이피어버리므로특히수확기의기온이높은봄파종재배에서는주의하여야한다.',
'브로콜리.png','브로콜리볶음,브로콜리무침');
INSERT INTO crops_info VALUES(2, 'peanut1.jpg','peanut2.jpg','peanut3.jpg','peanut4.jpg','4월~5월','9월~10월',
'꼬투리에60~80%의그물무늬가뚜렷해졌을때가수확적기이며
수확후줄기에꼬투리가달린채로7일정도말린후꼬투리를
털어서다시말려수분10%이하가되게하여수확한다. 
씨앗용은피콩으로저장하여가급적파종기에임박하여탈각을
하는게발아율향상에좋다.',
'땅콩.png','땅콩조림');
INSERT INTO crops_info VALUES(3, 'corn1.jpg','corn2.jpg','corn3.jpg','corn4.jpg','4월','7월~8월',
'옥수수는주로풋옥수수를수확하여쪄먹기위해텃밭이나주말농장에서재배를한다. 요새식구도얼마안되는가정에서한꺼번에많은옥수수를수확하면한번에다먹지못한다.
 수확시기를조금조절하려면10일간격으로파종시기를달리한다.', '옥수수.png','옥수수전,콘샐러드');
 INSERT INTO crops_info VALUES(4, 'chives1.jpg','chives2.jpg','chives3.jpg','chives4.jpg','4월~5월','9월~11월',
'부추는 자라는대로 수확이 가능하다. 키가20㎝ 이상이되면
필요한 만큼베어이용한다. 수확이 늦어지면 부추가 억세지는 수가있다. 
이때는 다시베어주면 보드라운 부추가 자라게된다. 
부추줄기를 바짝잘라낼수록 다음번의 수확량이 줄어들기
 때문에 1㎝정도 줄기를남겨두고 그위를 잘라내는것이 좋다.',
'부추.png','부추전, 부추무침,부추겉절이');
 INSERT INTO crops_info VALUES(5, 'perilla1.jpg','perilla2.jpg','perilla3.jpg','perilla4.jpg','2월~4월','8월~9월',
'칼로아랫잎을4~5장붙여서높이15cm 정도로맞추어수확한다. 적기가지나면꽃이피어버리므로특히수확기의기온이높은봄파종재배에서는주의하여야한다.',
'깻잎.png','깻잎짱아치,깻잎무침');
 INSERT INTO crops_info VALUES(6, '케일1.jpg','케일2.jpg','케일3.jpg','케일4.jpg','3월중~ 4월초, 6월중~ 7월중','6월중~ 7월중, 9월초~ 11월중',
'잎이손바닥크지정도일때수시로잎을때어내수확한다. 수개월동안수확하게되므로밑거름은충분히넣는다. 수확후에는수시로웃거름을주는것이수확량을많게한다.',
'케일.png','샐러드, 무침, 된장국');
 INSERT INTO crops_info VALUES(7, '호박1.jpg','호박2.jpg','호박3.jpg','호박4.jpg','4월말','7월중~ 10월중',
'쥬키니, 애호박, 풋호박등청과용은꽃이핀후7~10일이면수확할수있다.',
'호박.png','전, 볶음, 샐러드, 무침, 된장국');
 INSERT INTO crops_info VALUES(8, '대파1.jpg','대파2.jpg','대파3.jpg','대파4.jpg','3월말, 8월중~9월초','4월중~6월말, 8월중~11월말',
'중간중간대파가자라면수확한다. 11월경서리내리고춥기전에모두뽑아갈무리한다.',
'대파.png','장아찌, 김치, 무침');
 INSERT INTO crops_info VALUES(9, '쪽파1.jpg','쪽파2.jpg','쪽파3.jpg','쪽파4.jpg','8월중~9월초','3월말~4월말, 9월중~10월중',
'쪽파는종구를심고45 ~ 50일정도키우는게가장맛이좋은쪽파가된다. 쪽파는심어놓고보름정도만키워도파전을만들어먹기에알맞은크기로자란다. 김장배추를심은지10 ~ 15일후에쪽파를심으면김장배추와수확시기를맞추게된다.',
'쪽파.png','쪽파강회, 쪽파숙회, 파전, 김치');
 INSERT INTO crops_info VALUES(10, '마늘1.jpg','마늘2.jpg','마늘3.jpg','마늘4.jpg','9월중~ 10월중','3월중~ 4월말, 6월중~ 6월말',
'난지형마늘은5월중, 하순경, 한지형마늘은6월중순경, 마늘잎이3분의2이상, 또는50 ~ 75% 정도누렇게변하면수확합니다. 마늘수확시기가빠르면구의비대가불충실해지고수분함량이많아져저장중에부패가많아집니다.',
'마늘.png','구이, 볶음, 조림');
INSERT INTO crops_info VALUES(11, '가지1.jpg','가지2.jpg','가지3.jpg','가지4.jpg','4월 하순~5월 상순','7월~10월',
'가지는 보습성이 좋은 밭에서 기르는 것이 좋으므로 짚이나 풀, 낙엽 등을 두텁게 덮어주면 좋다. 여름에 장기간 비가 오지 않을 때는 물을 자주 주어 밭이 메마르지 않게 해준다. 그러기 위해서는 수시로 복잡한 곳의 연약해진 잎과 줄기를 잘라주어 아래쪽에 열려있는 가지 열매에 햇볕이 잘 들도록 해준다.
',
'가지.png','가지볶음, 가지튀김, 가지밥');
INSERT INTO crops_info VALUES(12, '감자1.jpg','감자2.jpg','감자3.jpg','감자4.jpg','3월','6월~7월',
'씨감자를 준비한 후, 비닐멀칭한다',
'감자.png','감자탕, 찐감자, 감자튀김');
INSERT INTO crops_info VALUES(13, '검은콩1.jpg','검은콩2.jpg','검은콩3.jpg','검은콩4.jpg','5월 하순~6월 중순','10월 하순~11월',
'파종 2~3시간 전 씨앗을 물에 담가 불려 준비한다. 파종 1주전 소량의 완숙 퇴비를 뿌린 밭에 파종하며  토양의 보습과 잡초 방지를 위해 비닐멀칭을 하고 파종골 간격 50~55cm, 포기간격 25~3cm로 심는다. 파종을 완료하면 충분한 량의 물을 뿌려준다.  
보통 꽃 핀 후 60일 전후가 콩의 수확히기이다. 대략적으로 콩을 심은지 120일 전후가 콩을 수확할수 있는 시기가 되는데, 이 때에는 콩잎이 누렇게 변하여 떨어질 때이며 콩 수확 시 건조를 잘해야 오래 보관할 수 있다. 
',
'검은콩.png','콩자반, 비지전, 검은콩밥, 콩조림');
INSERT INTO crops_info VALUES(14, '고구마1.jpg','고구마2.jpg','고구마3.jpg','고구마4.jpg','4월~5월','9월',
'평당 10kg의 거름을 준 후, 고구마 모종을 수평심는다',
'고구마.png','삶은 고구마, 맛탕');
INSERT INTO crops_info VALUES(15, '고추1.jpg','고추2.jpg','고추3.jpg','고추4.jpg','1월 초순~2월','8월~10월초',
'고랑만들기는 정식 10~15일 전에 퇴비와 석회복합 21-17-17을 충분히 뿌리고 로타리 작업 후 둑(60cm 넓이에 30cm 높이)를 만들고 검정 비닐 피복을 한다. 
초기에 측지(아랫가지)를 한번만 따준다. 정식 후 5포기 간격으로 지주목(60cm 이상)을 세우고 노끈으로 고추가 쓰러지지 않게 해준다.
',
'고추.png','고추장, 고춧가루');
INSERT INTO crops_info VALUES(16, '당근1.jpg','당근2.jpg','당근3.jpg','당근4.jpg','3월 하순~4월 상순, 8월','6월 하순~7월 상순, 11월',
'당근은 봄·가을에 한 번씩 재배가 가능한 채소다. 파종 초기에 돋아나는 풀을 잘 정리해주면 된다. 봄 재배는 무더위를 대비해 반드시 포기 사이의 간격을 넓혀주어 바람이 잘 통하게 길러야 한다. 벌레, 병 등에 아주 강한 채소라 기르기가 수월하다.',
'당근.png','당근 케이크, 당근 주스');

----------------------------------------------------------------------------------------------------------------------
/*
 * 회원정보 추가
 */

-- 구매자 정보
INSERT INTO spider_member VALUES('test1','Bamidele Alli','1234','테스트1','초급',1);
INSERT INTO spider_member VALUES('test2','Eric Dier','1234','테스트2','초급',1);
INSERT INTO spider_member VALUES('test3','Juan Foyth','1234','테스트3','초급',1);
INSERT INTO spider_member VALUES('test4','Anthony Georgiou','1234','테스트4','초급',1);
INSERT INTO spider_member VALUES('test5','Tashan Oakley-Boothe','1234','테스트5','초급',1);
INSERT INTO spider_member VALUES('test6','Davinson Sánchez Mina','1234','테스트6','초급',1);
INSERT INTO spider_member VALUES('test7','Kazaiah Sterling','1234','테스트7','초급',1);
INSERT INTO spider_member VALUES('test8','Kyle Walker-Peters','1234','테스트8','초급',1);
INSERT INTO spider_member VALUES('test9','Alfie Whiteman','1234','테스트9','초급',1);
INSERT INTO spider_member VALUES('test10','Harry Winks','1234','테스트10','초급',1);
INSERT INTO spider_member VALUES('test11','파울로 가자니가','1234','테스트11','초급',1);
INSERT INTO spider_member VALUES('test12','벤 데이비스','1234','테스트12','초급',1);
INSERT INTO spider_member VALUES('test13','뮤싸 뎀벨레','1234','테스트13','초급',1);
INSERT INTO spider_member VALUES('test14','애릭 라멜라','1234','테스트14','초급',1);
INSERT INTO spider_member VALUES('test15','위고 로리스','1234','테스트15','초급',1);
INSERT INTO spider_member VALUES('test16','데니 로우스','1234','테스트16','초급',1);
INSERT INTO spider_member VALUES('test17','얀 베르통헨','1234','테스트17','초급',1);
INSERT INTO spider_member VALUES('test18','미셸 보름','1234','테스트18','초급',1);
INSERT INTO spider_member VALUES('test19','손 흥민','1234','테스트19','초급',1);
INSERT INTO spider_member VALUES('test20','모우사 시소코','1234','테스트20','초급',1);
INSERT INTO spider_member VALUES('test21','토비 알데르베이럴트','1234','테스트21','초급',1);
INSERT INTO spider_member VALUES('test22','크리스챤 에릭슨','1234','테스트22','초급',1);
INSERT INTO spider_member VALUES('test23','세르주 오리어','1234','테스트23','초급',1);
INSERT INTO spider_member VALUES('test24','빅토르 완야마','1234','테스트24','초급',1);
INSERT INTO spider_member VALUES('test25','페르난도 토레스','1234','테스트25','초급',1);
INSERT INTO spider_member VALUES('test26','헤리 케인','1234','테스트26','초급',1);
INSERT INTO spider_member VALUES('test27','키어란 트리피어','1234','테스트27','초급',1);
INSERT INTO spider_member VALUES('test28','루카스 호드리게스','1234','테스트28','초급',1);

INSERT INTO member_info VALUES('test1','test1@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test2','test2@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test3','test3@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test4','test4@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate, 'default.png');
INSERT INTO member_info VALUES('test5','test5@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test6','test6@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test7','test7@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test8','test8@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test9','test9@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test10','test10@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test11','test11@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test12','test12@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test13','test13@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test14','test14@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test15','test15@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test16','test16@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test17','test17@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test18','test18@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test19','test19@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test20','test20@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test21','test21@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test22','test22@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test23','test23@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test24','test24@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test25','test25@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test26','test26@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test27','test27@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO member_info VALUES('test28','test28@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');

-- 회원 기호작물 추가
INSERT INTO member_like_crops VALUES('test1',1);
INSERT INTO member_like_crops VALUES('test1',2);
INSERT INTO member_like_crops VALUES('test1',3);

INSERT INTO member_like_crops VALUES('test2',1);
INSERT INTO member_like_crops VALUES('test2',2);
INSERT INTO member_like_crops VALUES('test2',3);

INSERT INTO member_like_crops VALUES('test3',1);
INSERT INTO member_like_crops VALUES('test3',2);
INSERT INTO member_like_crops VALUES('test3',3);

INSERT INTO member_like_crops VALUES('test4',1);
INSERT INTO member_like_crops VALUES('test4',2);
INSERT INTO member_like_crops VALUES('test4',3);

INSERT INTO member_like_crops VALUES('test5',1);
INSERT INTO member_like_crops VALUES('test5',2);
INSERT INTO member_like_crops VALUES('test5',3);

-- 판매자 정보
INSERT INTO spider_member VALUES('java1','Bamidele Alli','1234','테스트1','판매자',1);
INSERT INTO spider_member VALUES('java2','Eric Dier','1234','테스트2','판매자',1);
INSERT INTO spider_member VALUES('java3','Juan Foyth','1234','테스트3','판매자',1);
INSERT INTO spider_member VALUES('java4','Anthony Georgiou','1234','테스트4','판매자',1);
INSERT INTO spider_member VALUES('java5','Tashan Oakley-Boothe','1234','테스트5','판매자',1);
INSERT INTO spider_member VALUES('java6','Davinson Sánchez Mina','1234','테스트6','판매자',1);
INSERT INTO spider_member VALUES('java7','Kazaiah Sterling','1234','테스트7','판매자',1);
INSERT INTO spider_member VALUES('java8','Kyle Walker-Peters','1234','테스트8','판매자',1);
INSERT INTO spider_member VALUES('java9','Alfie Whiteman','1234','테스트9','판매자',1);
INSERT INTO spider_member VALUES('java10','Harry Winks','1234','테스트10','판매자',1);
INSERT INTO spider_member VALUES('java11','파울로 가자니가','1234','테스트11','판매자',1);
INSERT INTO spider_member VALUES('java12','벤 데이비스','1234','테스트12','판매자',1);
INSERT INTO spider_member VALUES('java13','뮤싸 뎀벨레','1234','테스트13','판매자',1);
INSERT INTO spider_member VALUES('java14','애릭 라멜라','1234','테스트14','판매자',1);
INSERT INTO spider_member VALUES('java15','위고 로리스','1234','테스트15','판매자',1);
INSERT INTO spider_member VALUES('java16','데니 로우스','1234','테스트16','판매자',1);
INSERT INTO spider_member VALUES('java17','얀 베르통헨','1234','테스트17','판매자',1);
INSERT INTO spider_member VALUES('java18','미셸 보름','1234','테스트18','판매자',1);
INSERT INTO spider_member VALUES('java19','손 흥민','1234','테스트19','판매자',1);
INSERT INTO spider_member VALUES('java20','모우사 시소코','1234','테스트20','판매자',1);
INSERT INTO spider_member VALUES('java21','토비 알데르베이럴트','1234','테스트21','판매자',1);
INSERT INTO spider_member VALUES('java22','크리스챤 에릭슨','1234','테스트22','판매자',1);
INSERT INTO spider_member VALUES('java23','세르주 오리어','1234','테스트23','판매자',1);
INSERT INTO spider_member VALUES('java24','빅토르 완야마','1234','테스트24','판매자',1);
INSERT INTO spider_member VALUES('java25','페르난도 토레스','1234','테스트25','판매자',1);
INSERT INTO spider_member VALUES('java26','헤리 케인','1234','테스트26','판매자',1);
INSERT INTO spider_member VALUES('java27','키어란 트리피어','1234','테스트27','판매자',1);
INSERT INTO spider_member VALUES('java28','루카스 호드리게스','1234','테스트28','판매자',1);

INSERT INTO MEMBER_INFO VALUES('java1','java1@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java2','java2@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java3','java3@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java4','java4@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate, 'default.png');
INSERT INTO MEMBER_INFO VALUES('java5','java5@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java6','java6@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java7','java7@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java8','java8@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java9','java9@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java10','java10@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java11','java11@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java12','java12@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java13','java13@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java14','java14@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java15','java15@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java16','java16@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java17','java17@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java18','java18@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java19','java19@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java20','java20@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java21','java21@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java22','java22@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java23','java23@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java24','java24@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java25','java25@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java26','java26@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java27','java27@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');
INSERT INTO MEMBER_INFO VALUES('java28','java28@kosta.com','잉글랜드 런던 해링게이',sysdate,'01012345678','남성',sysdate,'default.png');

-- 판매자 기호작물 추가
select * from member_like_crops;
INSERT INTO member_like_crops VALUES('java1',1);
INSERT INTO member_like_crops VALUES('java1',2);
INSERT INTO member_like_crops VALUES('java1',3);

INSERT INTO member_like_crops VALUES('java2',1);
INSERT INTO member_like_crops VALUES('java2',2);
INSERT INTO member_like_crops VALUES('java2',3);

INSERT INTO member_like_crops VALUES('java3',1);
INSERT INTO member_like_crops VALUES('java3',2);
INSERT INTO member_like_crops VALUES('java3',3);

INSERT INTO member_like_crops VALUES('java4',1);
INSERT INTO member_like_crops VALUES('java4',2);
INSERT INTO member_like_crops VALUES('java4',3);

INSERT INTO member_like_crops VALUES('java5',1);
INSERT INTO member_like_crops VALUES('java5',2);
INSERT INTO member_like_crops VALUES('java5',3);

-- 관리자
INSERT INTO spider_member(id, name, password, nickname, member_level, state_number) VALUES('admin','나는관리자야','1234','관리자임?','관리자',1);
-- 관리자 부가정보
INSERT INTO MEMBER_INFO VALUES('admin','admin@kosta.com','판교',sysdate,'01012345678','남성',sysdate,'default.png');
-- 관리자 기호작물
INSERT INTO member_like_crops VALUES('admin',1);
INSERT INTO member_like_crops VALUES('admin',2);
INSERT INTO member_like_crops VALUES('admin',3);

-- 회원상태 조회
SELECT * FROM member_state;
-- 회원 정보 조회
SELECT * FROM spider_member;
-- 회원 부가정보 조회
SELECT * FROM member_info;
-- 회원 기호 작물 확인
SELECT * FROM member_like_crops;

----------------------------------------------------------------------------------------------------------------------
/*
 * 판매자 신청 회원 데이터 등록
 */

-- 거절
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'admin','농지.png',sysdate);

-- 승인
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test1','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test2','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test3','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test4','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test5','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test6','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test7','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test8','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test9','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test10','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test11','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test12','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test13','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test14','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test15','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test16','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test17','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test18','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test19','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test20','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test21','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test22','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test23','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test24','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test25','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test26','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test27','농지.png',sysdate);
INSERT INTO APPLY_SELLER(apply_no,id,farmer_document,apply_date) VALUES (apply_fammer_SEQ.nextval,'test28','농지.png',sysdate);

SELECT * FROM member_state ORDER BY state_number DESC;

----------------------------------------------------------------------------------------------------------------------
/*
 *  판매자 농지, 농지대여모집 정보
 */
-- 판매자 농지정보
INSERT INTO farm VALUES(farm_seq.nextval, 'java1', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java2', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java3', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java4', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java5', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java6', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java7', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java8', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java9', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java10', 50000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('18.12.30','yy.mm.dd'), 'null');

INSERT INTO farm VALUES(farm_seq.nextval, 'java11', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java12', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java13', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java14', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java15', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java16', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java17', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java18', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java19', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');
INSERT INTO farm VALUES(farm_seq.nextval, 'java20', 100000, '판교', to_date('18.05.30','yy.mm.dd'), to_date('19.02.10','yy.mm.dd'), 'null');

SELECT * FROM farm;

-- 판매자가 농지 대여 모집
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 1, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 2, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 3, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 4, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 5, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 6, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 7, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 8, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 9, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 10, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.20','yy.mm.dd'), 1000, '농지대여 싸게해드림?','모집중',10000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 1, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 2, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 3, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 4, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 5, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 6, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 7, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 8, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 9, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 10, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.06.30','yy.mm.dd'), 1000, '여기가 제일싸요 ㄱㄱ해','모집중',20000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 1, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 2, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 3, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 4, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 5, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 6, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 7, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 8, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 9, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 10, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);

INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 11, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 12, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 13, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 14, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 15, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 16, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 17, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 18, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 19, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);
INSERT INTO recruit(recruit_no, farm_no, recruit_kind, recruit_startdate, recruit_enddate, price, recruit_content, recruit_status, recruit_size) 
VALUES(recruit_SEQ.nextval, 20, '대여', to_date('18.06.10','yy.mm.dd'), to_date('18.07.10','yy.mm.dd'), 1000, '고민하지말고 당장 ㄱㄱ해','모집중',30000);

SELECT * FROM recruit;
delete from available_crops

-- 작물 정보 추가
INSERT INTO available_crops(crops_no, farm_no) VALUES(1,1);
INSERT INTO available_crops(crops_no, farm_no) VALUES(2,2);
INSERT INTO available_crops(crops_no, farm_no) VALUES(3,3);
INSERT INTO available_crops(crops_no, farm_no) VALUES(4,4);
INSERT INTO available_crops(crops_no, farm_no) VALUES(5,5);
INSERT INTO available_crops(crops_no, farm_no) VALUES(6,6);
INSERT INTO available_crops(crops_no, farm_no) VALUES(7,7);
INSERT INTO available_crops(crops_no, farm_no) VALUES(8,8);
INSERT INTO available_crops(crops_no, farm_no) VALUES(9,9);
INSERT INTO available_crops(crops_no, farm_no) VALUES(10,10);
INSERT INTO available_crops(crops_no, farm_no) VALUES(11,11);
INSERT INTO available_crops(crops_no, farm_no) VALUES(12,12);
INSERT INTO available_crops(crops_no, farm_no) VALUES(13,13);
INSERT INTO available_crops(crops_no, farm_no) VALUES(14,14);
INSERT INTO available_crops(crops_no, farm_no) VALUES(15,15);
INSERT INTO available_crops(crops_no, farm_no) VALUES(16,16);
INSERT INTO available_crops(crops_no, farm_no) VALUES(17,17);
INSERT INTO available_crops(crops_no, farm_no) VALUES(18,18);
INSERT INTO available_crops(crops_no, farm_no) VALUES(19,19);
INSERT INTO available_crops(crops_no, farm_no) VALUES(20,20);

INSERT INTO available_crops(crops_no, farm_no) VALUES(21,1);
INSERT INTO available_crops(crops_no, farm_no) VALUES(22,2);
INSERT INTO available_crops(crops_no, farm_no) VALUES(23,3);
INSERT INTO available_crops(crops_no, farm_no) VALUES(24,4);
INSERT INTO available_crops(crops_no, farm_no) VALUES(25,5);
INSERT INTO available_crops(crops_no, farm_no) VALUES(26,6);
INSERT INTO available_crops(crops_no, farm_no) VALUES(27,7);
INSERT INTO available_crops(crops_no, farm_no) VALUES(28,8);
INSERT INTO available_crops(crops_no, farm_no) VALUES(29,9);
INSERT INTO available_crops(crops_no, farm_no) VALUES(1,10);
INSERT INTO available_crops(crops_no, farm_no) VALUES(2,11);
INSERT INTO available_crops(crops_no, farm_no) VALUES(3,12);
INSERT INTO available_crops(crops_no, farm_no) VALUES(4,13);
INSERT INTO available_crops(crops_no, farm_no) VALUES(5,14);
INSERT INTO available_crops(crops_no, farm_no) VALUES(6,15);
INSERT INTO available_crops(crops_no, farm_no) VALUES(7,16);
INSERT INTO available_crops(crops_no, farm_no) VALUES(8,17);
INSERT INTO available_crops(crops_no, farm_no) VALUES(9,18);
INSERT INTO available_crops(crops_no, farm_no) VALUES(10,19);
INSERT INTO available_crops(crops_no, farm_no) VALUES(11,20);

INSERT INTO available_crops(crops_no, farm_no) VALUES(10,1);
INSERT INTO available_crops(crops_no, farm_no) VALUES(11,2);
INSERT INTO available_crops(crops_no, farm_no) VALUES(12,3);
INSERT INTO available_crops(crops_no, farm_no) VALUES(13,4);
INSERT INTO available_crops(crops_no, farm_no) VALUES(14,5);
INSERT INTO available_crops(crops_no, farm_no) VALUES(15,6);
INSERT INTO available_crops(crops_no, farm_no) VALUES(16,7);
INSERT INTO available_crops(crops_no, farm_no) VALUES(17,8);
INSERT INTO available_crops(crops_no, farm_no) VALUES(18,9);
INSERT INTO available_crops(crops_no, farm_no) VALUES(19,10);
INSERT INTO available_crops(crops_no, farm_no) VALUES(20,11);
INSERT INTO available_crops(crops_no, farm_no) VALUES(21,12);
INSERT INTO available_crops(crops_no, farm_no) VALUES(22,13);
INSERT INTO available_crops(crops_no, farm_no) VALUES(23,14);
INSERT INTO available_crops(crops_no, farm_no) VALUES(24,15);
INSERT INTO available_crops(crops_no, farm_no) VALUES(25,16);
INSERT INTO available_crops(crops_no, farm_no) VALUES(26,17);
INSERT INTO available_crops(crops_no, farm_no) VALUES(27,18);
INSERT INTO available_crops(crops_no, farm_no) VALUES(28,19);
INSERT INTO available_crops(crops_no, farm_no) VALUES(29,20);
SELECT * FROM available_crops;





