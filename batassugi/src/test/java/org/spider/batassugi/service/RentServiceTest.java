package org.spider.batassugi.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.buyer.RentDaoIf;
import org.spider.batassugi.model.service.buyer.RentServiceIf;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.spider.batassugi.model.vo.buyer.SearchRentListVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring-model.xml" })
public class RentServiceTest {

  @Resource
  private RentDaoIf rentDao;

  @Resource
  private RentServiceIf rentservice;

  @Test
  public void rentServiceTest() {
    /*
     * System.out.println("**rentServiceTest**"); RecruitVo recruitVo = new RecruitVo();
     * recruitVo.setRecruitNo(11); // 대여신청 테스트 System.out .println(rentDao.registerRentByRentVo(new
     * RentVo(99999, 1, recruitVo, "abc1", 10000, 5)));
     */
    /* System.out.println("**recruitServiceTest**"); */

    // 대여신청 게시판목록 리스트Dao 테스트
    /*
     * System.out.println("대여신청 게시판목록 리스트Dao\n" + rentDao.getRentList(new BuyerPagingBean(1,
     * 4)).get(1).getFarmVo().getCropsVo());
     */
    // 대여신청 게시판목록 리스트Service 테스트
    /*
     * System.out .println("대여신청 게시판목록 리스트Service\n" +
     * rentservice.getRentList("1").getRecruitList());
     */
    // 모집정보 (작물정보X) 테스트.
    /*
     * RecruitVo recruitVo = recruitDao.findRecruitDetailByRecruitNo(11);
     * System.out.println("모집정보 (작물정보X)\n" + recruitVo);
     */

    // recruitVo에 작물정보를 넣어줌. 최종 모집정보 테스트.
    /*
     * recruitVo.getFarmVo().setCropsVo(
     * recruitDao.findFarmAvailableCropsListByFarmNo(recruitVo.getFarmVo().getFarmNo()));
     * System.out.println("최종 모집정보 Dao\n" + recruitVo.getFarmVo().getCropsVo());
     */
    // 최종 모집정보 Service 테스트.
    /* System.out.println("최종 모집정보 Service\n" + recruitService.findRecruitDetailByRecruitNo(11)); */
    List<RecruitVo> list = rentservice
        .findRentListByKeyword("1", new SearchRentListVo("여기는", "address")).getRecruitList();
    if (list.isEmpty()) {
      System.out.println("검색결과 없음");
    }
    for (RecruitVo recruitVo : list) {
      System.out.println(recruitVo.getRecruitNo() + ":" + recruitVo.getFarmVo().getFarmAddress());
    }
  }

}
