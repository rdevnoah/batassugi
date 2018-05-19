package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.springframework.stereotype.Repository;

/**
 * 구매자가 자신이 대여한 농지 데이터를 접근하는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : BuyerFarmDao.java
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
 * 2018. 5. 14.  "SM HyeonGil Kim"    최초작성
 *      </pre>
 */
@Repository
public class BuyerFarmDao implements BuyerFarmDaoIf {
  
  @Resource
  private SqlSessionTemplate template;
  
  @Override
  public List<RentVo> findRentFarmInfoById(String id) {
    return template.selectList("buyerFarm.findRentFarmInfoById",id);
  }
}
