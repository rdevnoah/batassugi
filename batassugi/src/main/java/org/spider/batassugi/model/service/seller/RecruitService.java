package org.spider.batassugi.model.service.seller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.seller.RecruitDaoIf;
import org.spider.batassugi.model.dao.seller.SellerFarmDaoIf;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Service;

/**
 * 판매자가 등록한 농지의 구매자를 모집하는 일련의 서비스를 정의합니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : RecruitService.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "PM KimYoungHo"    최초작성
 *      </pre>
 */
@Service
public class RecruitService implements RecruitServiceIf {
  @Resource
  private RecruitDaoIf recruitDao;

  @Resource
  private SellerFarmDaoIf sellerFarmDao;

  @Override
  public void registerRecruit(RecruitVo vo) {
    recruitDao.registerRecruit(vo);
  }

  @Override
  public String findRestFarmSizeByFarmNo(String farmNo) {
    return recruitDao.findRestFarmSizeByFarmNo(farmNo);
  }

  @Override
  public Map<String, Object> findRentSizeAndFarmNoAndCropsAndMaxMonth(String farmNo) {
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("farmNo", farmNo);
    map.put("rentSize", recruitDao.findRestFarmSizeByFarmNo(farmNo));

    Map<String, Object> map2 = new HashMap<String, Object>();
    FarmVo vo = sellerFarmDao.findFarmDetail(farmNo);
    vo.setCropsVo(sellerFarmDao.findAvailableCropsList(Integer.parseInt(farmNo)));
    map2.put("farmVo", vo);
    map2.put("rentList", sellerFarmDao.findRentByFarmNo(farmNo));

    map.put("farmVo", map2);

    map.put("maxMonth", recruitDao.findMaxMonth(farmNo));
    return map;
  }

  @Override
  public void updateRentStatusConfirm(String[] rentNo) {
    for (int i = 0; i < rentNo.length; i++) {
      recruitDao.updateRentStatusConfirm(rentNo[i]);
    }
  }

  @Override
  public void updateRentStatusReject(String[] rentNo) {
    for (int i = 0; i < rentNo.length; i++) {
      recruitDao.updateRentStatusReject(rentNo[i]);
    }
  }

}
