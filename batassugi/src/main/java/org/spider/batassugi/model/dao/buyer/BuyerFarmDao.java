package org.spider.batassugi.model.dao.buyer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
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
 * 2018. 5. 14.  "SM HyeonGil Kim"  최초작성
 * 2018. 5. 19.  "SL SangUk Lee"    findRentFarmInfoById 메서드 추가
 * 2018. 5. 19.  "SL SangUk Lee"    deleteRentByRentNo 메서드 추가
 * 2018. 5. 20.  "SL SangUk Lee"    registerApplySeller 메서드 추가
 * 2018. 5. 20.  "SL SangUk Lee"    findApplySellerById 메서드 추가
 *      </pre>
 */
@Repository
public class BuyerFarmDao implements BuyerFarmDaoIf {

  @Resource
  private SqlSessionTemplate template;

  @Override
  public List<RentVo> findRentFarmInfoById(String id) {
    return template.selectList("buyerFarm.findRentFarmInfoById", id);
  }

  @Override
  public void deleteRentByRentNo(RentVo rentVo) {
    template.delete("buyerFarm.deleteRentByRentNo", rentVo.getRentNo());
  }

  @Override
  public void registerApplySeller(ApplySellerVo applySellerVo) {
    template.insert("buyerFarm.registerApplySeller", applySellerVo);
  }

  @Override
  public ApplySellerVo findApplySellerById(String id) {
    return template.selectOne("buyerFarm.findApplySellerById", id);
  }

  @Override
  public void updateRecruitSizeResetByRecruitNo(RentVo rentVo) {
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("recruitNo", rentVo.getRecruitVo().getRecruitNo());
    map.put("rentSize", rentVo.getRentSize());
    template.update("rent.updateRecruitSizeResetByRecruitNo",map);
  }

  @Override
  public void updateApplySeller(ApplySellerVo applySellerVo) {
    template.update("buyerFarm.updateApplySeler", applySellerVo);
  }

}
