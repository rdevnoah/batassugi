package org.spider.batassugi.service;

import java.util.Map;
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
    
//    RecruitVo recruitVo = new RecruitVo(0,new FarmVo(1, null, 0, null, null, null, null), "대여", null, "2018-06-22", 1000,
//        "대여모집합니다. 잘 관리해드려요 많이 참여하세요", "모집중", 10, null);
//    recruitDao.registerRecruit(recruitVo);
    //System.out.println(recruitDao.findRestFarmSizeByFarmNo("1"));
    Map<String, Object> map = recruitService.findRentSizeAndFarmNoAndCropsAndMaxMonth("1");
    System.out.println(map.get("farmNo"));
    System.out.println(map.get("farmVo"));
    System.out.println(map.get("maxMonth"));
    
    
  }
  
}
