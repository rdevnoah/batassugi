package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.exception.LoginException;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberStateVo;
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

    MemberVo vo = new MemberVo();
    vo.setId("admin");
    vo.setPassword("1234");
    MemberInfoVo mvo;
    try {
      mvo = memberService.login(vo);
      System.out.println(mvo);
    } catch (LoginException e) {
      e.printStackTrace();
    }

    // 멤버 로그인 테스튼
    System.out.println(memberDao.login(vo));

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
    MemberStateVo mstVo = new MemberStateVo(null, "활동", null);
    memberService.registerMemberState(mstVo);
    System.out.println(mstVo.getStateNumber());

  }
}
