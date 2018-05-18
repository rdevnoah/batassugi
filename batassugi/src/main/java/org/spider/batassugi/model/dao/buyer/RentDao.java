package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Repository;

/**
 * 구매자가 판매자가 올린 농지(대여) 데이터에 접근하는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.dao.buyer
 * @filename : RentDao.java
 * @author : "Team Spider"
 * @since : 2018. 5. 12.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 12.  "SL SangUk Lee"  최초작성
 * 2018. 5. 12.  "SL SangUk Lee"  registerRentByRentVo 메서드추가
 * 2018. 5. 17.  "SL SangUk Lee"  findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"  findFarmAvailableCropsListByFarmNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"  getRentList 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"  totalRentListCount 메서드 추가
 *      </pre>
 */
@Repository
public class RentDao implements RentDaoIf {
  
  @Resource
  private SqlSessionTemplate template;

  @Override
  public int registerRentByRentVo(RentVo rentVo) {
    return template.insert("rent.registerRentByRentVo", rentVo);
  }
  
  @Override
  public RecruitVo findRentDetailByRecruitNo(int recruitNo) {
    return template.selectOne("recruit.findRentDetailByRecruitNo", recruitNo);
  }

  @Override
  public List<CropsVo> findFarmAvailableCropsListByFarmNo(int farmNo) {
    return template.selectList("recruit.findFarmAvailableCropsListByFarmNo", farmNo);
  }

  @Override
  public List<RecruitVo> getRentList(PagingBean pb) {
    return template.selectList("recruit.getRentList",pb);
  }

  @Override
  public int totalRentListCount() {
    return template.selectOne("recruit.totalRentListCount");
  }
  
}
