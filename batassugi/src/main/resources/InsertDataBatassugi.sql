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
INSERT INTO crops VALUES(crops_SEQ.nextval, '대파', '중'); 
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
'칼로 아랫잎을 4~5장 붙여서 높이 15cm 정도로 맞추어 수확한다. 적기가 지나면 꽃이 피어 버리므로 특히 수확기의 기온이 높은 봄 파종재배에서는 주의하여야 한다.',
'iconbroccoli.jpg','브로콜리볶음,브로콜리무침');
INSERT INTO crops_info VALUES(2, 'peanut1.jpg','peanut2.jpg','peanut3.jpg','peanut4.jpg','4월~5월','9월~10월',
'꼬투리에 60~80%의 그물무늬가 뚜렷해졌을 때가 수확 적기이며
수확 후 줄기에 꼬투리가 달린 채로 7일 정도 말린 후 꼬투리를
털어서 다시 말려 수분 10%이하가 되게 하여 수확한다. 
씨앗용은 피콩으로 저장하여 가급적 파종기에 임박하여 탈각을 
하는 게 발아율 향상에 좋다.',
'iconpeanut.jpg','땅콩조림');
INSERT INTO crops_info VALUES(3, 'corn1.jpg','corn2.jpg','corn3.jpg','corn4.jpg','4월','7월~8월',
'옥수수는 주로 풋옥수수를 수확하여 쪄먹기 위해 텃밭이나 주말농장에서 재배를 한다. 요새 식구도 얼마 안 되는 가정에서 한꺼번에 많은 옥수수를 수확하면 한 번에 다 먹지 못한다.
 수확시기를 조금 조절하려면 10일 간격으로 파종시기를 달리한다.', 'iconcorn.jpg','옥수수전,콘샐러드');
 INSERT INTO crops_info VALUES(4, 'chives1.jpg','chives2.jpg','chives3.jpg','chives4.jpg','4월~5월','9월~11월',
'부추는 자라는 대로 수확이 가능하다. 키가 20㎝ 이상이 되면 
필요한 만큼 베어 이용한다. 수확이 늦어지면 부추가 억세지는 수가 있다. 
이때는 다시 베어주면 보드라운 부추가 자라게 된다. 
부추를 수확하는 방법에 따라 다음 번의 수확량이 달라진다는 자료가 있다.
부추 줄기를 바짝 잘라낼수록 다음 번의 수확량이 줄어들기
때문에 1㎝ 정도 줄기를 남겨 두고 그 위를 잘라내는 것이 좋다고 한다.',
'iconchives.jpg','부추전 , 부추무침 ,부추겉절이');
 INSERT INTO crops_info VALUES(5, 'perilla1.jpg','perilla2.jpg','perilla3.jpg','perilla4.jpg','2월~4월','8월~9월',
'칼로 아랫잎을 4~5장 붙여서 높이 15cm 정도로 맞추어 수확한다. 적기가 지나면 꽃이 피어 버리므로 특히 수확기의 기온이 높은 봄 파종재배에서는 주의하여야 한다.',
'iconperilla.jpg','깻잎짱아치,깻잎무침');
 INSERT INTO crops_info VALUES(6, '케일1.jpg','케일2.jpg','케일3.jpg','케일4.jpg','3월중 ~ 4월초, 6월중 ~ 7월중','6월중 ~ 7월중, 9월초 ~ 11월중',
'잎이 손바닥 크지 정도 일 때 수시로 잎을 때어내 수확한다. 수개월동안 수확하게 되므로 밑거름은 충분히 넣는다. 수확 후에는 수시로 웃거름을 주는 것이 수확량을 많게 한다.',
'icon케일.jpg','샐러드, 무침, 된장국');
 INSERT INTO crops_info VALUES(7, '호박1.jpg','호박2.jpg','호박3.jpg','호박4.jpg','4월말','7월중 ~ 10월중',
'쥬키니, 애호박, 풋호박 등 청과용은 꽃이 핀 후 7~10일이면 수확할 수 있다.',
'icon호박.jpg','전, 볶음, 샐러드, 무침, 된장국');
 INSERT INTO crops_info VALUES(8, '대파1.jpg','대파2.jpg','대파3.jpg','대파4.jpg','3월말, 8월중~9월초','4월중~6월말, 8월중~11월말',
'중간 중간 대파가 자라면 수확한다. 11월경 서리 내리고 춥기 전에 모두 뽑아 갈무리 한다.',
'icon대파.jpg','장아찌, 김치, 무침');
 INSERT INTO crops_info VALUES(9, '쪽파1.jpg','쪽파2.jpg','쪽파3.jpg','쪽파4.jpg','8월중~9월초','3월말~4월말, 9월중~10월중',
'쪽파는 종구를 심고 45 ~ 50일 정도 키우는게 가장 맛이 좋은 쪽파가 된다. 쪽파는 심어 놓고 보름정도만 키워도 파전을 만들어 먹기에 알맞은 크기로 자란다. 김장배추를 심은지 10 ~ 15일후에 쪽파를 심으면 김장배추와 수확시기를 맞추게 된다.',
'icon쪽파.jpg','쪽파강회, 쪽파숙회, 파전, 김치');
 INSERT INTO crops_info VALUES(10, '마늘1.jpg','마늘2.jpg','마늘3.jpg','마늘4.jpg','9월중 ~ 10월중','3월중 ~ 4월말, 6월중 ~ 6월말',
'난지형 마늘은 5월 중, 하순경, 한지형 마늘은 6월 중순경, 마늘잎이 3분의 2이상, 또는 50 ~ 75% 정도 누렇게 변하면 수확합니다. 마늘수확시기가 빠르면 구의 비대가 불충실해지고 수분함량이 많아져 저장중에 부패가 많아집니다.',
'icon마늘.jpg','구이, 볶음, 조림');

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





