package org.spider.batassugi.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.seller.SellerFarmDaoIf;
import org.spider.batassugi.model.service.seller.SellerFarmServiceIf;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.PagingBean;
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
//    List<FarmVo> list = sellerFarmDao.findSellerFarmList("aaaa");
//    List<CropsVo> listCrops = null;
//    for (int i=0 ; i<list.size() ; i++) {
//      System.out.println(list.get(i));
//    }
//    System.out.println(sellerFarmDao.findAvailableCropsList(1));
//    for (int i=0 ; i<list.size() ; i++) {
//      listCrops = sellerFarmDao.findAvailableCropsList(list.get(i).getFarmNo());
//      //list.get(i).setCropsVo(listCrops);
//    }
//    for (int i=0 ; i<list.size() ; i++) {
//      System.out.println(list.get(i).getCropsVo());
//      System.out.println("----");
//    }
//    List<FarmVo> list = sellerFarmService.findSellerFarmList("aaaa");
//    System.out.println(list);

//    FarmVo vo = sellerFarmDao.findFarmDetail("1");
//    vo.setCropsVo(sellerFarmDao.findAvailableCropsList(1));
//    Map<String, Object> map = sellerFarmService.findFarmDetail("1");
//    System.out.println(map.get("farmVo"));
//    System.out.println(map.get("rentList"));
//    //System.out.println(sellerFarmDao.findRentByFarmNo("1"));
//    Map<String, Object> map = new HashMap<String,Object>();
//    map.put("farmNo", "1");
//    map.put("pagingBean", new PagingBean(sellerFarmDao.getTotalRentListByFarmNo("1")));
//    List<RentVo> list = sellerFarmDao.findRentPagingList(map);
//    System.out.println(list);
    
    Map<String, String> map = sellerFarmDao.findBuyerDetailByRentNo("4");
    int harvest = Integer.parseInt(String.valueOf(map.get("HARVESTSTATUS")));
    map.remove("HARVESTSTATUS");

    if (harvest <25) {
      harvest=1;
    }else if (harvest < 50) {
      harvest=2;
    }else if (harvest < 75) {
      harvest=3;
    }else
      harvest=4;
    
    String harv = String.valueOf(harvest);
    map.put("HARVESTSTATUS", harv);
    
    System.out.println(harvest);
    
  }
}
