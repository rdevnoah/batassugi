package org.spider.batassugi.model.dao.seller;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.springframework.stereotype.Repository;

/**
 * 판매자가 자신이 등록한 농지에 관련된 데이터에 접근하는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.seller
 * @filename : SellerFarmDao.java
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
@Repository
public class SellerFarmDao implements SellerFarmDaoIf {
  @Resource
  private SqlSessionTemplate template;
  
  @Override
  public List<FarmVo> getSellerFarmList(String id) {
    return template.selectList("getSellerFarmList", id);
  }

  @Override
  public List<CropsVo> getAvailableCropsList(int farmNo) {
    return template.selectList("getAvailableCropsList",farmNo);
  }

  @Override
  public FarmVo findFarmDetail(String farmNo) {
    return template.selectOne("readFarmDetail", farmNo);
  }

  @Override
  public List<RentVo> findRentByFarmNo(String farmNo) {
    return template.selectList("readRentByFarmNo", farmNo);
  }
  
}
