package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.seller.RecruitDaoIf;
import org.spider.batassugi.model.service.seller.RecruitServiceIf;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class RecruitServiceTest {

  @Resource
  private RecruitDaoIf recruitDao;
  
  @Resource
  private RecruitServiceIf recruitService;
  
  @Test
  public void recruitServiceTest() {
    
  }
  
}
