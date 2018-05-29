package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.buyer.BuyerFarmDaoIf;
import org.spider.batassugi.model.service.buyer.BuyerFarmServiceIf;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
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
    // buyerFarmDao.deleteRentByRentNo(15);
    // System.out.println(buyerFarmService.findRentFarmInfoById("ukyi"));
    /*
     * buyerFarmDao.registerApplySeller(new ApplySellerVo(null, new MemberVo("ukyi", null, null,
     * null, null, null, null), "사진이다 ", null, null, null, "판매자신청함!", null));
     */
    // System.out.println(buyerFarmDao.findApplySellerById("test1"));
    /*
     * RentVo vo = new RentVo(); RecruitVo vo2 = new RecruitVo(); vo2.setRecruitNo(58);
     * vo.setRentNo(35); vo.setRecruitVo(vo2); vo.setRentSize(1234);
     * buyerFarmDao.updateRecruitSizeResetByRecruitNo(vo);
     */
    // buyerFarmDao.findRentFarmInfoById("test12");
    MemberInfoVo mvo = new MemberInfoVo();
    MemberVo vo = new MemberVo();
    vo.setId("test12");
    vo.setmemberLevel("초급");
    mvo.setMemberVo(vo);
    buyerFarmService.findRentFarmInfoById(mvo);
    /*Map<String, String> map = new HashMap<>();
    map.put("id", "test12");
    map.put("level", "중급");
    buyerFarmDao.updateMemberLevel(map);*/
  }

}
