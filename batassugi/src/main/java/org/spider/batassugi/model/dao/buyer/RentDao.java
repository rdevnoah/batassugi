package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.buyer.SearchRentListVo;
import org.spider.batassugi.model.vo.common.CropsVo;
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
 * 2018. 5. 17.  "SL SangUk Lee"    최초작성
 * 2018. 5. 17.  "SL SangUk Lee"    registerRentByRentVo메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    findFarmAvailableCropsListByFarmNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    getRentList 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    totalRentListCount 메서드 추가
 * 2018. 5. 27.  "SL SangUk Lee"    findRentListByKeyword 메서드 추가
 * 2018. 5. 28.  "SL SangUk Lee"    getCropsList 메서드 추가
 * 2018. 5. 28.  "SL SangUk Lee"    getFarmAddressList 메서드 추가
 * 2018. 5. 28.  "SL SangUk Lee"    findTotalRentListCountByKeyword 메서드 추가
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
  public int updateRecruitSizeByRecruitNo(RentVo rentVo) {
    return template.update("rent.updateRecruitSizeByRecruitNo", rentVo);
  }

  @Override
  public RecruitVo findRentDetailByRecruitNo(int recruitNo) {
    return template.selectOne("rent.findRentDetailByRecruitNo", recruitNo);
  }

  @Override
  public List<CropsVo> findFarmAvailableCropsListByFarmNo(int farmNo) {
    return template.selectList("rent.findFarmAvailableCropsListByFarmNo", farmNo);
  }

  @Override
  public List<RecruitVo> getRentList(BuyerPagingBean pb) {
    return template.selectList("rent.getRentList", pb);
  }

  @Override
  public int totalRentListCount() {
    return template.selectOne("rent.getTotalRentListCount");
  }

  @Override
  public List<String> getCropsList() {
    return template.selectList("rent.getCropsList");
  }

  @Override
  public List<String> getFarmAddressList() {
    return template.selectList("rent.getFarmAddressList");
  }

  @Override
  public List<RecruitVo> findRentListByKeyword(SearchRentListVo searchVo) {
    return template.selectList("rent.findRentListByKeyword", searchVo);
  }

  @Override
  public int findTotalRentListCountByKeyword(SearchRentListVo searchVo) {
    return template.selectOne("rent.findTotalRentListCountByKeyword", searchVo);
  }

}
