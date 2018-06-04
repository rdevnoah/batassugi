package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.buyer.TradePostDao;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class TradeServiceTest {
  
  @Resource
  private TradePostDao tradePostDao;
  
  /**
   * 거래게시판 테스트.
   * @author "SL SangUk Lee"
   */
  @Test
  public void tradeServiceTest() {
    int totalCount = tradePostDao.getTotalTradePostCount();
    System.out.println("거래게시판 총 개수 : " + totalCount);
    System.out
        .println("페이징테스트 : " + tradePostDao.findTradePostList(new BuyerPagingBean(totalCount, 2)));
  }
}
