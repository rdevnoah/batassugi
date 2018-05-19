package org.spider.batassugi.model.service.seller;

import java.util.List;
import java.util.Map;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.spider.batassugi.model.vo.seller.ListVo;


/**
 * 클래스 설명 : 판매자의 농지를 관리하기 위한 서비스 클래입니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : SellerFarmServiceIf.java
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
public interface SellerFarmServiceIf {
  /**
   * 판매자의 등록한 농지의 리스트를 가져오기 위한 서비스메소드입니다. 
   * 메소드 내에서 농지의 정보와 그 농지에서 재배가능한 작물의 데이터를 가져오는 트랜잭션 처리가 필요합니다.
   * @author "PM KimYoungHo"
   * @param id 현재 세션에 로그인되어있는 사용자의 아이디를 저장하는 매개변수입니다.
   * @return
   */
  public List<FarmVo> findSellerFarmList(String id);
  
  public void farmInsert(FarmVo fvo);

  public Map<String,Object> findFarmDetail(String farmNo);

  public List<CropsVo> getCropsData();

  public String getNow_Date();

  public ListVo findRecruitListByFarmNo(String farmNo, String nowPage);

  public Object findBuyerDetailByRentNo(String rentNo);

  

  
  
}

