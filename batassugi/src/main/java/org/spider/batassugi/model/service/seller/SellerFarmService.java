package org.spider.batassugi.model.service.seller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.seller.SellerFarmDaoIf;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.springframework.stereotype.Service;

/**
 * 판매자의 농지를 등록 및 수정하는 서비스와 농지를 대여중인 구매자들을 관리하는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : SellerFarmService.java
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
 * 2018. 5. 17.  "GL SangKyoung"    밭등록 farmInsert 메소드 생성.
 *      </pre>
 */
@Service
public class SellerFarmService implements SellerFarmServiceIf {
  @Resource
  private SellerFarmDaoIf sellerFarmDao;

  @Override
  public void farmInsert(FarmVo fvo) {
    sellerFarmDao.farmInsert(fvo);
    Map<String, Integer> testmap = new HashMap<String, Integer>();
    testmap.put("farm_no", fvo.getFarmNo());

    for (int i = 0; i <= fvo.getCropsNo().size() - 1; i++) {
      testmap.put("crops_no", Integer.parseInt(fvo.getCropsNo().get(i)));
      sellerFarmDao.avaliableCrops(testmap);// 밭등록시 선택한 작물에 번호를 가지고 작물등록dao
    }
  }

  /**
   * 판매자가 등록한 현재 농지의 리스트를 반환받는 비즈니스 로직입니다.
   * @author "PM KimYoungHo"
   * @param id 로그인한 사용자의 id.
   * @return
   */
  @Override
  public List<FarmVo> findSellerFarmList(String id) {
    List<FarmVo> farmList = sellerFarmDao.findSellerFarmList(id);
    for (int i = 0; i < farmList.size(); i++) {
      List<CropsVo> cropsList = sellerFarmDao.findAvailableCropsList(farmList.get(i).getFarmNo()); 
      farmList.get(i).setCropsVo(cropsList);
      List<String> labels = sellerFarmDao.findLabels(farmList.get(i).getFarmNo());
      farmList.get(i).setLabels(labels);
    }
    return farmList;
  }

  /**
   * 사용자가 등록한 농지의 상세정보를 반환받는 비즈니스 로직입니다.
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  @Override
  public Map<String,Object> findFarmDetail(String farmNo) {
    Map<String,Object> map = new HashMap<String, Object>();
    FarmVo vo = sellerFarmDao.findFarmDetail(farmNo);
    vo.setLabels(sellerFarmDao.findLabels(Integer.parseInt(farmNo)));
    vo.setCropsVo(sellerFarmDao.findAvailableCropsList(Integer.parseInt(farmNo)));
    map.put("farmVo", vo);
    map.put("rentList", sellerFarmDao.findRentByFarmNo(farmNo));
    return map;
    
  }

  @Override
  public List<CropsVo> getCropsData() {
    List <CropsVo> list = sellerFarmDao.getCropsData();
    return list;
  }

  @Override
  public String getNow_Date() {
    return sellerFarmDao.getNow_Date();
    
  }

  
}
