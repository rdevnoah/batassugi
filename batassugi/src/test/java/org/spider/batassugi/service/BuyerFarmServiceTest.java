package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.buyer.BuyerFarmDaoIf;
import org.spider.batassugi.model.service.buyer.BuyerFarmServiceIf;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring-model.xml" })
public class BuyerFarmServiceTest {

  @Resource
  private BuyerFarmDaoIf buyerFarmDao;
  
  @Resource
  private BuyerFarmServiceIf buyerFarmService;

  @Test
  public void buyerFarmServiceTest() {
    // System.out.println(buyerFarmDao.findRentFarmInfoById("ukyi"));
    buyerFarmDao.deleteRentByRentNo(15);
    System.out.println(buyerFarmService.findRentFarmInfoById("ukyi"));
    
  }
  
}
