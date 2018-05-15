package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class MemberServiceServiceTest {

  @Resource
  MemberServiceIf memberService;

  @Test
  public void MemberServiceTest() {
    MemberVo vo = new MemberVo();
    vo.setId("admin");
    vo.setPassword("1234");
   /* MemberVo mvo = memberService.login(vo);
    System.out.println(mvo);*/
  }
}
