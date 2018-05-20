package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring-model.xml" })
public class MemberServiceServiceTest {

  @Resource
  MemberDaoIf memberDao;
  @Resource
  MemberServiceIf memberService;

  @Test
  public void memberServiceTest() {
    // 멤버 로그인 테스트

    /*MemberVo vo = new MemberVo();
    vo.setId("admin");
    vo.setPassword("1234");
    MemberInfoVo mvo;
    try {
      mvo = memberService.login(vo);
      System.out.println(mvo);
    } catch (LoginException e) {
      e.printStackTrace();
    }*/
    
    }

    // 멤버 로그인 테스튼
    //System.out.println(memberDao.login(vo));

    /*
     * // 멤버 기본 등록 테스트 /*MemberVo avo = new MemberVo("javaking", "1234", "서정우", "스승님", null, null,
     * null); MemberInfoVo amvo = new MemberInfoVo(vo, "teacher@kosta.com", "01012345678", "경기도 판교",
     * "2018.05.15", "남성", null, "default.png", null, null); memberService.register(amvo);
     * 
     * // 멤버 아이디 중복 확인 System.out.println(memberService.checkId("cssKing"));
     * 
     * // 멤버 닉네임 중복확인 System.out.println(memberService.checkNickname("스승님"));
     */

    // 멤버 상태 등록
   /* MemberStateVo mstVo=new MemberStateVo(null,"활동",null);
=======
    MemberStateVo mstVo = new MemberStateVo(null, "활동", null);
>>>>>>> refs/heads/develop_to_buyer
    memberService.registerMemberState(mstVo);
<<<<<<< HEAD
    System.out.println(mstVo.getStateNumber()); */
    /*MemberVo avo = new MemberVo("admin", "1234", "서정우", "스승님", null, null, null);
    MemberInfoVo amvo = new MemberInfoVo(avo, "teacher@kosta.com", "01012345678", "경기도 판교",
        "2018.05.15", "남성", null, "default.png", null, null);
    int num=memberDao.findCropsCountById(amvo);
    System.out.println(num);
    List<String> crops=memberDao.findLikeCropsById(amvo);
    for(String crop :crops)
      System.out.println(crop);*/
    
    // 멤버 전체 정보 가져오기
   /* MemberInfoVo orgMvo = memberDao.findMemberInfoById("admin");
    System.out.println(orgMvo)*/;
    
    // 멤버 업데이트 확인
    /*MemberVo memberVo=new MemberVo("admin","1234","관리자","관리자a", null, null, null);
    memberDao.updateMember(memberVo);
    MemberInfoVo memberInfoVo=new MemberInfoVo(memberVo, "admin@kosta.com", "01012345679", "경기도 판교", null, null, null, "default.png", null, null);
    memberDao.updateMemberInfo(memberInfoVo);
    System.out.println(memberInfoVo);
    System.out.println(memberDao.findMemberInfoById("admin"));
    System.out.println(mstVo.getStateNumber());

  }*/
}
