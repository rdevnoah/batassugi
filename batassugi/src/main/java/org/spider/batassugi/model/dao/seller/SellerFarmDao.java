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
 * 2018. 5. 16.   "GL_SangKyoung"   밭등록 및 작물등록작업(작물작업때 parameterMap대신해서 Map이용하여 작업 진행하였습니다. 
 *                                  추후 parameterMap공부후 변경하도록 하겠습니다.)
 *      </pre>
 */
@Repository
public class SellerFarmDao implements SellerFarmDaoIf {

  @Resource
  private SqlSessionTemplate template;

  @Override
  public void farmInsert(FarmVo vo) {
    template.insert("farm.FarmInsert", vo); // 밭등록
  }

  @Override
  public void avaliableCrops(Map<String, Integer> testmap) {
    template.insert("farm.avaliableCrops", testmap);// avaliable crop테이블 저장
  }

  @Override
  public List<FarmVo> findSellerFarmList(String id) {
    return template.selectList("sellerFarm.findSellerFarmList", id);
  }

  @Override
  public List<CropsVo> findAvailableCropsList(int farmNo) {
    return template.selectList("sellerFarm.findAvailableCropsList", farmNo);
  }

  @Override
  public FarmVo findFarmDetail(String farmNo) {
    return template.selectOne("sellerFarm.findFarmDetail", farmNo);
  }

  @Override
  public List<RentVo> findRentByFarmNo(String farmNo) {
    return template.selectList("sellerFarm.findRentByFarmNo", farmNo);
  }

  @Override
  public List<CropsVo> getCropsData() {
    List<CropsVo> list = template.selectList("crops.getCropsData");
    return list;
  }

  @Override
  public String getNow_Date() {
    return template.selectOne("farm.getNow_Date");
  }


}
