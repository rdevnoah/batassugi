package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.buyer.BuyerFarmDaoIf;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class BuyerFarmServiceTest {

  @Resource
  private BuyerFarmDaoIf buyFarmDao;
  
  @Test
  public void BuyerFarmServiceTest() {
    System.out.println(buyFarmDao.findRentFarmInfoById("test1"));
  }
}
