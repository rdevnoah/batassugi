package org.spider.batassugi.service;

import java.util.Map;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.seller.SellerFarmDaoIf;
import org.spider.batassugi.model.service.seller.SellerFarmServiceIf;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class SellerFarmServiceTest {

  @Resource
  private SellerFarmDaoIf sellerFarmDao;
  
  @Resource
  private SellerFarmServiceIf sellerFarmService;
  @Test
  public void SellerFarmServiceTest() {
//    List<FarmVo> list = sellerFarmDao.getSellerFarmList("aaaa");
//    List<CropsVo> listCrops = null;
////    for (int i=0 ; i<list.size() ; i++) {
////      System.out.println(list.get(i));
////    }
//    for (int i=0 ; i<list.size() ; i++) {
//      listCrops = sellerFarmDao.getAvailableCropsList(list.get(i).getFarmNo());
//      list.get(i).setCropsVo(listCrops);
//    }
//    for (int i=0 ; i<list.size() ; i++) {
//      System.out.println(list.get(i).getCropsVo());
//      System.out.println("----");
//    }
//    List<FarmVo> list = sellerFarmService.getSellerFarmList("aaaa");
//    System.out.println(list);

    FarmVo vo = sellerFarmDao.findFarmDetail("1");
    vo.setCropsVo(sellerFarmDao.getAvailableCropsList(1));
    Map<String, Object> map = sellerFarmService.findFarmDetail("1");
    System.out.println(map.get("farmVo"));
    System.out.println(map.get("rentList"));
    //System.out.println(sellerFarmDao.findRentByFarmNo("1"));
    
  }
}
