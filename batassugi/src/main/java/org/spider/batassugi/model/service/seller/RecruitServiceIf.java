package org.spider.batassugi.model.service.seller;

import java.util.Map;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 판매자가 임대 등록을 하면 구매자가 대여신청을 하기 위한 서비스 인터페이스.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : RecruitServiceIf.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 17.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "SL SangUk Lee"    최초작성
 *      </pre>
 */
public interface RecruitServiceIf {
  /**
   * 모집글을 등록하는 비즈니스 로직입니다.
   * 
   * @author "PM KimYoungHo"
   * @param vo View에서 전달받은 RecruitVo 입니다.
   */
  public void registerRecruit(RecruitVo vo);

  /**
   * 판매자가 모집할 때 현재 밭의 대여중인 농지의 크기를 제외한 남은 농지의 크기를 처리하는 비즈니스 로직입니다.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public String findRestFarmSizeByFarmNo(String farmNo);

  /**
   * 모집 글에 기본적으로 입력되어 있어야 할 대여 가능한 최대 농지 크기, 대여 가능한 최대 기간 값을 처리하는 비즈니스 로직입니다.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public Map<String, Object> findRentSizeAndFarmNoAndCropsAndMaxMonth(String farmNo);

  /**
   * 대여인의 신청을 수락하기 위한 서비스 메소드입니다.
   * 
   * @author "PM KimYoungHo"
   * @param rentNo 해당 대여번호입니다.
   */
  public void updateRentStatusConfirm(String[] rentNo);

  /**
   * 대여인의 신청을 거절하기 위한 서비스 메소드입니다.
   * 
   * @author "PM KimYoungHo"
   * @param rentNo 해당 대여번호입니다.
   */
  public void updateRentStatusReject(String[] rentNo);
}
