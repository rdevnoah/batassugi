package org.spider.batassugi.service;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.common.CropsDaoIf;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.service.common.CommonServiceIf;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class CommonServiceTest {
  @Resource
  private CropsDaoIf cropsDao;
  @Resource
  private CommonServiceIf commonService;
  @Resource
  private MemberDaoIf memberDao;
  @Resource
  private MemberServiceIf memberService;
  
  @Test
  public void commonServiceTest() {
    //System.out.println(cropsDao.getCropsIconList());
    //System.out.println(commonService.getCropsIconList());
    //System.out.println(cropsDao.getCropsDetail("3"));
    //System.out.println(commonService.getCropsDetail("3"));
    //작물리스트 출력
    System.out.println(memberDao.getAllCropsList());
    System.out.println(memberService.getAllCropsList());
  }
}
