package org.spider.batassugi.model.dao.seller;

import java.util.List;
import java.util.Map;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.spider.batassugi.model.vo.seller.FarmVo;


/**
 * 판매자의 페이지에서 판매자가 등록한 밭을 관리하는 Dao의 interface입니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.seller
 * @filename : SellerFarmDaoIf.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 16.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "PM KimYoungHo"    최초작성
 * </pre>
 */
public interface SellerFarmDaoIf {
  /**
   * 메소드 설명 : 밭등록시 사용되는 farmInsert.
   * @author "GL_SangKyoung"
   * @param vo 농지정보.
   */
  public void farmInsert(FarmVo vo);
  
  /**
   * 메소드 설명 : 해당밭에 재배가능작물 데이터추가하기위하여 사용.
   * @author "GL_SangKyoung"
   * @param testmap parameterMap비사용으로 인하여 crops_no 와 farm_no를 키값으로해서 available_crops 테이블에 전송.
   */
  public void avaliableCrops(Map<String, Integer> testmap);
  
  /**
   * DB에서 판매자가 등록한 자신의 농지 리스트를 불러오는 메소드입니다.
   * @author "PM KimYoungHo"
   * @param id 현재 세션에 로그인되어있는 사용자의 아이디가 입력됩니다.
   * @return
   */
  public List<FarmVo> findSellerFarmList(String id);

  /**
   * 등록한 농지의 재배가능작물 값을 세팅해주기 위해 available_crops 테이블에서 정보를 가져오는 메소드입니다.
   * @author "PM KimYoungHo"
   * @param farmNo 현재 선택한 농지에서 재배 가능한 작물을 가져와야 하기 때문에 그 농지의 번호를 매개변수로 받습니다. 
   * @return
   */
  public List<CropsVo> findAvailableCropsList(int farmNo);

  /**
   * farmNo에 따른 농지의 상세정보를 불러오는 메소드입니다.
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public FarmVo findFarmDetail(String farmNo);
  
  /**
   * farmNo의 농지를 대여중인 구매자들의 List를 반환하는 메소드입니다.
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public List<RentVo> findRentByFarmNo(String farmNo);

  public List<CropsVo> getCropsData();

  public String getNow_Date();

  public List<String> findLabels(int farmNo);

  public int getTotalRentListByFarmNo(String farmNo);

  public List<RentVo> findRentPagingList(Map<String, Object> map);

  public Map<String, String> findBuyerDetailByRentNo(String rentNo);

 

}
