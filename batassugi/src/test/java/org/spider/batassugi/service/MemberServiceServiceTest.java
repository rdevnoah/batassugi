package org.spider.batassugi.service;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.multipart.MultipartFile;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class MemberServiceServiceTest {

  @Resource
  MemberDaoIf memberDao;
  @Resource
  MemberServiceIf memberService;

  @Test
  public void memberServiceTest() {
    // 멤버 로그인 테스트

    MemberVo vo = new MemberVo();
    vo.setId("admin2");
    vo.setPassword("1234");
    MemberVo mvo = memberService.login(vo);
    System.out.println(mvo);


    // 멤버 기본 등록 테스트
    MemberVo avo = new MemberVo("javaking", "1234", "서정우", "스승님", null, null, null);
    MemberInfoVo amvo = new MemberInfoVo(vo, "teacher@kosta.com", "01012345678", "경기도 판교",
        "2018.05.15", "남성", null, "default.png", null, null);
    memberService.register(amvo);
  }
}
