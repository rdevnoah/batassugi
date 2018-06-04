package org.spider.batassugi.model.service.seller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.spider.batassugi.model.vo.seller.ListVo;


/**
 * 클래스 설명 : 판매자의 농지를 관리하기 위한 서비스 클래입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : SellerFarmServiceIf.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 16.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "PM KimYoungHo"    최초작성
 * 2018. 5. 17.  "PM KimYoungHo"    농지 리스트 완료
 * 2018. 5. 19.  "PM KimYoungHo"    농지 상세보기 완료
 *      </pre>
 */
public interface SellerFarmServiceIf {
  /**
   * 판매자의 등록한 농지의 리스트를 가져오기 위한 서비스메소드입니다. 메소드 내에서 농지의 정보와 그 농지에서 재배가능한 작물의 데이터를 가져오는 트랜잭션 처리가 필요합니다.
   * 
   * @author "PM KimYoungHo"
   * @param id 현재 세션에 로그인되어있는 사용자의 아이디를 저장하는 매개변수입니다.
   * @return
   */
  public List<FarmVo> findSellerFarmList(String id);

  /**
   * 농지를 등록하는 서비스 메소드입니다.
   * 
   * @author "GL SangKyoung"
   * @param fvo 등록할 농지의 데이터를 저장하는 객체입니다.
   */
  public void farmInsert(FarmVo fvo);

  /**
   * 사용자가 등록한 농지의 상세정보를 반환받는 비즈니스 로직입니다.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public Map<String, Object> findFarmDetail(String farmNo);

  /**
   * 농지를 등록하는 View에서 현재 작물백과사전에 등록되어 있는 작물들을 불러오는 서비스 메소드입니다.
   * 
   * @author "GL SangKyoung"
   * @return
   */
  public List<CropsVo> getCropsData();

  /**
   * 농지 등록 시 등록 시작날짜를 현재 날짜로 설정하기 위한 메소드입니다.
   * 
   * @author "GL SangKyoung"
   * @return
   */
  public String getNow_Date();

  /**
   * 페이징 처리를 위해 ListVo를 리턴하는 메소드입니다.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 해당농지번호입니다.
   * @param nowPage 현재 페이지번호입니다.
   * @return
   */
  public ListVo findRecruitListByFarmNo(String farmNo, String nowPage);

  /**
   * 대여인의 상세정보를 확인하기 위한 메소드입니다. harvest의 경우 레벨을 이 메소드에서 1~4까지 자동 생성하여 리턴합니다.
   * 
   * @author "PM KimYoungHo"
   * @param rentNo 해당 대여 번호입니다.
   * @return
   */
  public Object findBuyerDetailByRentNo(String rentNo);

  /**
   * 파일 업로드 시 파일을 가공하기 위한 서비스 메소드입니다.
   * 
   * @author "GL SangKyoung"
   * @param fvo 해당 농지 정보입니다.
   * @return
   * 
   * @throws IllegalStateException 파일처리 Exception입니다.
   * @throws IOException 파일의 IOException입니다.
   */
  public String farmImg(FarmVo fvo) throws IllegalStateException, IOException;

}

