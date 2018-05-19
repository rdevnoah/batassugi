package org.spider.batassugi.model.service.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.BuyerFarmDaoIf;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.springframework.stereotype.Service;

/**
 * 구매자가 자신이 대여한 농지를 관리(수확상태 확인, 신청중인 농지 취소, 대여한 농지 상세정보)를 할 수 있는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : BuyerFarmService.java 
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SM HyeonGil Kim"  최초작성
 * 2018. 5. 19.  "SL SangUk Lee"    findRentFarmInfoById 메서드추가
 *      </pre>
 */
@Service
public class BuyerFarmService implements BuyerFarmServiceIf {
  
  @Resource
  private BuyerFarmDaoIf buyerFarmDao;
  
  @Override
  public List<RentVo> findRentFarmInfoById(String id) {
    return buyerFarmDao.findRentFarmInfoById(id);
  }

  @Override
  public void deleteRentByRentNo(int rentNo) {
    buyerFarmDao.deleteRentByRentNo(rentNo);
  }

}
